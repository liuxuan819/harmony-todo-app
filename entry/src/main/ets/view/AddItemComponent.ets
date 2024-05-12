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
    Flex({ alignItems: ItemAlign.Center }) {
      TextInput({ text: this.inputText, placeholder: this.placeholder })
        .onChange((value) => this.inputText = value)
        .onSubmit(() => this.addItem())
        .fontSize(18)
        .placeholderFont({ size: 18 })
      Button('添加').onClick(() => this.addItem())
        .margin({
          left: 10
        })
        .flexShrink(0)
    }
    .margin({
      top: 5,
      bottom: 5,
      left: 10,
      right: 10,
    })
  }
}
