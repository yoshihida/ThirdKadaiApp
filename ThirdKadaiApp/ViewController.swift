//
//  ViewController.swift
//  ThirdKadaiApp
//
//  Created by Yoshifumi Hidaka on 2016/03/20.
//  Copyright © 2016年 Yoshifumi Hidaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startStopAnimating: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var forwardimage: UIButton!
    @IBOutlet weak var backwardimage: UIButton!
 
    
    let imagearray: [String] = ["ball.jpg","watch.jpg","glue.jpg","mouse.jpg","car.jpg","pen.jpg"]
    
    var timer = NSTimer()
    var isAnimating = true
    var arrayIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        slideshow()
    }

    @IBAction func startStopAnimating(sender: AnyObject) {
    
    if isAnimating == true {
    forwardimage.enabled = true
    backwardimage.enabled = true
    timer.invalidate()
    startStopAnimating.setTitle("再生", forState:UIControlState.Normal)
    isAnimating = false
    }else{
    forwardimage.enabled = false
    backwardimage.enabled = false
    startStopAnimating.setTitle("停止", forState:UIControlState.Normal)
    timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target:self, selector: "slideshow" ,userInfo:nil,repeats: true)
    isAnimating = true
      }
    }
    
    
    func slideshow (){
        if arrayIndex == 6{
            arrayIndex = 0
        }else{
            imageView.image = UIImage(named:imagearray[arrayIndex])
            arrayIndex++
            
        }
      }
    
    
    //進むボタンが押されたら、配列arrayの一つ後ろのimageをimageViewに乗せる
    @IBAction func forwardimage(sender: AnyObject) {
        if arrayIndex >= 5{
            arrayIndex = 0
            imageView.image = UIImage(named:imagearray[arrayIndex])
        }else{
            arrayIndex++
            imageView.image = UIImage(named:imagearray[arrayIndex])
    }
    }
    
    
    //戻るボタンが押されたら、配列arrayの一つ前のimageをimageViewに乗せる
    @IBAction func backwardimage(sender: AnyObject) {
    
        if arrayIndex <= 0{
            arrayIndex = 5
            arrayIndex = arrayIndex%6
            imageView.image = UIImage(named:imagearray[arrayIndex])
        }else{
            arrayIndex--
            imageView.image = UIImage(named:imagearray[arrayIndex])
    }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    //ここまでは順調にrunできた。あとは以下で、スライドショーのimageをタップすれば２画面目で、
    //拡大された画像が見られる設定にしたいのだが、
    //どうコードすべきかこんがらがってしまいました。
    

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultViewController:KakudaiViewController = segue.destinationViewController as! KakudaiViewController
        
        
        //resultViewController.imageView.image = UIImage(named:imagearray[arrayIndex])
        //メンターからの訂正により上文は、した文のように訂正
        resultViewController.image = UIImage(named:imagearray[arrayIndex])
    }
    
     @IBAction func unwind(segue: UIStoryboardSegue){
 
    }
}







