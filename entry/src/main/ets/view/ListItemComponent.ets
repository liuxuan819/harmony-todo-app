import { TodoItem } from '../viewModel/TodoItem'

@Component
export struct ListItemComponent {
  @State deleteText: string = '删除'
  @ObjectLink item: TodoItem

  build() {
    if (!this.item.isDelete) {
      Flex({ alignItems: ItemAlign.Center }) {
        Toggle({ type: ToggleType.Checkbox, isOn: this.item.isOk })
          .onChange((isOn) => this.item.isOk = isOn)
          .padding(15)
        Text(this.item.content)
          .decoration({ type: this.item.isOk ? TextDecorationType.LineThrough : TextDecorationType.None })
          .layoutWeight(1)
          .padding({
            top: 10,
            bottom: 10,
          })
        Text(this.deleteText)
          .onClick(() => this.item.isDelete = true)
          .padding(15)
          .fontColor(Color.Red)
      }
      .margin({
        top: 5,
        bottom: 5,
        left: 10,
        right: 10,
      })
      .backgroundColor(Color.White)
      .borderRadius(8)
    }
  }
}
