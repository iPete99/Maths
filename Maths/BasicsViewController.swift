//
//  BasicsViewController.swift
//  Maths
//
//  Created by Peter and Fuzzy on 06.06.18.
//  Copyright © 2018 Peter and Fuzzy. All rights reserved.
//

import UIKit

class BasicsViewController: UITableViewController {
    
    var basicItemStore = BasicsItemStore()
    
    // MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // title
        self.title = "Basics"
        
        // background image
        let backgroundImage = UIImage(named: "Unit_circle_angles_color")
        let backgroundImageView = UIImageView(image: backgroundImage)
        
        backgroundImageView.alpha = 0.05
        backgroundImageView.frame = self.tableView.frame
        backgroundImageView.contentMode = .scaleAspectFill
        
        self.tableView.addSubview(backgroundImageView)
        
        // row height
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 65
    }
    
    // MARK: Determine number of rows, required
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.basicItemStore.rows.count
    }
    
    // MARK: Customize cells, required
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // get a new cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        cell.textLabel?.text = self.basicItemStore.rows[indexPath.row]
        
        return cell
    }
    
    // row height
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
