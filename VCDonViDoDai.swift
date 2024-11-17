//
//  VCDonViDoiViewController.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 10/11/24.
//

import UIKit

class VCDonViDoDai: UIViewController {

    @IBOutlet weak var unitTable: UITableView!
    
    var unitNames: [String] = ["km","m","dm","cm","mm"]
       var selectedUnit: String? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        unitTable.dataSource = self
        unitTable.delegate = self

        // Do any additional setup after loading the view.
    }
    

   
}
extension VCDonViDoDai : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return unitNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = unitNames[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        let content = cell?.contentConfiguration as? UIListContentConfiguration
        selectedUnit = content?.text ?? "nothing"
        print(selectedUnit!)
        
    }
    
}
