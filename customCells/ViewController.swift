//
//  ViewController.swift
//  customCells
//
//  Created by kyoji_kuzunoha on 2015/01/31.
//  Copyright (c) 2015年 kyoji_kuzunoha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.registerNib(UINib(nibName: "TVCCellA", bundle: nil), forCellReuseIdentifier: "TVCCellA")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.allowsSelection = false
        
        tableView.registerNib(UINib(nibName: "TVCCellB", bundle: nil), forCellReuseIdentifier: "TVCCellB")
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.allowsSelection = false
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 4
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        switch indexPath.row{
            
        case 0:
            let cell = tableView.dequeueReusableCellWithIdentifier("TVCCellA") as TVCCellA
            cell.cellATextLabel.text = "CustomCellA"
            return cell
            
        case 1:
            let cell = tableView.dequeueReusableCellWithIdentifier("TVCCellB") as TVCCellB
            let imageData:UIImage = UIImage(named:"swift")!
            cell.cellBImageView.image = imageData
            return cell
            
        default:
            let cell = tableView.dequeueReusableCellWithIdentifier("TVCCellA") as TVCCellA
            cell.cellATextLabel.text = "DefaultCell"
            return cell
            
            
        }
    }

}

