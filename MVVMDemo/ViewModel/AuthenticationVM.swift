//
//  AuthenticationVM.swift
//  MVVMDemo
//
//  Created by apple on 31/03/20.
//  Copyright © 2020 apple. All rights reserved.
//

import Foundation

class AuthenticationVM:NSObject {
    var user:User!
    
    var username:String{return user.username}
    var email:String{return user.email}
    
    typealias authenticationLogicalCallback = (_ status:Bool, _ message: String) -> Void
    var logicalCallback:authenticationLogicalCallback?
    
    func authenticatedUserWith(_ username:String, andPassword password:String){
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) {
              if username.count != 0{
                      if password.count != 0 {
                          
                      }else{
                          // password empty
                          self.logicalCallback?(false,"Password should not empty")
                      }
                  }else{
                      // username empty
                      self.logicalCallback?(false,"Username should not empty")

                  }
        }
    }
    
    
    fileprivate func verifyUserWith(_ username: String, andPassword password: String){
        if  username == "minal" && password == "123456"{
           user = User(username: username, email: "\(username)@gmail.com")
            self.logicalCallback?(true,"user authenticated successfully")

        }else{
            //invalid login
            self.logicalCallback?(false,"Please enter valid credential")
        }
    }
    
    func logicCompletionHandler(callback: @escaping authenticationLogicalCallback){
        self.logicalCallback = callback
    }
    
    
    
}
