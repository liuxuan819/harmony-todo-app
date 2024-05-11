import { TodoItem } from '../viewModel/TodoItem'

@Component
export struct ListItemComponent {
  @State deleteText: string = '删除'
  @ObjectLink item: TodoItem

  build() {
    Row() {
      if (!this.item.isDelete) {
        Toggle({ type: ToggleType.Checkbox, isOn: this.item.isOk })
          .onChange((isOn) => this.item.isOk = isOn)
        Text(this.item.content)
        Text(this.deleteText)
          .onClick(() => this.item.isDelete = true)
      }
    }
  }
}
