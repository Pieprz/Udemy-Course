//
//  InfoView.swift
//  MaximCard
//
//  Created by Maxim on 11.03.2021.
//

import SwiftUI

struct InfoView: View {
	
	let text: String
	let imageName: String
	
	var body: some View {
		RoundedRectangle(cornerRadius: 100)
			.fill(Color.init(red: 0.58, green: 0.58, blue: 0.59))
			.frame(height: 40, alignment: .center)
			.overlay(HStack {
				Image(systemName: imageName)
					.foregroundColor(.green)
				Text(text).bold().foregroundColor(.white)
			})
			.padding(.all)
	}
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "hello", imageName: "phone.fill")
			.previewLayout(.sizeThatFits)
    }
}
