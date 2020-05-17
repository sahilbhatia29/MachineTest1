//
//  ViewModel.swift
//  MachineTest1
//
//  Created by sahil bhatia on 14/05/20.
//  Copyright © 2020 sahil bhatia. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    
    func loadData() {
        debugPrint("Print data")
        let params = [
            "user_id": 0,
            "event_id": 12,
            "longitude": 78.1245,
            "latitude": 28.1245
        ]

       var request = URLRequest(url: URL(string: "http://saudicalendar.com/api/user/getEventDetail")!)
       request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params as [String: AnyObject], options: [])
       request.addValue("application/json", forHTTPHeaderField: "Content-Type")

       let session = URLSession.shared
       let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
           print(response!)
           do {
            let json = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [String: AnyObject]
               print(json)
           } catch {
               print("error")
           }
       })

       task.resume()
    }

}
