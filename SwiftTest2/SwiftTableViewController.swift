//  Copyright (c) 2014 Zack McBride. All rights reserved.

import UIKit

class SwiftTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView : UITableView

    let defaultCells = ["First Row table View", "Second Row table View", "Third Row table View", "Fourth Row table View"]
    
    let defaultDetail = ["First Detail", "Second Detail", "Third Detail", "Fourth Detail"]
    
    let defaultSub = [ "First subtitles text","Second subtitles texte", "Third subtitles text", "Fourth subtitles text"]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift TableView"
        tableView.delegate = self
        tableView.dataSource = self
    }

    // UITableViewDataSource Functions
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return defaultCells.count
    }

    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let data = defaultCells[indexPath.row]
        let dataDetail = defaultSub [indexPath.row]
        let cell = UITableViewCell(style: .Subtitle, reuseIdentifier: nil)
        cell.textLabel.text = data;
        cell.detailTextLabel.text = dataDetail
        
        return cell;
    }

    // UITableViewDelegate Functions
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        let swiftDetailViewController = SwiftDetailViewController(tableViewComment: defaultDetail[indexPath.row])
        self.navigationController.pushViewController(swiftDetailViewController, animated: true)
    }

}
