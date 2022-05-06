//
//  ConverterViewModel.swift
//  ArabicNumberToRomanNumber
//
//  Created by Sviat on 05.05.2022.
//

import Foundation


class ConverterViewModel: ObservableObject {
     @Published var arabic: String
     @Published var roman: String
     @Published var error: String
 
     init() {
         arabic = ""
         roman = ""
         error = ""
    }

    func convertNumber() {
        if let n = Int(arabic) {
            guard n > 0 && n < 10000 else {
                roman = ""
                error = "Number must be between 1 and 10000"
                return
            }
            roman = Converter.convertArabicToRoman(n)
        } else {
                   roman = ""
                   error = "'\(arabic)' is not a valid number"
               }
           }
       }
