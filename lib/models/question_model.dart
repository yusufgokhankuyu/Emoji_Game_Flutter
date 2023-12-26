class Question {
  String emoji;
  List<String> options;
  String correctAnswer;

  Question(
      {required this.emoji,
      required this.options,
      required this.correctAnswer});
}

// var questions = [
//   Question(
//       emoji: "🔪🚶‍♂️❓\n📞💡💫👩‍❤️‍👨",
//       options: ["Ara Beni", "Adı Bende Saklı", "Keskin Bıçak", "Nazar Eyle"],
//       correctAnswer: "Ara Beni"),
// ];
List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
      emoji: "🔪🚶‍♂️❓\n📞💡💫👩‍❤️‍👨",
      options: ["Ara Beni", "Adı Bende Saklı", "Keskin Bıçak", "Nazar Eyle"],
      correctAnswer: "Ara Beni"));
  list.add(
    Question(
      emoji: "🎤🔥",
      options: ["Şeytan Azapta", "Dudu", "Kuzu Kuzu", "Aşk"],
      correctAnswer: "Şeytan Azapta",
    ),
  );

  list.add(
    Question(
      emoji: "🌸💔",
      options: [
        "Gel Gör Beni Aşk Neyledi",
        "Haydi Gel İçelim",
        "Beni Benimle Bırak",
        "Kimdir O"
      ],
      correctAnswer: "Gel Gör Beni Aşk Neyledi",
    ),
  );

  list.add(
    Question(
      emoji: "🐴🎶",
      options: ["Arkadaşım Eşek", "Dönence", "Sultan-ı Yegâh", "Bugün Bayram"],
      correctAnswer: "Arkadaşım Eşek",
    ),
  );

  list.add(
    Question(
      emoji: "💔🚶‍♂️",
      options: ["Paramparça", "Renkli Rüyalar Oteli", "Sonsuz Pop", "O"],
      correctAnswer: "Paramparça",
    ),
  );

  list.add(
    Question(
      emoji: "🎷🎤",
      options: [
        "Bir Gönüle Aşk Girince",
        "Bahar",
        "Çalıkuşu",
        "Aşk İnsanı Değiştirir"
      ],
      correctAnswer: "Bir Gönüle Aşk Girince",
    ),
  );

  list.add(
    Question(
      emoji: "🚢❤️",
      options: ["Aşk Ölmez", "Vay Be", "O Benim Dünyam", "İstanbul Hatırası"],
      correctAnswer: "Aşk Ölmez",
    ),
  );

  list.add(
    Question(
      emoji: "🚗🌲",
      options: ["Gidemediklerimiz", "Firuze", "Rakkas", "Belalım"],
      correctAnswer: "Gidemediklerimiz",
    ),
  );

  list.add(
    Question(
      emoji: "🔥🎸",
      options: ["Cambaz", "Deli", "Bu Akşam", "Alaturka Ceşmesi"],
      correctAnswer: "Cambaz",
    ),
  );

  list.add(
    Question(
      emoji: "💔💃",
      options: [
        "Bir Derdim Var",
        "Dumanlı Dumanlı Oy Bizim Eller",
        "Halimiz Duman",
        "Kızımız Olsa"
      ],
      correctAnswer: "Dumanlı Dumanlı Oy Bizim Eller",
    ),
  );

  list.add(
    Question(
      emoji: "🌙🌌",
      options: ["Anlatamıyorum", "Arafta", "Bu Akşam", "Büyü"],
      correctAnswer: "Anlatamıyorum",
    ),
  );
  list.add(
    Question(
      emoji: "🚗🌆🌙❤️🎵",
      options: [
        "Geceyi Sana Yazdım",
        "Yollar",
        "Araba",
        "Kış Masalı",
        "Aşkın Beni Baştan Yazar"
      ],
      correctAnswer: "Geceyi Sana Yazdım",
    ),
  );

  list.add(
    Question(
      emoji: "❤️🌺🎤🔥🌙",
      options: [
        "Sorma",
        "Seni Sevdim İçin",
        "Gel Gör Beni Aşk Neyledi",
        "Gülü Susuz Seni Aşksız Bırakmam",
        "Aşkın İçinden Geçerek"
      ],
      correctAnswer: "Sorma",
    ),
  );

  list.add(
    Question(
      emoji: "🔥🎺🎶💔🌊",
      options: [
        "Sakin Ol",
        "Alev Alev",
        "Yanımda Kal",
        "Yüzyılın Aşkı",
        "Rüzgar"
      ],
      correctAnswer: "Sakin Ol",
    ),
  );

  list.add(
    Question(
      emoji: "💔🌊🌌🚶‍♀️🚶‍♂️",
      options: [
        "Rüzgar",
        "Deniz Üstü Köpürür",
        "Gel Gidelim",
        "Son Akşam Yemeği",
        "Ayrılık"
      ],
      correctAnswer: "Rüzgar",
    ),
  );

  list.add(
    Question(
      emoji: "🎶📻🎸🚗🌲",
      options: [
        "Dinle",
        "Esmer Günler",
        "Gönül Dağı",
        "Bir Derdim Var",
        "Ormanlar Var Otağında"
      ],
      correctAnswer: "Dinle",
    ),
  );

  list.add(
    Question(
      emoji: "🎵🚶‍♀️🎸💔🌊",
      options: [
        "Unuturum Elbet",
        "Yollarım",
        "Kafile",
        "Bir Derdim Var",
        "Rüzgar"
      ],
      correctAnswer: "Unuturum Elbet",
    ),
  );

  list.add(
    Question(
      emoji: "👫💔🌸❤️🌌",
      options: ["Vazgeçtim", "Boşuna", "Sonsuz Ol", "Bitti Mi", "Sevda"],
      correctAnswer: "Vazgeçtim",
    ),
  );

  list.add(
    Question(
      emoji: "🚀💫🎤🌌🌠",
      options: [
        "Dünyada Bir Yerde",
        "Yıldız Tilbe",
        "Gökyüzü",
        "Rüya",
        "Uzak Yıldızlar"
      ],
      correctAnswer: "Dünyada Bir Yerde",
    ),
  );

  list.add(
    Question(
      emoji: "🔥💃🎵🌙🌌",
      options: [
        "Ay",
        "Dans Et",
        "Aşk Bitti",
        "Bambaşka Biri",
        "Gecenin Şarkısı"
      ],
      correctAnswer: "Dans Et",
    ),
  );

  list.add(
    Question(
      emoji: "🌙🚶‍♂️💔🎤🌌",
      options: [
        "Sarhoş",
        "Bir Fırtına Tuttu Bizi",
        "Ay Karanlık",
        "Gel Gör Beni Aşk Neyledi",
        "Gece"
      ],
      correctAnswer: "Sarhoş",
    ),
  );
  list.add(
    Question(
      emoji: "💔🚶‍♀️🔥🎵🌃",
      options: [
        "Gel Gör Beni Aşk Neyledi",
        "Beni Benimle Bırak",
        "Bekle",
        "Kalbime İyi Bak",
        "Bu Akşam"
      ],
      correctAnswer: "Gel Gör Beni Aşk Neyledi",
    ),
  );

  list.add(
    Question(
      emoji: "🎶❤️👋💔🚪",
      options: [
        "Gel Gör Beni Aşk Neyledi",
        "Yanımda Kal",
        "Hoşgeldin",
        "Çok Yorgunum",
        "Gönder Gelsin"
      ],
      correctAnswer: "Yanımda Kal",
    ),
  );

  list.add(
    Question(
      emoji: "🌊🌙💔🚶‍♂️🚪",
      options: [
        "Deniz Üstü Köpürür",
        "Sarıl Bana",
        "Yanımda Kal",
        "Ayrılık",
        "Gönder Gelsin"
      ],
      correctAnswer: "Deniz Üstü Köpürür",
    ),
  );

  list.add(
    Question(
      emoji: "🌸👫💔📻🎶",
      options: [
        "Sensizlik",
        "Aşkla Kal",
        "Ayrılık Acı Bir Tat",
        "Dinle",
        "Gözyaşım"
      ],
      correctAnswer: "Aşkla Kal",
    ),
  );

  list.add(
    Question(
      emoji: "🚶‍♂️🎶💔🌃👋",
      options: [
        "Beni Benimle Bırak",
        "Bu Akşam",
        "Yanımda Kal",
        "Kapılar",
        "Hoşgeldin"
      ],
      correctAnswer: "Beni Benimle Bırak",
    ),
  );

  list.add(
    Question(
      emoji: "❤️🔥🎶💔🌊",
      options: [
        "Sevda Melekleri",
        "Dinle",
        "Yanımda Kal",
        "Alev Alev",
        "Deniz Üstü Köpürür"
      ],
      correctAnswer: "Sevda Melekleri",
    ),
  );

  list.add(
    Question(
      emoji: "💔🌃🎤🚪🎸",
      options: [
        "Bu Akşam",
        "Kapılar",
        "Son Akşam Yemeği",
        "Ayrılık",
        "Bir Derdim Var"
      ],
      correctAnswer: "Bu Akşam",
    ),
  );

  list.add(
    Question(
      emoji: "🚗🌲❤️🔥🌌",
      options: [
        "Kara Toprak",
        "Bir Derdim Var",
        "Aşkın İçinden Geçerek",
        "Yanımda Kal",
        "Gözyaşım"
      ],
      correctAnswer: "Kara Toprak",
    ),
  );

  list.add(
    Question(
      emoji: "🎵🔥🌌🚗💔",
      options: ["Haydi Gel İçelim", "Alev Alev", "Rüya", "Araba", "Ayrılık"],
      correctAnswer: "Haydi Gel İçelim",
    ),
  );

  list.add(
    Question(
      emoji: "🌙🎶💔📻🌌",
      options: [
        "Kapılar",
        "Dinle",
        "Son Akşam Yemeği",
        "Gecenin Şarkısı",
        "Bir Fırtına Tuttu Bizi"
      ],
      correctAnswer: "Kapılar",
    ),
  );

  list.add(
    Question(
      emoji: "❤️🚶‍♂️🌃🔥🎤",
      options: [
        "Gönlüm",
        "Bekle",
        "Bir Derdim Var",
        "Son Akşam Yemeği",
        "Sensiz İstanbul'a Düşmanım"
      ],
      correctAnswer: "Gönlüm",
    ),
  );

  list.add(
    Question(
      emoji: "🌌🌙🚶‍♀️❤️🎵",
      options: [
        "Gecenin Şarkısı",
        "Son Akşam Yemeği",
        "Yollar",
        "Gönlüm",
        "Sevda Melekleri"
      ],
      correctAnswer: "Gecenin Şarkısı",
    ),
  );

  list.add(
    Question(
      emoji: "💔🌌🌊❤️🚶‍♂️",
      options: [
        "Son Akşam Yemeği",
        "Gözyaşım",
        "Ayrılık",
        "Rüya",
        "Gel Gidelim"
      ],
      correctAnswer: "Son Akşam Yemeği",
    ),
  );

  list.add(
    Question(
      emoji: "🎤🚪🔥🎶💔",
      options: [
        "Hoşgeldin",
        "Gönder Gelsin",
        "Aşkın İçinden Geçerek",
        "Dinle",
        "Bekle"
      ],
      correctAnswer: "Hoşgeldin",
    ),
  );

  list.add(
    Question(
      emoji: "💃🌌🔥🚗🌃",
      options: ["Dans Et", "Rüya", "Alev Alev", "Araba", "Bu Akşam"],
      correctAnswer: "Dans Et",
    ),
  );

  list.add(
    Question(
      emoji: "❤️🎤💔🌊🌌",
      options: ["Kalbime İyi Bak", "Gel Gidelim", "Bekle", "Gözyaşım", "Rüya"],
      correctAnswer: "Kalbime İyi Bak",
    ),
  );

  list.add(
    Question(
      emoji: "🎸🚗💃💔🌌",
      options: ["Bir Derdim Var", "Araba", "Dans Et", "Ayrılık", "Gözyaşım"],
      correctAnswer: "Bir Derdim Var",
    ),
  );

  list.add(
    Question(
      emoji: "🎶💔🚗🌃🌌",
      options: ["Dinle", "Ayrılık", "Araba", "Bu Akşam", "Gecenin Şarkısı"],
      correctAnswer: "Dinle",
    ),
  );

  list.add(
    Question(
      emoji: "💔🚶‍♀️🌌🌊🎸",
      options: ["Sonsuz Ol", "Yanımda Kal", "Gözyaşım", "Ayrılık", "Araba"],
      correctAnswer: "Sonsuz Ol",
    ),
  );

  list.add(
    Question(
      emoji: "🌌💔🚶‍♂️🎤🌃",
      options: ["Gecenin Şarkısı", "Ayrılık", "Gönlüm", "Bekle", "Bu Akşam"],
      correctAnswer: "Gecenin Şarkısı",
    ),
  );

  return list;
}
