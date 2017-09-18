import Foundation

struct HackathonEvent : Event {
    let title : String
    let time : DateInterval
    let eventDescription: String
    let color : String
    let hypePeriod : DateInterval
    let sponsor : String?
    let imageURL : String?
    let venue : String?
    let facebookLink : String?
    var shouldShowAsUpdate: Bool {
        get {
            return self.hypePeriod.contains(Date())
        }
    }

    init(called title: String, at time: DateInterval, described description: String, colored color: String, 
    hypePeriod: DateInterval, sponsoredBy sponsor: String? = nil, imageURL: String? = nil,
    at venue: String? = nil, facebookLink : String? = nil ) {
        self.title = title
        self.time = time
        self.eventDescription = description
        self.color = color
        self.hypePeriod = hypePeriod
        self.sponsor = sponsor
        self.imageURL = imageURL
        self.venue = venue
        self.facebookLink = facebookLink
    }
}
