//
//  NewScreen.swift
//  SwiftUIDemo
//
//  Created by Dharmesh on 19/06/23.
//

import SwiftUI

struct NewScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Continue Clicked!")
                .font(.system(size: 30, weight: .bold))
                .padding()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Dismiss")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct NewScreen_Previews: PreviewProvider {
    static var previews: some View {
        NewScreen()
    }
}
