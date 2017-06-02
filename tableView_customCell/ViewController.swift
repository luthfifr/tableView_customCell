//
//  ViewController.swift
//  tableView_customCell
//
//  Created by Luthfi Fathur Rahman on 5/21/17.
//  Copyright © 2017 Luthfi Fathur Rahman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var tableData = ["Produk 1", "Produk 2", "Produk 3", "Produk 4", "Produk 5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath) as! TableViewCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(red: 255.0/255.0, green: 255.0/255.0, blue: 127.0/255.0, alpha: 1.0)
        }
        else {
            cell.backgroundColor = UIColor(red: 244.0/255.0, green: 242.0/255.0, blue: 3.0/255.0, alpha: 1.0)
        }
        
        cell.Gambar.image = UIImage (named: "paypal")
        cell.Label.text = tableData[indexPath.row]
        cell.Label.sizeToFit()
        
        return cell
    }


}

