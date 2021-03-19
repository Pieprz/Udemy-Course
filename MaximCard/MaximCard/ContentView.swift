//
//  ContentView.swift
//  MaximCard
//
//  Created by Maxim on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(red: 0.96, green: 0.87, blue: 0.30)
				.ignoresSafeArea()
			VStack {
				Image("MaximDmitriev")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 170, height: 200)
					.overlay(Rectangle().stroke(Color.gray, lineWidth: 5))
				Text("Maxim Dmitriev")
					.font(Font.custom("PlayfairDisplay-Regular", size: 40))
					.bold()
					.foregroundColor(.black)//.init(red: 0.58, green: 0.58, blue: 0.59))
				Text("iOS Developer")
					.foregroundColor(.black)//.init(red: 0.58, green: 0.58, blue: 0.59))
					.font(.system(size: 25))
				Divider()
				InfoView(text: "+7 911 255 58 67", imageName: "phone.fill")
				InfoView(text: "dm.max9610@gmail.com", imageName: "envelope.fill")
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//red: 0.96, green: 0.87, blue: 0.30
