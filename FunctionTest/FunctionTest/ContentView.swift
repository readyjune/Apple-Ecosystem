//
//  ContentView.swift
//  FunctionTest
//
//  Created by 김진우 on 2022/08/16.
//

import SwiftUI

func cutAndAdd (firstNumber: Float, secondNumber: Float) -> Int {
    return Int(firstNumber + secondNumber)

}

func helloNumbers (theText: String = "", theNumber: Int = 0) -> String {
    if (theNumber % 2) == 0 {
        return theText
    } else {
        return "Nope"
    }
    
}

func multipleReturns (theNumber: Float = 1.0) -> (Float, Float) {
    return(theNumber, theNumber * theNumber)
}

func printMeOut (toBePrinted: String = "") {
    print(toBePrinted)
}

struct ContentView: View {
    var body: some View {
        VStack{
            Button("cutAndAdd") {
                let result: Int = cutAndAdd(firstNumber: 12, secondNumber: 20)
                print(result)
            }.padding(5)
            Button("helloNumbers") {
                let result: String = helloNumbers(theText: "Hello", theNumber: 2)
                print(result)
            }.padding(5)
            Button("multipleReturns") {
                let (single, square): (Float, Float) = multipleReturns(theNumber: 2.5)
                print(single)
                print(square)
            }.padding(5)
            Button("toBePrinted") {
                printMeOut(toBePrinted: "Hello, World")
            }.padding(5)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
