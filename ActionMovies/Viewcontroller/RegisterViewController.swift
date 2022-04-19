//
//  RegisterViewController.swift
//  Real_DeAn
//
//  Created by TranVu on 22/03/2022.
//

import UIKit


class RegisterViewController: UIViewController
{
    var pushText = String()

    @IBOutlet weak var registerEmailTextField: UITextField!
    @IBOutlet weak var registerPassTextField: UITextField!
    
    
    @IBOutlet weak var buttonRegister: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonRegister.layer.cornerRadius = 8
    }
    @IBAction func onRegister(_ sender: Any) {
        guard let mail = registerEmailTextField.text, let password = registerPassTextField.text else { return }
        FirebaseAuthManager.shared.register(mail: mail, password: password)
        {
           [weak self] (status, data) in
            guard let strongSelf = self else { return }
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
                    AlerHelpers.showAler(message: "Đã Xảy Ra Lỗi", ViewController: strongSelf)
                }
            }
        }
    }
    @IBAction func backToLogin(_ sender: Any)
    {
        dismiss(animated: true, completion: nil)
    }
    

}
