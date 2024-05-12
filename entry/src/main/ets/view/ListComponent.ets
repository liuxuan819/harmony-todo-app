import { TodoItem } from '../viewModel/TodoItem'
import { ListItemComponent } from './ListItemComponent'

@Component
export struct ListComponent {
  @Link list: TodoItem[]

  build() {
    Column() {
      List() {
        ForEach(this.list, (item: TodoItem) => {
          ListItem() {
            ListItemComponent({ item })
          }
        }, (item: TodoItem) => item.id.toString())
      }
      .width('100%')
      .height('auto')
    }
  }
}
