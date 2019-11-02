//
//  NFLStaticTableViewController.swift
//  RepasoTableViews
//
//  Created by Apple Device 18 on 11/2/19.
//  Copyright © 2019 Tonipocket. All rights reserved.
//

import UIKit

class NFLStaticTableViewController: UITableViewController {
    let nflTeam = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nfl.Label.text = nflTeam
    }
}
