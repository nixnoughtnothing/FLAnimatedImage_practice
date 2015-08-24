//
//  ViewController.swift
//  FLAnimatedImage_practice
//
//  Created by nixnoughtnothing on 8/24/15.
//  Copyright (c) 2015 nix nought nothing. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let backgroundAnimationImage = FLAnimatedImageView()
    let backgroundAnimationImage2 = FLAnimatedImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /** Gifs **/
        
        // from local
        let path = NSBundle.mainBundle().pathForResource("cat", ofType: "gif")!
        let url = NSURL(fileURLWithPath: path)!
        var gifImage:FLAnimatedImage = FLAnimatedImage(animatedGIFData: NSData(contentsOfURL: url))
        backgroundAnimationImage.animatedImage = gifImage
        backgroundAnimationImage.frame = CGRectMake(0,0,view.frame.width,view.frame.height/2)
        view.addSubview(backgroundAnimationImage)
        
        
        // from web
        let path2:String? = "http://raphaelschaad.com/static/nyan.gif"
        if path2 != nil{
            let url2 = NSURL(string: path2!)
            var gifImage2:FLAnimatedImage = FLAnimatedImage(animatedGIFData: NSData(contentsOfURL:url2!))
            backgroundAnimationImage2.animatedImage = gifImage2
            backgroundAnimationImage2.frame = CGRectMake(0,view.frame.height/2,view.frame.width,view.frame.height/2)
            view.addSubview(backgroundAnimationImage2)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

