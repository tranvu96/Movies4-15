//
//  DownloadViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 11/03/2022.
//

import UIKit


class DownloadViewController: UIViewController {
    
    var textInput: String = ""
        
    @IBOutlet weak var danhGia: UILabel!
    @IBOutlet weak var tenGmail: UILabel!
    @IBOutlet weak var dangXuat: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tenGmail.text = textInput
        dangXuat.layer.cornerRadius = 8
        imageView.layer.cornerRadius = 8
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panInlable(sender: )))
        danhGia.isUserInteractionEnabled = true
        danhGia.addGestureRecognizer(panGesture)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(panInlable(sender: )))
        tapGesture.numberOfTapsRequired = 1
        danhGia.addGestureRecognizer(tapGesture)
    }
    
    @objc func panInlable(sender: UIGestureRecognizer) {
        let locationView = sender.location(in: self.view)
        let frameLable = self.view.convert(danhGia.frame, from: danhGia.superview)
        
        let frame1 = CGRect(x: frameLable.origin.x,
                            y: frameLable.origin.y,
                            width: frameLable.size.width / 5,
                            height: frameLable.size.height)
        let frame2 = CGRect(x: frameLable.origin.x,
                            y: frameLable.origin.y,
                            width: 2 * frameLable.size.width / 5,
                            height: frameLable.size.height)
        let frame3 = CGRect(x: frameLable.origin.x,
                            y: frameLable.origin.y,
                            width: 3 * frameLable.size.width / 5,
                            height: frameLable.size.height)
        let frame4 = CGRect(x: frameLable.origin.x,
                            y: frameLable.origin.y,
                            width: 4 * frameLable.size.width / 5,
                            height: frameLable.size.height)
        let frame5 = CGRect(x: frameLable.origin.x,
                            y: frameLable.origin.y,
                            width: 5 * frameLable.size.width / 5,
                            height: frameLable.size.height)
        
        if (frame1.contains(locationView)) {
            danhGia.text = "★✩✩✩✩"
        } else if (frame2.contains(locationView)) {
            danhGia.text = "★★✩✩✩"
        } else if (frame3.contains(locationView)) {
            danhGia.text = "★★★✩✩"
        } else if (frame4.contains(locationView)) {
            danhGia.text = "★★★★✩"
        } else if (frame5.contains(locationView)) {
            danhGia.text = "★★★★★"
        }
    }
    
    @IBAction func clickButtonLogOut(_ sender: Any) {
        let vc = LoginViewController()
        vc.textInPush = "Bạn Đã Đăng Xuất Thành Công !"
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
