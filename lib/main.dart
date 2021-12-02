import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'github_repository_detail_page.dart';
import 'model/github_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: _StatefulProvider(
        child: _HomePage(title: "GitHub Repository search"),
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  const _HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          children: const <Widget>[
            _GitHubRepositorySearchInputWidget(),
            Expanded(child: _GitHubRepositoryListWithProgressWidget()),
          ],
        ));
  }
}

class _GitHubRepositorySearchInputWidget extends StatelessWidget {
  const _GitHubRepositorySearchInputWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Please enter a search keyword.",
            labelText: "Search"),
        onSubmitted: (input) {
          Provider.of<_StatefulProviderState>(context, listen: false)
              .searchRepositories(input);
        },
      ),
    );
  }
}

class _GitHubRepositoryListWithProgressWidget extends StatelessWidget {
  const _GitHubRepositoryListWithProgressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return _GitHubRepositoryCardWidget(
              repository: Provider.of<List<GitHubRepository>>(
                context,
                listen: false,
              )[index],
            );
          },
          itemCount: Provider.of<List<GitHubRepository>>(context).length,
        ),
        Provider.of<bool>(context)
            ? const Center(child: CircularProgressIndicator())
            : Container()
      ],
    );
  }
}

class _GitHubRepositoryCardWidget extends StatelessWidget {
  const _GitHubRepositoryCardWidget({Key? key, required this.repository})
      : super(key: key);

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return GitHubRepositoryDetailPage(repository: repository);
            }));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  repository.fullName,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              repository.language != null
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                      child: Text(
                        repository.language!,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12.0),
                      ),
                    )
                  : Container(),
              repository.description != null
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 12.0),
                      child: Text(repository.description!,
                          style: const TextStyle(
                              fontWeight: FontWeight.w200, color: Colors.grey)),
                    )
                  : Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const Icon(Icons.star),
                  const SizedBox(width: 4.0),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.stargazersCount.toString()),
                  ),
                  const Icon(Icons.remove_red_eye),
                  const SizedBox(width: 4.0),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.watchersCount.toString()),
                  ),
                  const Text("Fork: "),
                  SizedBox(
                    width: 64.0,
                    child: Text(repository.forksCount.toString()),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              )
            ],
          ),
        ));
  }
}

class _StatefulProvider extends StatefulWidget {
  const _StatefulProvider({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  State<StatefulWidget> createState() => _StatefulProviderState();
}

class _StatefulProviderState extends State<_StatefulProvider> {
  List<GitHubRepository> _repositories = [];
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _repositories,
      child: Provider.value(
        value: _isLoading,
        child: Provider.value(
          value: this,
          child: widget.child,
        ),
      ),
    );
  }

  void searchRepositories(String searchQuery) async {
    setState(() {
      _repositories = [];
      _isLoading = true;
    });

    final response = await http.get(Uri.parse(
        'https://api.github.com/search/repositories?q=' +
            searchQuery +
            "&sort=stars&order=desc"));

    setState(() {
      _isLoading = false;
    });

    if (response.statusCode == 200) {
      List<GitHubRepository> list = [];
      Map<String, dynamic> decoded = json.decode(response.body);
      for (var item in decoded['items']) {
        list.add(GitHubRepository.fromJson(item));
      }
      setState(() {
        _repositories = list;
      });
    } else {
      throw Exception('fail to search repositories.');
    }
  }
}
