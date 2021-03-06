//
//  ViewController.swift
//  01_imageViewProgrammatically
//
//  Created by wealthyjalloh on 30/01/2017.
//  Copyright © 2017 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bear1 = UIImage(named: "1.jpg")!
        let bear2 = UIImage(named: "2.jpg")!
        let blackmoon = UIImage(named: "3.png")!
        
        
        // imageview programatically
        let myCoolImageView = UIImageView()
        myCoolImageView.frame = CGRect(x: 10, y: 50, width: 400, height: 300)
        myCoolImageView.image = bear1

        myCoolImageView.highlightedImage = bear2
        
        myCoolImageView.isUserInteractionEnabled = true
        myCoolImageView.isHighlighted = false
        
        myCoolImageView.animationImages = [bear1, bear2, blackmoon]
        myCoolImageView.animationDuration = 0.6
        myCoolImageView.animationRepeatCount = 0 // infinite
        myCoolImageView.startAnimating()
        
        self.view.addSubview(myCoolImageView)
        
        if myCoolImageView.isAnimating {
            print("yes")
        } else {
            print("No")
        }
        
        
        
        let frame_X: CGFloat = 10
        let frame_Y: CGFloat = 430
        let frame_width: CGFloat = 400
        let frame_height: CGFloat = 300
        
        
        
        let webImageURL = UIImageView(frame: CGRect(x: frame_X, y: frame_Y, width: frame_width, height: frame_height))
        
        let url = URL(string: "https://sites.google.com/a/lunenburgschools.net/zivojinovic/_/rsrc/1301507851287/home/karate-bears.jpg")!
        let data = try! Data(contentsOf: url)
        let imageFromURL = UIImage(data: data)
        
        webImageURL.image = imageFromURL
        
        self.view.addSubview(webImageURL)
        
        
      
        
        
        
        
        
        
        
        
    }

    

}

