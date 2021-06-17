import UIKit

// -----------|
//            |
// Structures |
//            |
// -----------|

// Structures and classes almost are the same, but:
// 1. Structures can't be inherited
// 2. Class is reference type
// 3. Structure is value type

// Class
//------------------------------------------------------
class ClassWebSite {
    var siteName = "google.com"
    let visitsToday = 100000
    let visitsYesterday = 9000
    
    var visitsTommorow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we'll have about \(visitsTommorow) visitors."
    }
}
//------------------------------------------------------

// Structure
//------------------------------------------------------
struct StructWebSite {
    var siteName = "google.com"
    let visitsToday = 100000
    let visitsYesterday = 9000
    
    var visitsTommorow: Int {
        return (visitsToday + visitsYesterday) / 2
    }
    
    func description() -> String {
        return "We had \(visitsYesterday) visitors yesterday. Today we have \(visitsToday) visitors. Tomorrow we'll have about \(visitsTommorow) visitors."
    }
}
//------------------------------------------------------

let site = ClassWebSite()
func changeSiteName(site: ClassWebSite) -> ClassWebSite {
    site.siteName = "bing.com"
    return site
}

changeSiteName(site: site)
site

let anotherSite = StructWebSite()
func changeStructSiteName(site: StructWebSite) -> StructWebSite {
    // We can't change the structure until it becomes a variable (anotherSite is a constant)
    var site = anotherSite
    site.siteName = "bing.com"
    return site
}

changeStructSiteName(site: anotherSite)
anotherSite
