import SwiftUI

struct PokemonView: View {
	@EnvironmentObject var vm: ViewModel
	@State private var uiImage: UIImage?
	
	let pokemon: Pokemon
	
	var body: some View {
		VStack {
			VStack {
				if let uiImage = uiImage {
					Image(uiImage: uiImage)
						.resizable()
						.aspectRatio(contentMode: .fit)
						.frame(width: 120, height: 120)  // pokemon size
				} else {
					ProgressView()
						.frame(width: 100, height: 120)
						.onAppear {
							loadUIImage()
						}
				}
			}
			.frame(width: 80)
			.background(
				Circle()
					.fill(Color("PokemonBG"))
					.padding(.top)
			)
			.padding(5)
			
			Text("\(pokemon.name.lowercased())")
				.font(.system(size: 16, weight: .black, design: .monospaced))
				.tint(.white)
				.shadow(color: .blue, radius: 2)
				.padding(.bottom, 3)
		}
	}
	
	private func loadUIImage() {
		guard let url = URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/\(vm.getPokemonIndex(pokemon: pokemon)).png") else {
			return
		}
		
		URLSession.shared.dataTask(with: url) { data, response, error in
			guard let data = data, error == nil else {
				return
			}
			DispatchQueue.main.async {
				self.uiImage = UIImage(data: data)
			}
		}.resume()
	}
}

#Preview ("Sample Pokemon") {
	PokemonView(pokemon: Pokemon.samplePokemon)
		.environmentObject(ViewModel())
}
