//
//  VCKhoiLuong.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/8/24.
//


import UIKit

class VCKhoiLuong: UIViewController {

    @IBOutlet weak var lblAnsDag: UILabel!
         @IBOutlet weak var lblDonVi: UILabel!
    @IBOutlet weak var txtKg: UITextField!
     
     @IBOutlet weak var lblAnsTan: UILabel!
     
     @IBOutlet weak var lblAnsTa: UILabel!

     @IBOutlet weak var lblAnsHg: UILabel!
     
     @IBOutlet weak var lblAnsGam: UILabel!
     
     @IBOutlet weak var lblAnsMg: UILabel!
     
    @IBOutlet weak var lblAnsKg: UILabel!
         
         
         @IBAction func btnInputMg(_ sender: Any) {
             lblDonVi.text = "mg"
         }
         
         @IBAction func btnInputG(_ sender: Any) {
             lblDonVi.text = "g"
         }
         
         @IBAction func btnInputDag(_ sender: Any) {
             lblDonVi.text = "dag"
         }
         
         @IBAction func btnInputHg(_ sender: Any) {
             lblDonVi.text = "hg"
         }
         
         @IBAction func btnInputKg(_ sender: Any) {
             lblDonVi.text = "kg"
         }
         
         @IBAction func btnInputTa(_ sender: Any) {
             lblDonVi.text = "tạ"
         }
         
         @IBAction func btnInputTan(_ sender: Any) {
             lblDonVi.text = "tấn"
         }
         
         @IBAction func btnXoa(_ sender: Any) {
             txtKg.text = ""
             lblAnsTan.text = "Tấn (T):"
             lblAnsTa.text = "Tạ: "
             lblAnsKg.text = "Ki-lô-gam (kg): "
             lblAnsHg.text = "Héc-tô-gam (hg): "
            lblAnsDag.text = "Đề-ca-gam (dag):"
             lblAnsGam.text = "Gam (g): "
             lblAnsMg.text = "Mi-li-gam (mg): "
         }
         @IBAction func btnDoi(_ sender: Any) {
             let donViInput = lblDonVi.text
             if donViInput == "kg" {
                  doiKg()
             }
             else if donViInput == "mg" {
                 doiMg()
             }
             else if donViInput == "dag" {
                 doiDag()
             }
             else if donViInput == "hg" {
                 doiHg()
             }
             else if donViInput == "tạ"{
                 doiTa()
             }
             else if donViInput == "tấn"{
                 doiTan()
             }
     
     
     }
         func doiKg(){
             if let kg = Double( txtKg.text!) {
                 let tan = kg * 1000
                 let ta = kg * 100
                 let hg = kg / 10
                 let dag = kg / 100
                 let g = kg / 1000
                 let mg = kg / 1000000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
     lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiMg(){
             if let mg = Double( txtKg.text!) {
                 let tan = mg / 1000000000
                 let ta = mg / 100000000
                 let kg = mg / 1000000
                 let hg = mg / 100000
                 let dag = mg / 10000
                 let g = mg / 1000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
    lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiG(){
             if let g = Double( txtKg.text!) {
                 let tan = g / 1000000
                 let ta = g / 100000
                 let kg = g / 1000
                 let hg = g / 100
                 let dag = g / 10
                 let mg = g * 1000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
    lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiDag(){
             if let dag = Double( txtKg.text!) {
                 let tan = dag / 100000
                 let ta = dag / 10000
                 let kg = dag / 100
                 let hg = dag / 10
                 let g = dag * 10
                 let mg = dag * 10000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
            lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiHg(){
             if let hg = Double( txtKg.text!) {
                 let tan = hg / 10000
                 let ta = hg / 1000
                 let kg = hg / 10
                 let dag = hg * 10
                 let g = hg * 100
                 let mg = hg * 100000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
    lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiTa() {
             if let ta = Double(txtKg.text!) {
                let tan = ta / 10
                let kg = ta * 100
                let hg = ta * 1000
                let dag = ta * 10000
                let g = ta * 100000
                let mg = ta * 100000000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
              lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         func doiTan() {
             if let tan = Double(txtKg.text!) {
                let ta = tan * 10
                let kg = tan * 1000
                let hg = tan * 10000
                let dag = tan * 100000
                let g = tan * 1000000
                let mg = tan * 1000000000
                 lblAnsTan.text = "Tấn (T): \(tan) tấn"
                 lblAnsTa.text = "Tạ: \(ta) tạ"
                 lblAnsKg.text = "Ki-lô-gam (kg): \(kg) kg"
                 lblAnsHg.text = "Héc-tô-gam (hg): \(hg) hg"
                lblAnsDag.text = "Đề-ca-gam (dag):\(dag) dag"
                 lblAnsGam.text = "Gam (g): \(g) g"
                 lblAnsMg.text = "Mi-li-gam (mg): \(mg) mg"
             }
         }
         
       
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

