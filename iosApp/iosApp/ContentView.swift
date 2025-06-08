import SwiftUI
import shared

struct ContentView: View {
	@State private var weight = ""
	@State private var height = ""
	@State private var result = ""



	var body: some View {
		VStack {
            Text("IMC Calculator")
                .font(.largeTitle)
                .padding()

            TextField("Weight (kg)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            TextField("Height (m)", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            Button(action: calculateIMC) {
                Text("Calculate IMC")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()

            Spacer()
            let weightValue = Double(weight) ?? 0.0
            let heightValue = Double(height) ?? 0.0
            if !weight.isEmpty && !height.isEmpty {
                result = IMCCalculator().calculateIMC(weight: weightValue, height: heightValue)
            } else {
                result = "Please enter valid weight and height."
            }
            Text(result)
                .padding()
                .multilineTextAlignment(.center)

            Spacer()
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}