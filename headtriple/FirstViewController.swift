//
//  FirstViewController.swift
//  headtriple
//
//  Created by Joe Kelley on 10/2/16.
//  Copyright © 2016 Joe Kelley. All rights reserved.
//

import UIKit

class FirstViewController: UITableViewController {
    
    @IBOutlet weak var Table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.array.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        cell.textLabel?.text = items.array[indexPath.row]
        print(items.array)
        return cell
    }
    
    override func viewWillAppear(animated: Bool) {
        Table.reloadData()
    }
}


