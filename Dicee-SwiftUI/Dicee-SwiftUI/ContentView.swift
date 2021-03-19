//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Maxim on 11.03.2021.
//

import SwiftUI

struct ContentView: View {
	
	@State var leftDiceNumber = 1
	@State var rightDiceNumber = 1
	
	
    var body: some View {
		ZStack {
			Image("background")
				.resizable()
				.ignoresSafeArea()
			VStack {
				Image("diceeLogo")
				Spacer()
			HStack {
					DiceView(n: leftDiceNumber)
					DiceView(n: rightDiceNumber)
				}
				.padding()
				Spacer()
				Button(action: {
					self.leftDiceNumber = Int.random(in: 1...6)
					self.rightDiceNumber = Int.random(in: 1...6)
				}) {
					Text("Roll")
						.font(.system(size: 50))
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.padding()
				}
				.background(Color.red)
			}
		}
    }
}

struct DiceView: View {
	
	let n: Int
	
	var body: some View {
		Image("dice\(n)")
			.resizable()
			.aspectRatio(contentMode: .fit)
			.padding()
	}
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

