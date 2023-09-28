//
//  ContentView.swift
//  Rock_paper_scissor
//
//  Created by A.f. Adib on 9/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var appContent = ["rock", "paper", "scissor"].shuffled()
    @State private var noCount = Int.random(in: 0...2)
    
    @State private var winLoss = ["Win", "Loose"].shuffled()
    @State private var wLcount = Int.random(in: 0...1)
    
    @State private var showAns = ""
    @State private var showAlert : Bool = false
    
    var body: some View {
        VStack{
            Text("Rock paper scissor")
                .frame(width:350, height: 50)
                
                .font(.headline.weight(.heavy))
                
                .background(.gray)
                .cornerRadius(20)
                .padding()
           
                Image("\(appContent[noCount])")
                    .resizable()
                    .frame(width: 150, height: 150)
            
            Text(appContent[noCount].capitalized)
                .frame(width:200, height: 50)
                
                .font(.title.weight(.heavy))
                
                .background(.mint)
                .cornerRadius(20)
                .padding()
            Text("+")
                .font(.largeTitle.weight(.bold))
                .padding(.top, -20)
            
            Text(winLoss[wLcount])
                .frame(width:200, height: 50)
                
                .font(.title.weight(.heavy))
                
                .background(.mint)
                .cornerRadius(20)
                .padding(.top, -14)
            
            Spacer()
           
            HStack{
                ForEach(0..<3) { number in
                    Button{
                        buttonPressed(number)
                       


                    } label: {
                        Image(appContent[number])
                            .resizable()
                            .frame(width: 100, height: 100)
                           
                            
                    }

                }
//                Button{
//
//                } label: {
//                    Image("rock")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//
//
//                }
//                Button{
//
//                }label: {
//                    Image("paper")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//
//                }
//
//                Button{
//
//                }label: {
//                    Image("scissor")
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                }
                
            }
            Spacer()
            
                .alert(showAns, isPresented: $showAlert) {
                   Button {
                       appContent.shuffle()
                       winLoss.shuffle()
                       
                   } label: {
                       Text("continue")
                   }
                    
                }
        }
         
        
    }
    
    func buttonPressed (_ number : Int){
        
        if noCount == 0 && wLcount == 0 && number == 1 {
            showAlert = true
            showAns = "Correct"

        }

       else if noCount == 0 && wLcount == 1 && number == 2 {
            showAlert = true
            showAns = "Correct"

        }

       else if noCount == 1 && wLcount == 0 && number == 2 {
            showAns = "Correct"
            showAlert = true
        }

        else if noCount == 1 && wLcount == 1 && number == 0 {
            showAns = "Correct"
            showAlert = true
        }

        else if noCount == 2 && wLcount == 0 && number == 0 {
            showAns = "Correct"
            showAlert = true
        }

       else if noCount == 2 && wLcount == 1 && number == 0 {
            showAns = "Correct"
            showAlert = true
        }
        else{
            showAns = "wrong"
           showAlert = true
        }
        
        
//        if noCount == 0 {
//            if (wLcount == 0 && number == 1) || (wLcount == 1 && number == 2){
//                showAns = "Correct"
//                showAlert = true
//            }
//        }
//        else if noCount == 1 {
//            if (wLcount == 0 && number == 2) || (wLcount == 1 && number == 0){
//                showAns = "Correct"
//                showAlert = true
//            }
//        }
//        else if noCount == 2 {
//            if (wLcount == 0 && number == 0) || (wLcount == 1 && number == 1){
//                showAns = "Correct"
//                showAlert = true
//            }
//        }
//
//        else {
//            showAlert = true
//            showAns = "Wrong"
//
//        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
