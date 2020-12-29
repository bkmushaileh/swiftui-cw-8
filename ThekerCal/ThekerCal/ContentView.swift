//
//  ContentView.swift
//  ThekerCal
//
//  Created by Khaled Al-Mushaileh on 12/29/20.
//

import SwiftUI

struct ContentView: View {
    @State var counter = [0, 0, 0]
    var body: some View {
        VStack(alignment: .trailing){
            ThekerView(counter: $counter[0], label: "استغفرالله", color: .red)
            ThekerView(counter: $counter[1], label: "سبحان الله وبحمده", color: .blue)
            ThekerView(counter: $counter[2], label: "الحمدلله", color: .orange)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekerView: View {
    @Binding var counter: Int
    let label : String
    let color : Color
    var body: some View {
        HStack{
            Text(label)
                .font(.largeTitle)
                .padding()
            Button(action: {
                counter += 1
            }, label: {
                Text("\(counter)")
                    .frame(width: 50, height: 50)
                    .foregroundColor(.white)
                    .background(color)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            })
        }
    }
}
