//
//  SearchTableViewController.swift
//  boxOffice
//
//  Created by 이예진 on 2020/01/27.
//  Copyright © 2020 yejin. All rights reserved.
//

import UIKit
//네트워크 통신 2. 필요한 라이브러리 임포트
//네트워크 통신 3. 네트워크 권한 열기 - info.plist
import Alamofire
import SwiftyJSON

class SearchTableViewController: UITableViewController {
    
    var titleList : [String] = [] //배열상태의 스트링을 넣어 뭐가 들어갈지 말해줌
    var overviewList : [String] = []
    var releaseList : [String] = []
    
    
    @IBOutlet weak var recommandMovies: UILabel!
    @IBOutlet weak var recommandMovieTitle: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recommandMovies.textColor = .white
        recommandMovieTitle.textColor = .white
        
        
        //네트워크 통신 1번. 화면이 뜨기 직전에 데이터 요청
        AF.request("http://memolease.ipdisk.co.kr:1337/todaymovies", method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
                 //서버에서 오는 데이터를 처리하기 위해 반복문 사용
                for item in json.array! {
                    
                    //서버에서 온 값들 중 필요한 title 내용만 필터링
                let title = item["title"].stringValue
                let release = item["release_date"].stringValue
                let overview = item["overview"].stringValue
                    
                    //필터링해서 가져온 값을 배열list에 추가
                    self.titleList.append(title)
                    self.releaseList.append(release)
                    self.overviewList.append(overview)
                }
               
                self.recommandMovieTitle.text = self.titleList.randomElement()!
                
                    //테이블뷰를 다시 그리는 기능 (중요) <- 화면과 데이터는 따로 놀기 때문에 맞춰주는 작업(동기화) 필요
                self.tableView.reloadData()
                
            case .failure(let error):
                print(error)
            }
        }
        

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    //각각의 셀을 모두 디자인, 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchTableViewCell", for: indexPath) as! SearchTableViewCell
        //indexpath : 각각 셀의 위치를 알려주는 부분
        
        cell.searchImageView.backgroundColor = .black
        cell.searchImageView.clipsToBounds = true
        cell.searchImageView.layer.cornerRadius = 10
        
        cell.titleLable.font = UIFont.boldSystemFont(ofSize: 15)
        cell.titleLable.text = titleList[indexPath.row]
        cell.overViewLable.text = overviewList[indexPath.row]
        cell.openLable.text = releaseList[indexPath.row]
        
        cell.overViewLable.numberOfLines = 0
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    //(옵션)섹션 타이틀
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "오늘의 영화 추천"
    }
}
