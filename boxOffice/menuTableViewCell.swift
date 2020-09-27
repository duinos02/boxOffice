//
//  menuTableViewCell.swift
//  boxOffice
//
//  Created by 이예진 on 2020/01/18.
//  Copyright © 2020 yejin. All rights reserved.
//

import UIKit

/*
 1.테이블뷰 컨트롤러 화면(아이폰 전체화면 차지) 화면
 2.테이블뷰 컨트롤러 화면(아이폰 전체화면 차지) 로직
 3.테이블뷰 컨트롤러 화면(아이폰 전체화면 차지) 매칭
 
 4.테이블뷰셀 매칭
 5.테이블뷰셀 로직
 6.테이블뷰셀 매칭
 
 7.테이블뷰셀 아이덴티파이어 설정
  ->하나의 테이블뷰 컨트롤러에 여러 테이블뷰 셀이 있을 수 있기 때문에, 어떤 셀인지 구분하기 위해 이름이 필요)
 
 8.테이블뷰셀 뷰객체 아울렛 연결 in 테이블뷰셀
 (테이블뷰셀의 역할은 이름 짓기 까지)
 
 9.나머지는 모두 테이블뷰컨트롤러에 코드 작성
 */

class menuTableViewCell: UITableViewCell {

    
    @IBOutlet weak var colorImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
}
