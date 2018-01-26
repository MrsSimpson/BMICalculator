import UIKit

//function gives BMI by calculating kg/(m^2)
func bmiCalculator(weight : Double, height : Double) -> Double
{
    let BMI = weight / pow(height, 2)
    
    if (BMI > 25)
    {
        print("Chunky Monkey")
    }
    else if (BMI > (18.5) && BMI <= 25.0)
    {
        print("Your normal.... how boring")
    }
    else
    {
        print("Skinny Minny")
    }
    
    print("Your BMI after calculating in kilograms and meters is ")
    return BMI
}

print(bmiCalculator(weight: 63, height : 1.8))


//function calculates users BMI by converting feet to inches and converts lbs to kilograms for the weight
func bmiCalculatorUSUnits(weightInPounds : Double, heightInFeet : Double, remainderInches : Double) -> Double
{
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInM = totalInches * 0.0254
    
    let BMI = weightInKg / pow(heightInM, 2)
    
    print("\n")
    
    if (BMI > 25)
    {
        print("Getting a little chunky aren't we??")
    }
    else if (BMI > (18.5) && BMI <= 25.0)
    {
        print("Don't fix it, if it ain't broke")
    }
    else
    {
        print("Put some meat on those bones!!")
    }
    print("Your BMI after calculating in lbs and inches is ")
    return BMI
}

print(bmiCalculatorUSUnits(weightInPounds: 140, heightInFeet: 5, remainderInches: 11))

