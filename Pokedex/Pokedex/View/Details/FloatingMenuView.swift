import SwiftUI

struct FloatingMenuView: View {
	@Binding var selectedTab: Int
	@State private var showMenuItem = false
	@State private var isMenuToggle = false
	
	var body: some View {
		Rectangle()
			.fill(Color.black.opacity(showMenuItem ? 0.3 : 0))
			.ignoresSafeArea()
		
		HStack {
			VStack {
				
				Button(action: {
					self.showMenu()
					self.isMenuToggle.toggle()
				}) {
					if isMenuToggle {
						Image(systemName: "line.3.horizontal.decrease")
							.font(.system(size: 40))
							.frame(width: 100, height: 20)
							.shadow(color: .black, radius: 2)
					} else {
						Image(systemName: "line.3.horizontal")
							.font(.system(size: 40))
							.frame(width: 100, height: 20)
							.shadow(color: .black, radius: 2)
					}
				}
				.tint(.white)
				
				
				if showMenuItem {
					Button(action: {
						self.showPokedex()
					}) {
						Image(systemName: "house.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.black, lineWidth: 3))
							.padding(.bottom, 8)
					}

					Button(action: {
						self.showBerries()
					}) {
						Image(systemName: "tree.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.black, lineWidth: 3))
							.padding(.bottom, 8)
					}

					Button(action: {
						self.showPokeballs()
					}) {
						Image(systemName: "cricket.ball.fill")
							.imageScale(.large)
							.frame(width: 40, height: 50)
							.foregroundStyle(.white)
							.overlay(Circle().stroke(Color.black, lineWidth: 3))
							.padding(.bottom, 8)
					}

				}
				
			}
			
			Spacer()
		}
		.animation(.easeInOut(duration: 0.3), value: showMenuItem)
		
		Spacer()
	}
	
	func showMenu() {
		showMenuItem.toggle()
	}
	
	func showPokedex() {
		selectedTab = 0
	}
	
	func showBerries() {
		selectedTab = 1
	}
	
	func showPokeballs() {
		selectedTab = 2
	}
	
	func showSettings() {
		selectedTab = 3
	}
	
}

#Preview("Pokedex") {
	ContentView()
}

