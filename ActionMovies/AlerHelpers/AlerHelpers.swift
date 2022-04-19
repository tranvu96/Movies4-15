//
//  AlerHelpers.swift
//  Real_DeAn
//
//  Created by TranVu on 22/03/2022.
//

import UIKit

class AlerHelpers
{
    class func showAler(message: String, ViewController: UIViewController)
    {
        let alerAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        let alerController = UIAlertController(title: "Thông Báo", message: message, preferredStyle: .alert)
        
        
        alerController.addAction(alerAction)
        ViewController.present(alerController, animated: true, completion: nil)
    }
}
