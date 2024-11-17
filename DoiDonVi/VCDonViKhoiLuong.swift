//
//  VCDonViKhoiLuong.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/11/24.
//

import UIKit

class VCDonViKhoiLuong: UIViewController {
    
    @IBOutlet weak var UnitTable: UITableView!
    var UnitNames: [String] = ["tấn","tạ","kg","dag","hg","g","mg"]
       var selectedUnit: String? = nil
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UnitTable.dataSource = self
        UnitTable.delegate = self

        // Do any additional setup after loading the view.
    }
    

   
}
extension VCDonViKhoiLuong : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UnitNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = UnitNames[indexPath.row]
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
    

    
