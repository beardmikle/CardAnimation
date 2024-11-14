import SwiftUI

struct ColorCardAnim: View {
    @State var rotation: CGFloat = 0.0
    
    var body: some View {
        ZStack {
            Color(.black).opacity(0.9)
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 260, height:  340)
                .foregroundColor(Color(.black))
                .shadow(color: .purple.opacity(0.9), radius: 80, x: 0, y: 0)
//                .rotationEffect(.degrees(rotation))
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: 500, height: 440)
                . foregroundStyle(LinearGradient(gradient: Gradient(colors:
                        [.blue, .red, .orange, .yellow, .green, .blue, .purple, .pink]),
                                                 startPoint: .top,
                                                 endPoint: .bottom))
                .rotationEffect(.degrees(rotation))
                .mask {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(lineWidth: 4)
                        .frame(width: 256, height: 336)
                }
            VStack {
                Text("BRDMKL").bold()
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text("dev").bold()
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
          
                
            
        }
        .ignoresSafeArea()
        .onAppear{
            withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                rotation = 360
            }
        }
    }
}
   

#Preview {
    ColorCardAnim()
}
