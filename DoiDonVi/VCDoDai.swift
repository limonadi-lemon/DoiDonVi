//
//  VCDoDai.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/8/24.
//



import UIKit

class VCDoDai: UIViewController {
    @IBOutlet weak var lblAnsKm: UILabel!
    
   
@IBOutlet weak var lblDonVi: UILabel!
    @IBOutlet weak var lblAnsM: UILabel!
    
    @IBOutlet weak var lblAnsDm: UILabel!
    
    @IBOutlet weak var lblAnsCm: UILabel!
    @IBOutlet weak var lblAnsMm: UILabel!
    @IBOutlet weak var txt: UITextField!
    //action
    
    @IBAction func btnInputMm(_ sender: Any) {
        lblDonVi.text = "mm"
    }
    
    
    @IBAction func btnInputCm(_ sender: Any) {
        lblDonVi.text = "cm"
    }
    
    @IBAction func btnInputDm(_ sender: Any) {
        lblDonVi.text = "dm"
    }
    
    @IBAction func btnInputM(_ sender: Any) {
        lblDonVi.text = "m"
    }
    
    @IBAction func btnInputKm(_ sender: Any) {
        
        lblDonVi.text = "km"
    }
    
    // button xoá
    @IBAction func btnXoa(_ sender: Any) {
        txt.text = ""
        lblAnsKm.text = "Ki-lô-mét (km):"
        lblAnsM.text = "Mét (m):"
        lblAnsDm.text = "Đề-xi-mét (dm):"
        lblAnsCm.text = "Xăng-ti-mét (cm):"
        lblAnsMm.text = "Mi-li-mét (mm):"
    }
    
    
    // button chuyển đổi
    @IBAction func btnDoi(_ sender: Any) {
        let donViInput = lblDonVi.text
        if donViInput == "cm" {
             doiCm()
        }
        else if donViInput == "mm" {
            doiMm()
        }
        else if donViInput == "dm" {
            doiDm()
        }
        else if donViInput == "m" {
            doiM()
        }
        else if donViInput == "km"{
            doiKm()
        }
    }
    
    
    // hàm đổi các đơn vị tương ứng
    func doiCm(){
        if let cm = Double(txt.text!) {
            let km = cm / 100000
            let m = cm / 100
            let dm = cm / 10
            let mm = cm * 10
            lblAnsKm.text = "Ki-lô-mét (km): \(km) km"
            lblAnsM.text = "Mét (m): \(m) m"
            lblAnsDm.text = "Đề-xi-mét (dm): \(dm) dm"
            lblAnsCm.text = "Xăng-ti-mét (cm) : \(cm) cm"
            lblAnsMm.text = "Mi-li-mét (mm): \(mm) mm"
        }
    }
    func doiMm() {
            if let mm = Double(txt.text!) {
                let km = mm / 1000000
                let m = mm / 1000
                let dm = mm / 100
                let cm = mm / 10
                lblAnsKm.text = "Ki-lô-mét (km): \(km) km"
                lblAnsM.text = "Mét (m): \(m) m"
                lblAnsDm.text = "Đề-xi-mét (dm): \(dm) dm"
                lblAnsCm.text = "Xăng-ti-mét (cm): \(cm) cm"
                lblAnsMm.text = "Mi-li-mét (mm): \(mm) mm"
            }
        }
    func doiDm() {
            if let dm = Double(txt.text!) {
                let km = dm / 10000
                let m = dm / 10
                let cm = dm * 10
                let mm = dm * 100
                lblAnsKm.text = "Ki-lô-mét (km): \(km) km"
                lblAnsM.text = "Mét (m): \(m) m"
                lblAnsDm.text = "Đề-xi-mét (dm): \(dm) dm"
                lblAnsCm.text = "Xăng-ti-mét (cm): \(cm) cm"
                lblAnsMm.text = "Mi-li-mét (mm): \(mm) mm"
            }
        }
    func doiM() {
            if let m = Double(txt.text!) {
                let km = m / 1000
                let dm = m * 10
                let cm = m * 100
                let mm = m * 1000
                lblAnsKm.text = "Ki-lô-mét (km): \(km) km"
                lblAnsM.text = "Mét (m): \(m) m"
                lblAnsDm.text = "Đề-xi-mét (dm): \(dm) dm"
                lblAnsCm.text = "Xăng-ti-mét (cm): \(cm) cm"
                lblAnsMm.text = "Mi-li-mét (mm): \(mm) mm"
            }
        }
    func doiKm() {
            if let km = Double(txt.text!) {
                let m = km * 1000
                let dm = km * 10000
                let cm = km * 100000
                let mm = km * 1000000
                lblAnsKm.text = "Ki-lô-mét (km): \(km) km"
                lblAnsM.text = "Mét (m): \(m) m"
                lblAnsDm.text = "Đề-xi-mét (dm): \(dm) dm"
                lblAnsCm.text = "Xăng-ti-mét (cm): \(cm) cm"
                lblAnsMm.text = "Mi-li-mét (mm): \(mm) mm"
            }
        }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

