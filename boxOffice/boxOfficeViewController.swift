////
////  boxOfficeViewController.swift
////  boxOffice
////
////  Created by 이예진 on 2020/01/18.
////  Copyright © 2020 yejin. All rights reserved.
////
//
//import UIKit
//import YPImagePicker
//import ImageSlideshow
//
//class boxOfficeViewController: UIViewController {
//
//    //@IBOutlet weak var mySliderView: UIView! //slidershow로 바꾸기
//    @IBOutlet weak var userImageView: UIImageView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        userImageView.backgroundColor = .lightGray
//
//       /* mySliderView.setImageInputs([
//          ImageSource(image: UIImage(named: "1")!),
//          ImageSource(image: UIImage(named: "2")!),
//          ImageSource(image: UIImage(named: "3")!),
//          ImageSource(image: UIImage(named: "4")!)
//        ])
// */
//
//        mySliderView.contentScaleMode = .scaleAspectFill //이미지가 꽉차게 설정
//        mySliderView.slideshowInterval = 1
//
//
//    }
//
//    @IBAction func buttonClicked(_ sender: Any) {
//        let picker = YPImagePicker()
//        picker.didFinishPicking { [unowned picker] items, _ in
//            if let photo = items.singlePhoto {
//                print(photo.fromCamera) // Image source (camera or library)
//                print(photo.image) // Final image selected by the user
//                print(photo.originalImage) // original image selected by the user, unfiltered
//                print(photo.modifiedImage) // Transformed image, can be nil
//                print(photo.exifMeta) // Print exif meta data of original image.
//
//                self.userImageView.image = photo.image
//
//            }
//            picker.dismiss(animated: true, completion: nil)
//        }
//        present(picker, animated: true, completion: nil)
//    }
//
//
//
//}
