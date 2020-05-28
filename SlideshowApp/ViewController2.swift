//
//  ViewController2.swift
//  SlideshowApp
//
//  Created by 林正悟 on 2020/05/26.
//  Copyright © 2020 seisei-zero. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    var imageA:UIImage!
    @IBOutlet weak var imageView2: UIImageView!
   
    @IBAction func goback(_ sender: Any) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
imageView2.image = imageA
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
