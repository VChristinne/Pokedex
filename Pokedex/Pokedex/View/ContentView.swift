import SwiftUI

struct ContentView: View {
	@State private var isDarkMode = false
	
	var body: some View {
		TabView {
			PokedexView()
				.tabItem {
					Image(systemName: "lanyardcard")
					Text("Pokedex")
				}
			
			BerriesView()
				.tabItem {
					Image(systemName: "tree")
					Text("Berries")
				}
			
			PokeballsView()
				.tabItem {
					Image(systemName: "cricket.ball.fill")
					Text("Pokeballs")
				}
			
			SettingsView(isDarkMode: $isDarkMode)
				.tabItem {
					Image(systemName: "line.3.horizontal")
					Text("More")
				}
		}
		.accentColor(.red)

	}
}

#Preview("Pokedex") {
	ContentView()
}
