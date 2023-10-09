//
//  DailyScrum.swift
//  ScrumTrack
//
//  Created by Nathan Hannon on 2023-10-06.
//

import Foundation


/// A struct representing a daily scrum meeting.
struct DailyScrum: Identifiable {
	let id: UUID
	var title: String
	var attendees: [Attendee]
	var lengthInMinutes: Int
	var theme: Theme
	var lengthInMinutesAsDouble: Double {
		get {
				Double(lengthInMinutes)
		}
		set {
			lengthInMinutes = Int(newValue)
		}
	 }
	
	init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
		self.id = id
		self.title = title
		self.attendees = attendees.map { Attendee(name: $0) }
		self.lengthInMinutes = lengthInMinutes
		self.theme = theme
	}
}


extension DailyScrum {
	/// A structure that represents an attendee of a daily scrum meeting.
	struct Attendee: Identifiable {
		let id: UUID
		var name: String
		
		init(id: UUID = UUID(), name: String) {
			self.id = id
			self.name = name
		}
	}
	static var emptyScrum: DailyScrum {
		DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
	}
}


extension DailyScrum {
	static let sampleData: [DailyScrum] =
	[
		DailyScrum(title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, theme: .yellow),
		DailyScrum(title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, theme: .orange),
		DailyScrum(title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 5, theme: .poppy)
	]
}
