//
//  ViewController.swift
//  TinderUIProject
//
//  Created by 渡邉舜也 on 26/07/2019.
//  Copyright © 2019 渡邉舜也. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {

    @IBOutlet weak var kolodaView: KolodaView!
    
    @IBOutlet weak var label: UILabel!
    
    let images = [
    "actress01",
    "明日花キララ",
    "板垣あずさ",
    "上原亜衣",
    "栄川乃亜",
    "大槻ひびき",
    "かすみりさ",
    "妃悠愛",
    "黒木麻衣",
    "KEI",
    "小坂めぐる",
    "早乙女らぶ",
    "篠原めぐみ",
    "鈴香音色",
    "瀬名涼",
    "そらのゆめ",
    "高橋しょうこ",
    "千春",
    "月野みちる",
    "寺崎泉",
    "豊田ゆう",
    "中野ありさ",
    "西川ゆい",
    "猫田りく",
    "希咲良",
    "波多野結衣",
    "姫川ゆうな",
    "藤井なな",
    "辺見麻衣",
    "保坂えり",
    "前田陽菜",
    "美月るな",
    "向井千里",
    "メイリン",
    "ももき希",
    "山手栞",
    "優木あおい",
    "米倉のあ",
    "来那",
    "梨杏",
    "瑠川リナ",
    "玲央奈",
    "六本木リンダ",
    "若菜めい" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kolodaView.delegate = self
        kolodaView.dataSource = self
    }
    
    @IBAction func right(_ sender: UIButton) {
        kolodaView.swipe(.right)
    }
    
    
    @IBAction func left(_ sender: UIButton) {
        kolodaView.swipe(.left)
    }
    
    @IBAction func back(_ sender: UIButton) {
        kolodaView.revertAction()
    }
    
    
    
    
}

extension ViewController:KolodaViewDelegate,KolodaViewDataSource{
    func koloda(_ koloda: KolodaView, viewForCardAt index: Int) -> UIView {
        //画像を生成
        let image = UIImage(named: images[index])
        //ImageViewに生成した画像を設定
        let ImageView = UIImageView(image: image)
        //ImageViewを返す
        return ImageView
    }
    
    func kolodaNumberOfCards(_ koloda: KolodaView) -> Int {
        return images.count
    }
    
    func koloda(_ koloda: KolodaView, allowedDirectionsForIndex index: Int) -> [SwipeResultDirection] {
        return [.left,.right]
    }
    
    func koloda(_ koloda: KolodaView, didSwipeCardAt index: Int, in direction: SwipeResultDirection) {
        if direction == .left{
            label.text = "\(images[index + 1])"
            
        }
        else if direction == .right{
            label.text = "\(images[index + 1])"
            
//            if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
//            //フォトライブラリが許可されている場合
//                //1.画面に表示されている画像を取得する
//                let imageName = images[index]
//                let image = UIImage(named: imageName)
//                //2.取得した画像をフォトライブラリに保存する
//                //画像がnilでなければ。ちゃんと画像があれば。
//                if image != nil{
//                    //フォトライブラリに画像を保存する
//                    UIImageWriteToSavedPhotosAlbum(image!, self,#selector(didFinishSavePhoto(_:didFinishSavingWithError:contextInfo:)), nil)
//                }
//        }
//            //画像が保存された時に実行される処理
//            func didFinishSavePhoto(_ image: UIImage,
//                                    didFinishSavingWithError error: NSError!,
//                                    contextInfo: UnsafeMutableRawPointer) {
//                print("保存しました")
//                //アラートを入れるなどの処理はここに書く
//            }
            
        }

}
}
