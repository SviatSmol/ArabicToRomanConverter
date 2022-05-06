//
//  ConverArabicToRoman.swift
//  ArabicNumberToRomanNumber
//
//  Created by Sviat on 05.05.2022.
//

import Foundation


struct Converter {
   static func convertArabicToRoman(_ number:Int) -> String {
        
        func convert(number: Int, one: String, five: String, ten: String)-> String {
            switch number {
            case 4: return one + five
            case 9: return one + ten
            default: return number >= 5 ? five + (0..<(number-5)).map { i in one }.joined() : (0..<number).map { i in one }.joined()
            }
        }
        var romanNumber = ""
        
        romanNumber += convert(number: number / 1000, one: "M", five: "", ten: "")
        romanNumber += convert(number: (number % 1000) / 100, one: "C", five: "D", ten: "M")
        romanNumber += convert(number: (number % 100) / 10, one: "X", five: "L", ten: "C")
        romanNumber += convert(number: number % 10, one: "I", five: "V", ten: "X")
        
        return romanNumber
    }
}


