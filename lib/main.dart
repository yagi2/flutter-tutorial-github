import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter_tutorial_github/model/github_repository.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const GitHubRepositoryListPage(title: 'GitHub Repository Search'),
    );
  }
}

class GitHubRepositoryDetailPage extends StatelessWidget {
  const GitHubRepositoryDetailPage({Key? key, required this.repository})
      : super(key: key);
  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(repository.name)),
        body: const Center(child: CircularProgressIndicator()));
  }
}

class GitHubRepositoryListPage extends StatefulWidget {
  const GitHubRepositoryListPage({Key? key, required this.title})
      : super(key: key);
  final String title;

  @override
  State<GitHubRepositoryListPage> createState() =>
      _GitHubRepositoryListPageState();
}

class _GitHubRepositoryListPageState extends State<GitHubRepositoryListPage> {
  List<GitHubRepository> _repositories = [];
  bool _isLoading = false;

  Future<List<GitHubRepository>> _searchRepositories(String searchQuery) async {
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
      return list;
    } else {
      throw Exception('fail to search repositories.');
    }
  }

  Widget _buildInput() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Please enter a search keyword.",
            labelText: "Search"),
        onSubmitted: (input) {
          _searchRepositories(input).then((repositories) {
            setState(() {
              _repositories = repositories;
            });
          });
        },
      ),
    );
  }

  Widget _buildRepositoryListWithProgress() {
    return Stack(
      children: <Widget>[
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            final repository = _repositories[index];
            return _buildCard(repository);
          },
          itemCount: _repositories.length,
        ),
        _isLoading
            ? const Center(child: CircularProgressIndicator())
            : Container()
      ],
    );
  }

  Widget _buildCard(GitHubRepository repository) {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Column(children: <Widget>[
          _buildInput(),
          Expanded(
            child: _buildRepositoryListWithProgress(),
          )
        ]));
  }
}
