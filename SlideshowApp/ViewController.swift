//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 林正悟 on 2020/05/26.
//  Copyright © 2020 seisei-zero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer!

    @IBAction func imageButton(_ sender: Any) {
        if timer != nil{
            `switch`(switchoutlet)
        }
                
    }
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
    
    @IBOutlet weak var nextoutlet: UIButton!
    @IBOutlet weak var backoutlet: UIButton!
    @IBOutlet weak var switchoutlet: UIButton!
    
    
    
    @IBAction func next(_ sender: Any) {
        
        
         if displayImageNo < imageNameArray.count - 1 {
                   displayImageNo += 1
                   displayImage()
               }
         else{
            displayImageNo = 0
            displayImage()
        }
            
    }
        
    
    @IBAction func back(_ sender: Any) {
        
        if displayImageNo > 0{
            displayImageNo -= 1
            displayImage()
        }else{
            displayImageNo = 2
            displayImage()
        }
    }
    
    @IBAction func `switch`(_ sender: UIButton) {
        if timer == nil{
            timer = Timer.scheduledTimer(timeInterval: 2, target: self,selector: #selector(updateTimer(_:)),userInfo: nil, repeats: true )
            nextoutlet.isEnabled = false
            backoutlet.isEnabled = false
            sender.setTitle("停止",for:.normal)
        }else{timer.invalidate()
              timer = nil
            nextoutlet.isEnabled = true
            backoutlet.isEnabled = true
            sender.setTitle("再生",for:.normal)
        }
        
        
    }
    
    @objc func updateTimer(_ timer: Timer){
        
    if displayImageNo < imageNameArray.count - 1 {
               displayImageNo += 1
               displayImage()
           }
     else{
        displayImageNo = 0
        displayImage()
    }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let image =  UIImage(named: "IMG_0056.JPG")
        imageView.image = image
        
    }
    
    var displayImageNo = 0
    
    
   let imageNameArray = ["IMG_0056.JPG","IMG_0033.JPG","IMG_2762.jpg"]
    
    var image:UIImage!
    
      func displayImage(){
        
        let name = imageNameArray[displayImageNo]
        
            image = UIImage(named: name)
          
          imageView.image = image
      }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewcontroller2:ViewController2 = segue.destination as! ViewController2
        viewcontroller2.imageA = image
    }


}

