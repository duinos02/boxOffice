//
//  menuTableViewController.swift
//  boxOffice
//
//  Created by 이예진 on 2020/01/18.
//  Copyright © 2020 yejin. All rights reserved.
//

import UIKit

class menuTableViewController: UITableViewController {
    
    let categoryList = ["영화","드라마","연극","뮤지컬","애니메이션","오페라"]
    let colorSet : [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
     //1.셀 개수가 몇개 필요한지? ex. 카톡친구 수
    //numberOfRowsInSection
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryList.count
    }
     
    // 2.셀 디자인 및 데이터 처리 (어떤 셀을 사용하고 어떻게 디자인 할지) ex. 카톡 친구마다 프사,상메가 다름
    //cellForRowAt
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //어떤 셀을 쓸지 가져오는 작업 : 셀 화면 + 셀 로직 매칭을 코드로 가져오는 것
        let jin = tableView.dequeueReusableCell(withIdentifier: "menuTableViewCell", for: indexPath) as! menuTableViewCell //셀 복붙하는 코드
        
        jin.colorImageView.backgroundColor = .red
        jin.titleLabel.text = categoryList[indexPath.row]
        return jin
    }
    
    // 3.셀의 높이 ex.메인 스토리보드에서 설정하는 셀의 높이는 반영되지 않음
    //heightForRowAt
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
     
    

}
