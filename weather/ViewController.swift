//
//  ViewController.swift
//  weather
//
//  Created by gaoryrt on 15/8/23.
//  Copyright © 2015年 gaoryrt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    @IBOutlet weak var textview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadweather()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadweather() {
        var url = NSURL(string: "http://api.openweathermap.org/data/2.5/weather?q=chengdu,cn&lang=zh_cn")
        
        var data = NSData(contentsOfURL: url!)
        
        var str = NSString(data: data!, encoding: NSUTF8StringEncoding)
        
        do {
        var json : AnyObject! = try NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
            
        textview.text = "\(json)"
        
            
            }catch{}
    }
    
}

