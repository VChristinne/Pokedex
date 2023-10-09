import SwiftUI

struct CustomImageTopView: View {
	var body: some View {
		HStack(spacing: 10) {
			Rectangle()
				.frame(width: 135, height: 3)
				.foregroundColor(Color("PokedexDetail"))
				.shadow(color: Color("PokedexDetailNeon"), radius: 2)
			
			Triangle()
				.frame(width: 70, height: 22)
				.foregroundColor(Color("PokedexDetail"))
				.offset(y: -9)
				.shadow(color: Color("PokedexDetailNeon"), radius: 2)
			
			Rectangle()
				.frame(width: 135, height: 3)
				.foregroundColor(Color("PokedexDetail"))
				.shadow(color: Color("PokedexDetailNeon"), radius: 2)
		}
	}
	
	struct Triangle: Shape {
		func path(in rect: CGRect) -> Path {
			var path = Path()
			
			path.move(to: CGPoint(x: rect.midX, y: rect.minY))
			path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
			path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
			path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
			
			return path
		}
	}
}

#Preview ("Top") {
	CustomImageTopView()
}

