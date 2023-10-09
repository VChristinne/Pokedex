import SwiftUI
struct ContentView: View {
	@State private var isDarkMode = false
	@State private var isClassicalMode = false
	
	
	var body: some View {
		/*
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
		 
		 SettingsView(isDarkMode: $isDarkMode, isClassicalMode: $isClassicalMode)
		 .tabItem {
		 Image(systemName: "line.3.horizontal")
		 Text("More")
		 }
		 
		 }
		 */
		ZStack(alignment: .top) {
			PokedexView()
			FloatingMenuView()
			
		}
		.background(Color.clear)
		
	}
}


#Preview("Pokedex") {
	ContentView()
}
