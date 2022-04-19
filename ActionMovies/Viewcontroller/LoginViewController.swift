//
//  LoginViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 22/03/2022.
//

import UIKit


class LoginViewController: UIViewController {
    
    var textInPush = String()
    
    @IBOutlet weak var loginEmailTextField: UITextField!
    @IBOutlet weak var loginPassTextField: UITextField!
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var statusLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonLogin.layer.cornerRadius = 8
        loginPassTextField.isSecureTextEntry = true
        statusLable.text = textInPush
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loginEmailTextField.text = ""
        loginPassTextField.text = ""
    }
    
    @IBAction func onLogin(_ sender: Any) {
        let download = DownloadViewController()
        download.textInput = loginEmailTextField.text!
        
        guard let mail = loginEmailTextField.text, let password = loginPassTextField.text else { return }
        FirebaseAuthManager.shared.login(mail: mail, password: password) { [weak self] (status, data) in
            guard let strongSelf = self else {return}
            if status
            {
                let homVC = ViewController()
                let navigation = UINavigationController(rootViewController: homVC)
                navigation.modalPresentationStyle = .fullScreen
                strongSelf.present(navigation, animated: true, completion: nil)
            }
            else
            {
                if let messageError = data
                {
                    AlerHelpers.showAler(message: messageError, ViewController: strongSelf)
                    
                }
                else
                {
                    AlerHelpers.showAler(message: "Đã Xảy Ra lỗi", ViewController: strongSelf)
                }
                
            }
        }
        
    }

    @IBAction func nextRegister(_ sender: Any) {
        let registerVC = RegisterViewController()
        registerVC.modalPresentationStyle = .fullScreen
        present(registerVC, animated: true, completion: nil)
    }
}
