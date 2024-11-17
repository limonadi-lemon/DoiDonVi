//
//  VCKhoiLuong.swift
//  DoiDonVi
//
//  Created by thuhuong2022 on 16/8/24.
//


import UIKit

class VCKhoiLuong: UIViewController {

   
         @IBOutlet weak var lblDonVi: UILabel!
    
    @IBOutlet weak var txtInput: UITextField!
    
    
         
   
    @IBOutlet weak var lblDonViDoi: UILabel!
    
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
    @IBAction func unwindToVCKhoiLuong(unwindSegue: UIStoryboardSegue)  {
        let sourceViewController = unwindSegue.source as? VCDonViKhoiLuong
        if let selectedUnit = sourceViewController?.selectedUnit{
            lblDonViDoi.text = "=\(selectedUnit)"
            
        
            
        }
    }
         @IBAction func btnXoa(_ sender: Any) {
             txtInput.text = ""
              lblDonViDoi.text = " = kg"
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
             if let kg = Double( txtInput.text!) {
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                 let tan = kg * 1000
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                 let ta = kg * 100
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                 let hg = kg / 10
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                 let dag = kg / 100
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                 let g = kg / 1000
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }
                 let mg = kg / 1000000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
                 
             }
         }
         func doiMg(){
             if let mg = Double( txtInput.text!) {
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
                 let tan = mg / 1000000000
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                 let ta = mg / 100000000
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                 let kg = mg / 1000000
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                 let hg = mg / 100000
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                 let dag = mg / 10000
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                 let g = mg / 1000
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                 
             }
         }
         func doiG(){
             if let g = Double( txtInput.text!) {
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                 let tan = g / 1000000
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                 let ta = g / 100000
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                 let kg = g / 1000
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                 let hg = g / 100
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                 let dag = g / 10
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                 let mg = g * 1000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
             }
         }
         func doiDag(){
             if let dag = Double( txtInput.text!) {
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                 let tan = dag / 100000
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                 let ta = dag / 10000
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                 let kg = dag / 100
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                 let hg = dag / 10
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                 let g = dag * 10
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                 let mg = dag * 10000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
             }
         }
         func doiHg(){
             if let hg = Double( txtInput.text!) {
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                 let tan = hg / 10000
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                 let ta = hg / 1000
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                 let kg = hg / 10
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                 let dag = hg * 10
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                 let g = hg * 100
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                 let mg = hg * 100000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
             }
         }
         func doiTa() {
             if let ta = Double(txtInput.text!) {
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                let tan = ta / 10
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                let kg = ta * 100
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                let hg = ta * 1000
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                let dag = ta * 10000
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                let g = ta * 100000
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                let mg = ta * 100000000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
             }
         }
         func doiTan() {
             if let tan = Double(txtInput.text!) {
                 if lblDonViDoi.text == "= tấn"{
                     lblDonViDoi.text = "= \(tan) tấn"
                 }
                let ta = tan * 10
                 if lblDonViDoi.text == "= tạ"{
                     lblDonViDoi.text = "= \(ta) tạ"
                 }
                let kg = tan * 1000
                 if lblDonViDoi.text == "= kg"{
                     lblDonViDoi.text = "= \(kg) kg"
                 }
                let hg = tan * 10000
                 if lblDonViDoi.text == "= hg"{
                     lblDonViDoi.text = "= \(hg) hg"
                 }
                let dag = tan * 100000
                 if lblDonViDoi.text == "= dag"{
                     lblDonViDoi.text = "= \(dag) dag"
                 }
                let g = tan * 1000000
                 if lblDonViDoi.text == "= g"{
                     lblDonViDoi.text = "= \(g) g"
                 }

                let mg = tan * 1000000000
                 if lblDonViDoi.text == "= mg"{
                     lblDonViDoi.text = "= \(mg) mg"
                 }
             }
         }
         
       
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDonVi.text = "kg"
        lblDonViDoi.text = "= g"
        txtInput.text = ""
        // Do any additional setup after loading the view.
    }


}

