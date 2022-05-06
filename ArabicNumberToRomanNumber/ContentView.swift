//
//  ContentView.swift
//  ArabicNumberToRomanNumber
//
//  Created by Sviat on 05.05.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ConverterViewModel()
    
    var body: some View {
        
            VStack {
                  Text("Arabic To Roman Number Converter")
                       .font(.title)
                       .multilineTextAlignment(.center)
                       .padding()
                  
                   Form {
                       Section(header: Text("Arabic number to convert"),
                               footer: Text("\(viewModel.error)").foregroundColor(.red)) {
                           TextField("Number", text: $viewModel.arabic)
                        }
       
                       Section(header: Text("Roman Number")){
                           Text("\(viewModel.roman)")
                               .font(.title)
                        }
                   }
                   .frame(width: 350, height: 250, alignment: .center)
                   .padding()
                
                   Button("Convert") {
                       viewModel.convertNumber()
                   }
                   .buttonStyle(.bordered)
                   
                   Spacer()
            }
       }
   }






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
