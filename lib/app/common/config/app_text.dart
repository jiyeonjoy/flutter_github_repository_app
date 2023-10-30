class AppTexts {
  static final AppTexts _instance = AppTexts._internal();

  factory AppTexts() => _instance;

  AppTexts._internal();

  final String buttonYes = '예';
  final String buttonNo= '아니요';
  final String list = '리스트';
  final String savedList = '저장된 목록';
  final String networkErrorMessage = '네트워크 연결을 확인해 주세요.';
  final String emptyErrorMessage = '리스트가 없습니다.';
  final String noSavedMessage = '저장된 리스트가 없습니다.';
  final String repositorySaveMessage = '저장 되었습니다.';
  final String repositoryDeletePopupText = '삭제하시겠습니까?';
}
