import SwiftUI

struct ContentView: View {
	@State private var isDarkMode = false
	@State private var isClassicalMode = false
	@State private var selectedTab = 0
	
	var body: some View {
		ZStack(alignment: .top) {
			switch selectedTab {
				case 0:
					PokedexView()
				case 1:
					BerriesView()
				case 2:
					PokeballsView()
				case 3:
					SettingsView(isDarkMode: $isDarkMode, isClassicalMode: $isClassicalMode)
				default:
					EmptyView()
			}
			
			FloatingMenuView(selectedTab: $selectedTab)
		}
	}
}

#Preview("Pokedex") {
	ContentView()
}
