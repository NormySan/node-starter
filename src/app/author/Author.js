export class Author {
  /**
   * Create a new author fom the supplied values.
   *
   * @param {object} values
   * @param {number} values.id
   * @param {string} values.name
   * @param {string|null} values.biography
   */
  constructor(values) {
    this.id = values.id;
    this.name = values.name;
    this.biography = values.biography;
  }
}
