//
//  ViewController.swift
//  SwitchColorHW
//
//  Created by Антон Паршин on 17.09.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var saveBtn: UIButton!
    
   
    
    /* lazy var gradient: CAGradientLayer = {
    let gradient = CAGradientLayer()
        gradient.type = .axial
        gradient.colors = [
            UIColor(named: "Color1"),UIColor(named: "Color2"),UIColor.purple.cgColor
        ]
        gradient.locations = [0, 0.25, 1]
    return gradient
    }()*/
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchDidChange(mySwitch)
         
        
        
       /* gradient.frame = view.bounds
            view.layer.addSublayer(gradient)*/
        
        saveBtn.layer.cornerRadius = 10
        
    }

    @IBAction func switchDidChange(_ sender: UISwitch) {
       
        
        
        if sender.isOn{
            view.backgroundColor = UIColor(named: "Color1")
            
            imageView.image = UIImage(named: "light")
        }else{
            view.backgroundColor = UIColor(named: "Color2")
            
            imageView.image = UIImage(named: "dark")
            
            UserDefaults.standard.bool(forKey: "SwitchOn")
            UserDefaults.standard.synchronize()
            
        }
        
        
        
    }
    
    @IBAction func saveBtnPressed(_ sender: UIButton) {
        
        
        
    }
    
    
}

