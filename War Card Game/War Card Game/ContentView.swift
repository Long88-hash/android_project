//
//  ContentView.swift
//  War Card Game
//
//  Created by Luo Long on 2025/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCards = "card7"
    @State var cpuCards = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCards)
                    Spacer()
                    Image(cpuCards)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Palyer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
        
    }
    
    func deal() {
        // Randomize the players card
        var playersCardValue = Int.random(in: 2...14)
        playerCards = "card" + String(playersCardValue)
        
        // Randomize the cous card
        var cpuCadrValue = Int.random(in: 2...14)
        cpuCards = "card" + String(cpuCadrValue)
        
        // Update the scores
        if playersCardValue > cpuCadrValue {
            
            // Add 1 to player score
            playerScore += 1
        }
        else if cpuCadrValue > playersCardValue {
            
            // Add 1 to cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
