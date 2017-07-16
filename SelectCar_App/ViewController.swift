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
    var carModelImage : [String] = []
    
    // Picker Model Name
    let tesla = ["Model-S", "Model-X"]
    let lamborghini = ["aventador", "veneno", "huracan"]
    let porsche = ["911", "boxter"]
    
    // Picker Model Image
    let teslaImageNames = ["tesla-model-s.jpg", "tesla-model-x.jpg"]
    let lamborghiniImageName = ["lamborghini-aventador.jps", "lamborghini-veneno.jpg", "lamborghini-huracan.jpg"]
    let porscheImageName = ["porsche-911.jpg", "porsche-boxter.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        carModel = tesla
        carModelImage = tesla
        
        imageView.layer.cornerRadius = 50.0
        imageView.layer.masksToBounds = true
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
            carModelImage = teslaImageNames
            
        }else if component == 0 && row == 1 {
            carModel = lamborghini
            carModelImage = lamborghiniImageName
            
        }else if component == 0 && row == 2 {
            carModel = porsche
            carModelImage = porscheImageName
        }
        
        pickerView.reloadAllComponents()
        
        imageView.image = UIImage(named: carModelImage[pickerView.selectedRow(inComponent: 1 )])
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

