//
//  RankTableViewController.swift
//  boxOffice
//
//  Created by 이예진 on 2020/01/27.
//  Copyright © 2020 yejin. All rights reserved.
//

import UIKit

class RankTableViewController: UITableViewController {
    
    var list = ["하이","기생충","명량"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "RankTableViewCell", for: indexPath) as! RankTableViewCell
        
        cell1.rankView.clipsToBounds = true
        cell1.rankView.layer.cornerRadius = 10
        
        cell1.rankTitleLabel.text = list[indexPath.row]
        cell1.rankRankLabel.text = "\(indexPath.row + 1)위"
        
      //  cell1.rankTitleLabel.numberOfLines = 0 줄의 길이를 무한대로 설정
        
        return cell1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "영화 순위"
    }
    
    
}
