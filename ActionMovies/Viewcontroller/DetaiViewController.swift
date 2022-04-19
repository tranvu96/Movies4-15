//
//  DetaiViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 15/03/2022.
//

import UIKit
import AVFoundation
import AVKit

class DetaiViewController: UIViewController {
    
    deinit {
        print("DEINIT")
    }
    var id = 0
    var player = AVPlayer()
    var getImage = UIImage()
    var getName = String()
    var getUrl = String()
    var year = String()
    var nhaSX = String()
    var gthieu = String()
    var rating = String()
    var quocGiaSX = String()
    var myList = [Int]()
    var likeFimls = [Int]()
   
    @IBOutlet weak var imageDetai: UIImageView!
    @IBOutlet weak var yearDetai: UILabel!
    @IBOutlet weak var ratingLable: UILabel!
    @IBOutlet weak var nhaSXMovies: UILabel!
    @IBOutlet weak var nameDetai: UILabel!
    @IBOutlet weak var gthieuMovies: UILabel!
    @IBOutlet weak var playVideo: UIButton!
    @IBOutlet weak var imageFavorite: UIImageView!
    @IBOutlet weak var imageLike: UIImageView!
    @IBOutlet weak var quocGia: UILabel!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        imageDetai.image = getImage
        nameDetai.text = getName
        nhaSXMovies.text = nhaSX
        gthieuMovies.text = gthieu
        yearDetai.text = year
        ratingLable.text = rating
        quocGia.text = quocGiaSX
        playVideo.layer.cornerRadius = 8
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //gọi key nút tim
        self.myList = UserDefaults.standard.object(forKey: "FAVORITE_FIMLS") as? [Int] ?? []
        //gọi key nút thích
        self.likeFimls = UserDefaults.standard.object(forKey: "LIKE_FIMLS") as? [Int] ?? []
        // chech nút like
        let isLike = self.checkLike(idFilm: self.id)
        if(isLike){
            self.imageLike.image = UIImage(systemName: "hand.thumbsup.fill")
        } else{
            self.imageLike.image = UIImage(systemName: "hand.thumbsup")
        }
        //check mylist
        let isFavorite = self.checkHeart(idFilm: self.id)
        if(isFavorite){
            self.imageFavorite.image = UIImage(named: "filler")
        } else{
            self.imageFavorite.image = UIImage(named: "heart")
        }
    }
    
    @IBAction func onMyList(_ sender: Any){
        let result = checkHeart(idFilm: self.id)
        if(result){
            self.removeFavorite(idFilm: self.id)
            self.imageFavorite.image = UIImage(named: "heart")
        } else{
            myList.append(self.id)
            self.imageFavorite.image = UIImage(named: "filler")
        }
        UserDefaults.standard.set(self.myList, forKey: "FAVORITE_FIMLS")
    }
    
    @IBAction func onPlayVideo(_ sender: Any)
    {
        let url = URL(string: getUrl)
        player = AVPlayer(url: url!)
        let playerViewcontroller = AVPlayerViewController()
        playerViewcontroller.player = player
        playerViewcontroller.modalPresentationStyle = .fullScreen
        DispatchQueue.main.async
        {
            self.present(playerViewcontroller, animated: true)
            {
                DispatchQueue.main.async
                {
                    self.player.play()
                }
            }
        }
    }
    
    @IBAction func clickButtonLike(_ sender: Any) {
        let result = checkLike(idFilm: self.id)
        if(result){
            self.removeLike(idFilm: self.id)
            self.imageLike.image = UIImage(systemName: "hand.thumbsup")
        } else{
            likeFimls.append(self.id)
            self.imageLike.image = UIImage(systemName: "hand.thumbsup.fill")
        }
        UserDefaults.standard.set(self.likeFimls, forKey: "LIKE_FIMLS")
    }
   
    @IBAction func onShare(_ sender: Any) {
        let shareVideo = UIActivityViewController(activityItems:[getImage,getUrl], applicationActivities: nil)
        present(shareVideo, animated: true)
    }
    // chech tim
    func checkHeart(idFilm: Int) -> Bool {
        var result = false
        if(self.myList.count > 0){
            for i in 0...self.myList.count - 1 {
                if(idFilm == self.myList[i]){
                    result = true
                    break
                } else{
                    result = false
                }
            }
        }
        return result
    }
    // check thích
    func checkLike(idFilm: Int) -> Bool {
        var result = false
        if(self.likeFimls.count > 0){
            for i in 0...self.likeFimls.count - 1 {
                if(idFilm == self.likeFimls[i]){
                    result = true
                    break
                } else{
                    result = false
                }
            }
        }
        return result
    }
    // check bỏ tim
    func removeFavorite(idFilm: Int) {
        if(self.myList.count > 0){
            for index in 0...myList.count - 1{
                if(myList[index] == idFilm){
                    myList.remove(at: index)
                    break
                }
            }
        }
    }
    // chech bỏ thích
    func removeLike(idFilm: Int) {
        if(self.likeFimls.count > 0){
            for index in 0...likeFimls.count - 1{
                if(likeFimls[index] == idFilm){
                    likeFimls.remove(at: index)
                    break
                }
            }
        }
    }
}
