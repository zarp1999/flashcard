class Language {
  final int id;
  final String name;
  final String flag;
  final String LanguageCode;

  Language(this.id, this.name, this.flag, this.LanguageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(1, '🇺🇸', "English", "en"),
      Language(2, "🇯🇵", "Japanese", "ja"),
    ];
  }
}
