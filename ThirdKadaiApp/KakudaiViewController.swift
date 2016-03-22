//
//  KakudaiViewController.swift
//  ThirdKadaiApp
//
//  Created by Yoshifumi Hidaka on 2016/03/21.
//  Copyright © 2016年 Yoshifumi Hidaka. All rights reserved.
//

import UIKit

class KakudaiViewController: UIViewController {
    
    var image:UIImage?
    //@IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Do any additional setup after loading the view.
        
        //imageView.image = UIImage(named:imagearray[arrayIndex])
        //メンターからの訂正で上文は、下文のように訂正
        imageView.image = image
        imageView.transform = CGAffineTransformMakeScale(1.5,1.5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
