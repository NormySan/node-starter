export class Book {
  /**
   * Create a new book fom the supplied values.
   *
   * @param {object} values
   * @param {number} values.id
   * @param {string} values.title
   * @param {string} values.isbn
   */
  constructor(values) {
    this.id = values.id;
    this.title = values.title;
    this.isbn = values.isbn;
  }
}
