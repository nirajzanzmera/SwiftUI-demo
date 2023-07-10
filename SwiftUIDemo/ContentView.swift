//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Dharmesh on 19/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingNewScreen = false
    
    var body: some View {
        ZStack {
            Image("backgroundImage")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("logo1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                Image("logo2")
                    .resizable()
                    .padding(.top, -UIScreen.main.bounds.height*0.245)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                
                
                Text("And get ready to")
                    .font(.system(size: 30, weight: .medium))
                    .foregroundColor(.white)
                    .padding(.top, -35)
                Text("Shop for Stocks!")
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer()
                
                
                Button(action: {
                    isShowingNewScreen = true
                }) {
                    Text("Continue")
                        .frame(maxWidth: .infinity)
                        .frame(height: 25)
                        .font(.system(size: 25))
                        .bold()
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            ZStack {
                                RoundedRectangle(cornerRadius: .infinity)
                                    .fill(
                                        LinearGradient(
                                            gradient:
                                                Gradient(colors: [
                                                    Color(red: 251/255, green: 170/255, blue: 53/255),
                                                    Color(red: 247/255, green: 206/255, blue: 102/255)
                                                ]),
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                
                            }
                        )
                        .cornerRadius(.infinity)
                        
                }
                .shadow(color: Color(red: 255/255, green: 85/255, blue: 40/255), radius: 2, x: 0, y: 5)
                .padding(.bottom, 20)
                .padding(.horizontal, 30)

                Spacer()
            }
            .padding(20)
            .padding(.top, 50)
        }
        .sheet(isPresented: $isShowingNewScreen, onDismiss: {
            // Code executed when the sheet is dismissed
        }) {
            NewScreen()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
