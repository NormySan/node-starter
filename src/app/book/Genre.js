export class Genre {
  /**
   * Create a new genre fom the supplied values.
   *
   * @param {object} values
   * @param {number} values.id
   * @param {string} values.name
   */
  constructor(values) {
    this.id = values.id;
    this.name = values.name;
  }
}
