//
//  ManagerFirebase.swift
//  Real_DeAn
//
//  Created by TranVu on 22/03/2022.
//

import Foundation
import FirebaseAuth


class FirebaseAuthManager
{
   static let shared = FirebaseAuthManager()
    
    func login (mail email: String, password pass: String, completed completionBlock: @escaping((_ success: Bool,_ data: String?)-> Void))
    {
        
        Auth.auth().signIn(withEmail: email, password: pass)
        {
            [weak self] (result, error) in
            if let error = error
            {
                completionBlock(false, "\(error.localizedDescription)")
            }
            else
            {
                if let user = result?.user
                {
                    completionBlock(true, "\(user.uid)")
                }
            }
        }
    }
    
    func register (mail email:String, password pass:String, completed completionBlock: @escaping((_ success:Bool, _ data:String?)-> Void))
    {
        Auth.auth().createUser(withEmail: email, password: pass)
        {
            [weak self] (result, error) in
            if let error = error
            {
                completionBlock(false, "\(error.localizedDescription)")
            }
            else
            {
                if let user = result?.user
                {
                    completionBlock(true, "\(user.uid)")
                }
            }
        }
    }
}
