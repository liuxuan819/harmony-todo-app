import { TodoItem } from '../viewModel/TodoItem';

@Component
export struct AddItemComponent {
  @State placeholder: string = '添加待办事项';
  @State inputText: string = '';
  @Link list: TodoItem[];

  addItem(): void {
    if(this.inputText) {
      this.list.push(new TodoItem(this.inputText));
      this.inputText = '';
    }
  }

  build() {
    Flex() {
      TextInput({ text: this.inputText, placeholder: this.placeholder })
        .onChange((value) => this.inputText = value)
        .onSubmit(() => this.addItem())
      Button('添加').onClick(() => this.addItem())
    }
  }
}
