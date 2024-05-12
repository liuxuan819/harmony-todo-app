import { AddItemComponent } from '../view/AddItemComponent'
import { ListComponent } from '../view/ListComponent'
import { TitleComponent } from '../view/TitleComponent'
import { TodoItem } from '../viewModel/TodoItem'

@Entry
@Component
struct Index {
  @State list: TodoItem[] = [
    new TodoItem('早起晨练'),
    new TodoItem('去office加班', false, true),
    new TodoItem('准备早餐', true),
    new TodoItem('学习ArkTS'),
    new TodoItem('看剧放松'),
  ]

  build() {
    Flex({ direction: FlexDirection.Column }) {
      TitleComponent().flexShrink(0)
      ListComponent({ list: $list }).flexGrow(1)
      AddItemComponent({ list: $list }).flexShrink(0)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f1f1f1')
  }
}