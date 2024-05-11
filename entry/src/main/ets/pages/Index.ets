import { TitleComponent } from '../view/TitleComponent'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      TitleComponent()
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f1f1f1')
  }
}