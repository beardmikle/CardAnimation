import SwiftUI

struct CardAnim: View {
    @State var rotation: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height:  340)
                .foregroundColor(Color(.mainBlock))
//                .rotationEffect(.degrees(rotation))
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 130, height: 500)
                . foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color(.gradMin),Color(.gradMax)]),
                                                 startPoint: .top,
                                                 endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 7)
                        .frame(width: 256, height: 336)
                }
            Text("Card White").bold()
                .font(.largeTitle)
                .foregroundStyle(.white)
                
            
        }
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
    }
}
   

#Preview {
    CardAnim()
}
