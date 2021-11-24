class GitHubRepository {
  final String fullName;
  final String name;
  final String? description;
  final String? language;
  final String htmlUrl;
  final int stargazersCount;
  final int watchersCount;
  final int forksCount;

  GitHubRepository.fromJson(Map<String, dynamic> json)
      : fullName = json['full_name'],
        name = json['name'],
        description = json['description'],
        language = json['language'],
        htmlUrl = json['html_url'],
        stargazersCount = json['stargazers_count'],
        watchersCount = json['watchers_count'],
        forksCount = json['forks_count'];
}
