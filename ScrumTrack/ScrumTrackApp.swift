//
//  ScrumTrackApp.swift
//  ScrumTrack
//
//  Created by Nathan Hannon on 2023-07-20.
//

import SwiftUI

@main
struct ScrumTrackApp: App {
	var body: some Scene {
		WindowGroup {
			ScrumsView(scrums: DailyScrum.sampleData)
		}
	}
}
