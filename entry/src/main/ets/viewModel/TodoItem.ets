@Observed
export class TodoItem {
  public content: string;
  public isOk: boolean;
  public isDelete: boolean;
  public id: number;
  static ID: number = 1;

  constructor(content: string, isOk: boolean = false, isDelete: boolean = false) {
    this.content = content;
    this.isOk = isOk;
    this.isDelete = isDelete;
    this.id = TodoItem.ID++;
  }
}
