//
//  VCDoDai.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/8/24.
//



import UIKit

class VCDoDai: UIViewController {
        
    
    @IBOutlet weak var lblDonViDoi: UILabel!
    @IBOutlet weak var lblDonVi: UILabel!
    
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
    
    @IBAction func btnInputFt(_ sender: Any) {
        lblDonVi.text = "ft"
    }
    
    @IBAction func btnInputInch(_ sender: Any) {
        lblDonVi.text = "inch"
    }
    
    @IBAction func unwindToVCDoDai(unwindSegue: UIStoryboardSegue)  {
        let sourceViewController = unwindSegue.source as? VCDonViDoDai
        if let selectedUnit = sourceViewController?.selectedUnit{
            lblDonViDoi.text = "= \(selectedUnit)"
            
        
            
        }
    }
    // button xoá
    @IBAction func btnXoa(_ sender: Any) {
        txt.text = ""
        if let donViKetQua = lblDonViDoi.text {
            let donVi = donViKetQua.filter { $0.isLetter }
            lblDonViDoi.text = "= \(donVi)"
        }
        
    }
    
    @IBAction func inputTxt(_ sender: Any) {
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
        else if donViInput == "ft"{
            doiFt()
        }
        else if donViInput == "inch"{
            doiInch()
        }
    }
    
    
    // hàm đổi các đơn vị tương ứng
    func doiCm(){
        if let cm = Double(txt.text!) {
            let km = cm / 100000
            if lblDonViDoi.text == "= km"{
                lblDonViDoi.text = "= \(km) km"
            }
            let m = cm / 100
            if lblDonViDoi.text == "= m"{
                lblDonViDoi.text = "= \(m) m"
            }
            
            let dm = cm / 10
            if lblDonViDoi.text == "= dm"{
                lblDonViDoi.text = "= \(dm) dm"
            }
            let mm = cm * 10
            if lblDonViDoi.text == "= mm"{
                lblDonViDoi.text = "= \(mm) mm"
            }
            if lblDonViDoi.text == "= cm"{
                lblDonViDoi.text = "= \(cm) cm"
            }
          
            
        }
    }
    func doiMm() {
            if let mm = Double(txt.text!) {
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }
                
                let km = mm / 1000000
                if lblDonViDoi.text == "= km"{
                    lblDonViDoi.text = "= \(km) km"
                }
                let m = mm / 1000
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let dm = mm / 100
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let cm = mm / 10
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                
            }
        }
    func doiDm() {
            if let dm = Double(txt.text!) {
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let km = dm / 10000
                if lblDonViDoi.text == "= km"{
                    lblDonViDoi.text = "= \(km) km"
                }
                let m = dm / 10
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let cm = dm * 10
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                let mm = dm * 100
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }

                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }

                
            }
        }
    func doiM() {
            if let m = Double(txt.text!) {
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let km = m / 1000
                if lblDonViDoi.text == "= km"{
                    lblDonViDoi.text = "= \(km) km"
                }
                let dm = m * 10
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let cm = m * 100
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                let mm = m * 1000
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }
                


                
            }
        }
    func doiKm() {
            if let km = Double(txt.text!) {
                if (lblDonViDoi.text == "= km") && (km != 0){
                    lblDonViDoi.text = "= \(km) km"
                }
                let m = km * 1000
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let dm = km * 10000
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let cm = km * 100000
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                let mm = km * 1000000
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }

               
            }
        }
    func doiInch() {
            if let inch = Double(txt.text!) {
                if (lblDonViDoi.text == "= inch") && (inch != 0){
                    lblDonViDoi.text = "= \(inch) inch"
                }
                let rawm = inch * 0.0254
                let m = String(format: "%.3f", rawm)
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let rawdm = inch * 0.254
                let dm = String(format: "%.3f", rawdm)
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let rawcm = inch * 2.54
                let cm = String(format: "%.3f", rawcm)
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                let rawmm = inch * 25.4
                let mm = String(format: "%.3f", rawmm)
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }
                if lblDonViDoi.text == "= km"{
                    lblDonViDoi.text = "Số quá lớn"
                }
               
            }
        }
    func doiFt() {
            if let ft = Double(txt.text!) {
                if (lblDonViDoi.text == "= ft") && (ft != 0){
                    lblDonViDoi.text = "= \(ft) ft"
                }
                let rawm = ft * 0.3048
                let m = String(format: "%.3f", rawm)
                if lblDonViDoi.text == "= m"{
                    lblDonViDoi.text = "= \(m) m"
                }
                let rawdm = ft * 3.048
                let dm = String(format: "%.3f", rawdm)
                if lblDonViDoi.text == "= dm"{
                    lblDonViDoi.text = "= \(dm) dm"
                }
                let rawcm = ft * 30.48
                let cm = String(format: "%.3f", rawcm)
                if lblDonViDoi.text == "= cm"{
                    lblDonViDoi.text = "= \(cm) cm"
                }
                let rawmm = ft * 304.8
                let mm = String(format: "%.3f", rawmm)
                if lblDonViDoi.text == "= mm"{
                    lblDonViDoi.text = "= \(mm) mm"
                }
                let rawkm = ft * 0.0003048000
                let km = String(format: "%.3f", rawkm)
                if lblDonViDoi.text == "= km"{
                    lblDonViDoi.text = "= Số quá nhỏ"
                }


               
            }
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        lblDonVi.text = "cm"
        lblDonViDoi.text = "= m"
        txt.text = ""
        
        // Do any additional setup after loading the view.
    }


}

