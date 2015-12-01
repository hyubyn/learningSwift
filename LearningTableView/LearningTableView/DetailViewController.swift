//
//  DetailViewController.swift
//  LearningTableView
//
//  Created by HYUBYN on 11/30/15.
//

import UIKit

class DetailViewController: UIViewController {
    var value: NSString!
    var item: NSString = ""
    
    func setLabelText(value: NSString){
        item = value as String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRectMake(0, 0, 200, 21))
        label.center = CGPointMake(160, 284)
        label.textAlignment = NSTextAlignment.Center
        label.text = item as String
        self.view.addSubview(label)
    }

   
    


}
