import SwiftUI

struct SettingsView: View {
	@Binding var isDarkMode: Bool
	
    var body: some View {
		List {
			HStack {
				Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
					.foregroundStyle(isDarkMode ? .indigo : .orange)
					.onTapGesture { self.isDarkMode.toggle() }
					.preferredColorScheme(isDarkMode ? .dark : .light)
				
				Text(isDarkMode ? "Dark Mode" : "Light Mode")
					.monospaced()
			}
			
			// TODO: MORE OPTIONS
			
			
		}
		
    }
}

#Preview("Pokedex") {
	ContentView()
}
