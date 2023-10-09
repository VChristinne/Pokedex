import SwiftUI

struct FloatingMenuView: View {
	
	@State private var showMenuItem = false
	
	var body: some View {
		HStack {
			VStack {
				if showMenuItem {
					Button(action: {
							// Adicione a ação que você deseja quando o botão for pressionado
					}) {
						Image(systemName: "house.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.white, lineWidth: 2))
							.padding(.bottom, 8)
					}
					
					Button(action: {
							// Adicione a ação que você deseja quando o botão for pressionado
					}) {
						Image(systemName: "tree.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.white, lineWidth: 2))
							.padding(.bottom, 8)
					}
					
					Button(action: {
							// Adicione a ação que você deseja quando o botão for pressionado
					}) {
						Image(systemName: "cricket.ball.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.white, lineWidth: 2))
							.padding(.bottom, 8)
					}
				}
				
				Button(action: { self.showMenu() }) {
					Image(systemName: "line.3.horizontal")
						.font(.system(size: 40))
						.frame(width: 90, height: 10)
						.shadow(color: .gray, radius: 20)
				}
				.tint(.white)
			}
			
			Spacer()
		}
		.animation(.easeInOut(duration: 0.3), value: showMenuItem)
		
		Spacer()
	}
	
	func showMenu() {
		showMenuItem.toggle()
	}
}


struct MenuItem: View {
	var icon: String
	var action: () -> Void
	
	var body: some View {
		Button(action: {
			action()
		}) {
			ZStack {
				Circle()
					.foregroundStyle(.white)
					.frame(width: 80, height: 50)
				
				Image(systemName: icon)
					.imageScale(.large)
					.foregroundStyle(.black)
			}
			.shadow(color: .white, radius: 5)
		}
	}
}
