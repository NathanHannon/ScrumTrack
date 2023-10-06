//
//  TrailingIconLabelStyle.swift
//  ScrumTrack
//
//  Created by Nathan Hannon on 2023-10-06.
//

import SwiftUI


struct TrailingIconLabelStyle: LabelStyle {
	func makeBody(configuration: Configuration) -> some View {
		HStack {
			configuration.title
			configuration.icon
		}
	}
} 
extension LabelStyle where Self == TrailingIconLabelStyle {
	static var trailingIcon: Self { Self() }
}
