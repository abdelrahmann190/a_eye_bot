// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:a_eye_bot/core/local_database/chat_database_service.dart'
    as _i3;
import 'package:a_eye_bot/core/local_database/starred_messages_service.dart'
    as _i8;
import 'package:a_eye_bot/core/networking/gemini_api_service.dart' as _i4;
import 'package:a_eye_bot/core/networking/gemini_package_initializer.dart'
    as _i5;
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/a_eye_robot_cubit/a_eye_robot_cubit.dart'
    as _i6;
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/chat_database_cubit/chat_database_cubit.dart'
    as _i15;
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/gemini_api_cubit/gemini_api_cubit.dart'
    as _i16;
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/image_picker_cubit/image_picker_cubit.dart'
    as _i14;
import 'package:a_eye_bot/features/chat_bot_page/buisness_logic/starred_messages_cubit/starred_messages_cubit.dart'
    as _i12;
import 'package:a_eye_bot/features/chat_bot_page/data/repos/chat_database_repository.dart'
    as _i10;
import 'package:a_eye_bot/features/chat_bot_page/data/repos/gemini_api_repository.dart'
    as _i11;
import 'package:a_eye_bot/features/chat_bot_page/data/repos/image_picker_repository.dart'
    as _i13;
import 'package:a_eye_bot/features/chat_bot_page/data/repos/starred_messages_repository.dart'
    as _i9;
import 'package:a_eye_bot/features/chat_bot_page/data/service/image_picker_service.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.ChatDatabaseService>(() => _i3.ChatDatabaseService());
    gh.singleton<_i4.GeminiApiService>(() => _i4.GeminiApiService());
    gh.singleton<_i5.GeminiPackageInitializer>(
        () => _i5.GeminiPackageInitializer());
    gh.singleton<_i6.AEyeRobotCubit>(() => _i6.AEyeRobotCubit());
    gh.singleton<_i7.ImagePickerService>(() => _i7.ImagePickerService());
    gh.singleton<_i8.StarredMessagesService>(
        () => _i8.StarredMessagesService());
    gh.singleton<_i9.StarredMessagesRepository>(
        () => _i9.StarredMessagesRepository(gh<_i8.StarredMessagesService>()));
    gh.singleton<_i10.ChatDatabaseRepository>(
        () => _i10.ChatDatabaseRepository(gh<_i3.ChatDatabaseService>()));
    gh.singleton<_i11.GeminiApiRepository>(
        () => _i11.GeminiApiRepository(gh<_i4.GeminiApiService>()));
    gh.singleton<_i12.StarredMessagesCubit>(
        () => _i12.StarredMessagesCubit(gh<_i9.StarredMessagesRepository>()));
    gh.singleton<_i13.ImagePickerRepository>(
        () => _i13.ImagePickerRepository(gh<_i7.ImagePickerService>()));
    gh.singleton<_i14.ImagePickerCubit>(
        () => _i14.ImagePickerCubit(gh<_i13.ImagePickerRepository>()));
    gh.singleton<_i15.ChatDatabaseCubit>(
        () => _i15.ChatDatabaseCubit(gh<_i10.ChatDatabaseRepository>()));
    gh.singleton<_i16.GeminiApiCubit>(
        () => _i16.GeminiApiCubit(gh<_i11.GeminiApiRepository>()));
    return this;
  }
}
