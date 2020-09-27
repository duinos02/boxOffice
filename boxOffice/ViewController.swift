//
//  ViewController.swift
//  boxOffice
//
//  Created by 이예진 on 2020/01/18.
//  Copyright © 2020 yejin. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var fortuneLabel: UILabel!
    
    var List : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AF.request("http://memolease.ipdisk.co.kr:1337/fortunes", method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
                for item in json.array! {
                    
                    let value = item["content"].stringValue
                    self.List.append(value)
                }
                self.fortuneLabel.text = self.List.randomElement()!
                
                
            case .failure(let error):
                print(error)
            }
        }
        
    }


}

