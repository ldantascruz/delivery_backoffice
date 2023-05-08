// ignore_for_file: public_member_api_docs, sort_constructors_first
class RepositoryException implements Exception {
  final String message;
  RepositoryException({
    required this.message,
  });
}
