//
//  ScrumView.swift
//  ScrumTrack
//
//  Created by Nathan Hannon on 2023-10-06.
//

import SwiftUI


/// A view that displays a list of scrums.
struct ScrumsView: View {
	let scrums: [DailyScrum]
	
	var body: some View {
		NavigationStack {
			List(scrums) { scrum in
				NavigationLink(destination: DetailView(scrum: scrum)) {
					CardView(scrum: scrum)
				}
				.listRowBackground(scrum.theme.mainColor)
			}
			.navigationTitle("Daily Scrums")
			.toolbar {
				Button(action: {}) {
					Image(systemName: "plus")
				}
			}
		}
	}
}


struct ScrumsView_Previews: PreviewProvider {
	static var previews: some View {
		ScrumsView(scrums: DailyScrum.sampleData)
	}
}
