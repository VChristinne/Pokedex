import SwiftUI

struct PokedexView: View {
	@StateObject var vm = ViewModel()
	
	private let adaptiveColumns = [
		GridItem(.adaptive(minimum: 120))
	]
	
	var body: some View {
		NavigationView {
			VStack (spacing: 0) {
				CustomImageTopView()
					.frame(width: 120, height: 20)
					.padding(.top, 10)
				
				ScrollView {
					LazyVGrid(columns: adaptiveColumns, spacing: 15) {
						ForEach(vm.filteredPokemon) { pokemon in
							NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
								PokemonView(pokemon: pokemon)
							}
						}
						.shadow(color: .black, radius: 3)
					}
				}
				
				CustomImageBottomView()
					.frame(width: 120, height: 20)
					.padding(.top, 10)
			}
			.animation(.easeIn(duration: 0.3), value: vm.filteredPokemon.count)
			.navigationBarTitleDisplayMode(.inline)
			.frame(maxWidth: .infinity, maxHeight: .infinity)
			.padding(.top, 10)
			.background(
				LinearGradient(gradient: Gradient(colors: [Color("PokedexBG1"),
														   Color("PokedexBG2"),
														   Color("PokedexBG3"),
														   Color("PokedexBG4"),
														   Color("PokedexBG5")]),
							   startPoint: .top,
							   endPoint: .bottom)
			)
		}
		.environmentObject(vm)
	}
}

struct PokedexView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
