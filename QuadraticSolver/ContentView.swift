//
//  ContentView.swift
//  QuadraticSolver
//  Starter project code
//  Created by Philip Trwoga on 09/02/2023.
//

import SwiftUI


struct ContentView: View {
    @State var resultVisible = true
    @State var A = ""
    @State var B = ""
    @State var C = ""
    @State var x1 = 0.0
    @State var x2 = 0.0
@State var solver = Solver() 
    var body: some View {
        ZStack{
            ScrollView {
                VStack (spacing:35 ){
                    
                    Text("Quadratic solver")
                        .font(.largeTitle)
                    Text("The quaratic form is :")
                    Text("Ax² + Bx + C = 0")
                        .font(.largeTitle)
           
                            
                    Label("Enter the first Term", systemImage: "a.circle.fill")
                            .font(.title2)
                        
                    
                    TextField("0 ", text: $A)
                        .padding(.all)
                        .frame(width: 350.0, height: 50.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)

                    Label("Enter the second Term", systemImage: "b.circle.fill")
                        .font(.title2)

                    
                    TextField("0", text: $B)
                        .padding(.all)
                        .frame(width: 350.0, height: 50.0)
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)

                    
                    Label("Enter Third Term",systemImage: "c.circle.fill")
                        .font(.title2)
                    
                        .padding(.all)
                    
                    TextField("0", text: $C)
                        .padding(.all)
                        .multilineTextAlignment(.center)
                        .frame(width: 350.0, height: 50.0)A
                        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        
                    
                    
                    
                    Button ("Solve for x"){
                   var sol = solveForX(input1: A, input2: B, input3: C)
                   x1 = sol.x1 
                   x2 = sol.x2

                    }
                    
                    
                }
                Text("x = \("%.2f",x1) , x = \("%.2f",x2)")
                    
            }
            
        }
        
    }
    func solveForX(input1:String, input2:String,input3:String)->(x1:Double,x2:Double)
        
    {
            if let a = Double(A), let b = Double(B),let c = Double(C), a > 0, b > 0,c > 0 {
                x1 = -b + sqrt(pow(b, 2.0) - (4 * a * c)) / (2 * a)
               x2 = -b + sqrt(pow(b, 2.0) - (4 * a * c)) / (2 * a)
                resultVisible = true
                x1 = X1
                x2 = X2
            }
            else{

                x1 = 0.0
                x2 = 0

            }
            
            
            return (x1 ,x2)
        }
        
        
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
