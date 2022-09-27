
import 'package:get_it/get_it.dart';
import '../../modules/search/repositories/i_get_cep_repository.dart';
import '../../modules/search/useCases/search_cep_use_case.dart';
import '../../modules/search/controller/search_bloc.dart';
import '../../modules/search/repositories/get_cep_repository_impl.dart';






class Inject{

  static void init(){
    GetIt getIt = GetIt.instance;

    //repositories
    getIt.registerLazySingleton<IGetCepRepository>(() => GetCepRepositoryImp());
    //usecases
    getIt.registerLazySingleton<SearchCepUseCase>(() => SearchCepUseCase(getIt()));
    //controllers
    getIt.registerFactory<SearchBloc>(() => SearchBloc(getIt(),getIt()));

  }

}



