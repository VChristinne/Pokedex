import SwiftUI

struct SettingsView: View {
	@Binding var isDarkMode: Bool
	@Binding var isClassicalMode: Bool
	
	var body: some View {
		List {
			HStack {
				Image(systemName: isDarkMode ? "moon.fill" : "sun.max.fill")
					.foregroundColor(isDarkMode ? Color.indigo : Color.orange)
					.onTapGesture { self.isDarkMode.toggle() }
					.preferredColorScheme(isDarkMode ? .dark : .light)
				
				Text(isDarkMode ? "Dark Mode" : "Light Mode")
					.font(Font.system(.body, design: .monospaced))
			}
			
		}
	}
}


#Preview {
	ContentView()
}
