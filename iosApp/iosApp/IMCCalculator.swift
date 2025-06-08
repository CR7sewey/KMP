import shared

func calculateIMC(weight: Double, height: Double) -> String {
    let imc = IMCCalculator().calculateIMC(weight: weight, height: height)
    let classification = IMCCalculator().getIMCStatus(imc: imc)
    return "Your IMC is \(String(format: "%.2f", imc))\nClassification: \(classification)""
}