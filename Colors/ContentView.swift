//
//  ContentView.swift
//  Colors
//
//  Created by Kayla Reap on 10/4/19.
//  Copyright © 2019 Kayla Reap. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    @IBOutlet weak var sampleTableView: UITableView

    var rowTimes = ["red", "orange", "yellow", "green","blue", "purple", "brown"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(tableView, numberOfRows section: Int) -> Int {
        return rowItems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        cell7.textLabel7.text = rowItems[indexPath.row]
        return cell
    }
        
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, willDisplay cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        if(indexPath.row % 2 == 0) {
            cell.backgroundColor = UIColor.redColor()
        }
        else {
            cell.backgroundColor = UIColor.orangeColor()
        }
        else {
            cell.backgroundColor = UIColor.yellow
        }
        else {
            cell.backgroundColor = UIColor.green
        }
        else {
            cell.backgroundColor = UIColor.purple
        }
        else {
            cell.backgroundColor = UIColor.brown
        }
    }
}
