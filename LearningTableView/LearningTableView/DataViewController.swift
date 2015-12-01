//
//  DataViewController.swift
//  LearningTableView
//
//  Created by HYUBYN on 11/28/15.
//

import UIKit
//import DetailViewController

 class DataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var actionButton: UIButton!
    var myArray = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 1...10{
            myArray.append(index);
        }
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "cell-asdfasdf")
        cell.textLabel?.text = "\(myArray[indexPath.row])"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailView = storyboard?.instantiateViewControllerWithIdentifier("showDetail") as! DetailViewController
        detailView.setLabelText("\(myArray[indexPath.row])")
        navigationController?.pushViewController(detailView, animated: true)
    }

}
