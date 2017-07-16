//
//  ViewController.swift
//  SelectCar_App
//
//  Created by Lena Lee on 2017. 7. 9..
//  Copyright © 2017년 Lena Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet var imageView: UIImageView!
    
    let carCompanyName = ["teala", "Lamborghini", "Porsche"]
    var carModel : [String] = []
    
    let tesla = ["Model-S", "Model-X"]
    
    let lamborghini = ["aventador", "veneno", "huracan"]
    
    let porsche = ["911", "boxter"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //UIpicker datasourcs
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carCompanyName.count
        } else {
            return carModel.count
        }
    }
    
    //uipicker delegate 
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carCompanyName[row]
        }else{
            return carModel[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 && row == 0 {
            carModel = tesla
        }else if component == 0 && row == 1 {
            carModel = lamborghini
            
        }else if component == 0 && row == 2 {
            carModel = porsche
            
        }
        
        pickerView.reloadAllComponents()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

