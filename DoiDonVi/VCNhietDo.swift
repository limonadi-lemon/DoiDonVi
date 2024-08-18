//
//  VCNhietDo.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/8/24.
//


import UIKit

class VCNhietDo: UIViewController {
    @IBOutlet weak var txtInput: UITextField!
    
    @IBOutlet weak var lblDonVi: UILabel!
    
    @IBOutlet weak var lblDoC: UILabel!
    
    @IBOutlet weak var lblDoF: UILabel!
    
    @IBAction func btnDoiDoF(_ sender: Any) {
        lblDonVi.text = "℉"
    }
    
    @IBAction func btnDoiDoC(_ sender: Any) {
        lblDonVi.text = "℃"
    }
    
    @IBAction func btnDoi(_ sender: Any) {
        if lblDonVi.text == "℃" {
            doiDoC()
        }
        else if lblDonVi.text == "℉" {
            doiDoF()
        }
    }
    
    @IBAction func btnXoa(_ sender: Any) {
        txtInput.text = ""
        lblDoC.text = "Độ Celsius (℃): "
        lblDoF.text = "Độ Fahrenheit (℉): "
    }
    func doiDoC() {
        if let doC = Double(txtInput.text!) {
            let doF = String(format: "%.3f", 9/5 * Double(txtInput.text!)! + 32)
            lblDoC.text = "Độ Celsius (℃): \(doC)"
            lblDoF.text = "Độ Fahrenheit (℉): \(doF)"
        }
    }
    func doiDoF() {
        if let doF = Double(txtInput.text!) {
            let doC = String(format: "%.3f", 5/9 * (Double(txtInput.text!)! - 32))
            
            lblDoC.text = "Độ Celsius (℃): \(doC) ℃"
            lblDoF.text = "Độ Fahrenheit (℉): \(doF) ℉"
        }
    }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


