//
//  UserModel.swift
//  MachineTest1
//
//  Created by sahil bhatia on 18/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import Foundation
import UIKit

class ResponseData: Codable {
    //var error : Int
    var error_code : Int
    var message : String
    var data : EventData
}

class EventData: Codable {
    var category_color: String?
    var category_name: String?
    var comment: [Comment]
    //var commentCount: Int?
    var duration_promote_points: [DurationPoints]
    var event_organizer: [EventOrganizer]
//    var event_sponser: EventSponsor
}
class Comment: Codable {
    //var comment_id: Int?
    var ec_created_at: String?
    var u_image: String?

}
class DurationPoints: Codable {
    //var id: Int?
    var points: String?
    //var type: Int?
    var views: String?
}

class EventOrganizer: Codable {
    //var event_organizer_id: Int?
    var o_contact: String?
    var o_email: String?
    var o_logo: String?
    var o_name: String?
}
//class EventSponsor: Codable {
//    var event_organizer_id: Int?
//    var s_contact: String?
//    var s_email: String?
//    var s_logo: String?
//    var s_name: String?
//}
