//
//  TrailingIconLabelStyle.swift
//  ScrumTrack
//
//  Created by Nathan Hannon on 2023-10-06.
//

import SwiftUI


/// A label style that displays an icon on the trailing edge of the label.
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
