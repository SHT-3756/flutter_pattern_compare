
import '../model/result_model.dart';
import '../repository/result_repository.dart';

class GetResultUseCase {
  final ResultRepository repository;

  GetResultUseCase(this.repository);

  // Future<Result?> call(int id) async {
  //   return await repository.getResultId(id);
  // }
}