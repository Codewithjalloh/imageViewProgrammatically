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
        myCoolImageView.frame = CGRect(x: 10, y: 100, width: 400, height: 300)
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
        
        
        
        
        
        
        
        
        
        
        
    }

    

}

