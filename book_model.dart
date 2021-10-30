class Book {
  final int id;
  final String name;
  final String writer;
  final String urlimage;
  Book(
      {required this.id,
      required this.name,
      required this.urlimage,
      required this.writer});
}

List<Book> sbooks = [
  Book(
      id: 1,
      name: "If It's Not Forever",
      writer: "Nikita Singh",
      urlimage: "assets/book-1.jpg"),
  Book(
      id: 2,
      name: "Pigeon English",
      writer: "Stephen Kelmen",
      urlimage: "assets/book-2.jpg"),
  Book(
      id: 3,
      name: "Full Dark No Stars",
      writer: "Stephen King",
      urlimage: "assets/book-3.jpg"),
  Book(
      id: 4,
      name: "The Lost Pearl",
      writer: "Lara Zuberi",
      urlimage: "assets/book-4.jpg"),
  Book(
      id: 5,
      name: "The Wind In The Willows",
      writer: "Kenneth Grahame ",
      urlimage: "assets/book-5.jpg"),
];

class BookS {
  final int id;
  final String name;
  final String writer;
  final String urlimage;
  BookS(
      {required this.id,
      required this.name,
      required this.urlimage,
      required this.writer});
}

List<BookS> pbooks = [
  BookS(
      id: 1,
      name: "Shadow Study",
      writer: "Marvia V Synder",
      urlimage: "assets/book-6.jpg"),
  BookS(
      id: 2,
      name: "The English Rebel",
      writer: "Daviad Horspool",
      urlimage: "assets/book-7.jpg"),
  BookS(
      id: 3,
      name: "A Duty To The Dead",
      writer: "Charles Todd",
      urlimage: "assets/book-8.jpg"),
  BookS(
      id: 4,
      name: "My Last Love Story",
      writer: "Falguni Kothari",
      urlimage: "assets/book-9.jpg"),
  BookS(
      id: 5,
      name: "The Accidential Bride",
      writer: "Christina Skye",
      urlimage: "assets/book-10.jpg"),
];
