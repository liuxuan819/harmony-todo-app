@Component
export struct TitleComponent {
  @State title: string = '代办事项';

  build() {
    Row() {
      Text(this.title)
        .fontSize(40)
        .fontWeight(FontWeight.Bolder)
    }
    .width('100%')
    .padding(20)
  }
}
