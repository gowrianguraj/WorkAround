//
//  ServiceParser.swift
//  WorkAround
//
//  Created by gowri anguraj on 01/10/19.
//  Copyright © 2019 gowri anguraj. All rights reserved.
//

import UIKit
import Foundation

class ServiceParser: NSObject {

    static func DoNetworkCall<T:Codable>(view:UIView,url:String,parameter:[String:AnyObject],completion:@escaping(T)->())
    {
        let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .whiteLarge)
        activityIndicator.color = UIColor.orange
        activityIndicator.center = view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        view.addSubview(activityIndicator)
        
         guard let url = URL(string: url) else { return }
    
          URLSession.shared.dataTask(with: url) { (myData, urlResponse, error) in
                        
            guard let responsedata = myData else { return }
            
            DispatchQueue.main.async {
                do{
                    let parseData = try JSONDecoder().decode(T.self, from: responsedata)
                    completion(parseData)
                    
                    activityIndicator.stopAnimating()
                    
                }catch{
                    print(error)
                }
            }
        }.resume()
    }
}
