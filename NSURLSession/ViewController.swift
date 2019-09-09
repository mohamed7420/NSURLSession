//
//  ViewController.swift
//  NSURLSession
//
//  Created by Mohamed on 9/8/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let session = URLSession.shared
    
    let configure = URLSessionConfiguration.default
    
    let configure2 = URLSessionConfiguration.ephemeral
    
    let configure3 = URLSessionConfiguration.background(withIdentifier: "Download")
    
    
    // create session
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        configure3.allowsCellularAccess = true
        
      

    }

    
    @IBAction func btn_task(_ sender: UIButton) {
        
        createTask()
    
    }
    func createTask(){
        
        guard let url = URL(string:"https://www.facebook.com/profile.php?id=100013381152500") else {return}
        
        session.dataTask(with: url) { (data, response, error) in
            
            if let error = error{
                
                print(error)
            }
            
            if let response = response {
                
                print(response)
            }
            
            if let data = data {
                
                print(data)
            }
            
        }.resume()
        
    }

}

