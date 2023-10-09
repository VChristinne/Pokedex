
import SwiftUI

struct PokemonDetailView: View {
	@EnvironmentObject var vm: ViewModel
	let pokemon: Pokemon
	
    var body: some View {
		
		VStack {
			PokemonView(pokemon: pokemon)
			 
			VStack(spacing: 10) {
				Text("**ID**: \(vm.pokemonDetails?.id ?? 0)")
				Text("**Base Experience**: \(vm.pokemonDetails?.base_experience ?? 0)")
				Text("**Weight**: \(vm.formatHW(value: vm.pokemonDetails?.weight ?? 0)) kg")
				Text("**Height**: \(vm.formatHW(value: vm.pokemonDetails?.height ?? 0)) m")
			}

		}
		
		.onAppear {
			vm.getDetails(pokemon: pokemon)
		}
		
		.frame(maxWidth: .infinity, maxHeight: .infinity)
		.background(Color.gray)
		
    }

}


#Preview("Pokemon Detail") {
	PokemonDetailView(pokemon: Pokemon.samplePokemon)
		.environmentObject(ViewModel())
}
