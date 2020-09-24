//
//  ViewController.swift
//  swiftkod
//
//  Created by Bill Martensson on 2020-09-24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var addTextfield: UITextField!
    
    var thesum : Int? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        paintLayout()
        
    }

    @IBAction func addToSum(_ sender: Any) {
        
        guard let numberToAdd = Int(addTextfield.text!) else {
            print("DÅLIG INMATNING")
            return
        }
        
        if(thesum == nil)
        {
            thesum = 0
        }
        
        thesum = thesum! + numberToAdd
        paintLayout()
        
        /*
        if let addNumber = Int(addTextfield.text!) {
            if(thesum == nil)
            {
                thesum = 0
            }
            
            
            thesum = thesum! + addNumber
            paintLayout()

        } else {
            print("FELAKTIG INMATNING")
        }
        
        */
        
        addTextfield.text = ""





        /*
        let numberToAdd = Int(addTextfield.text!)
        
        if(numberToAdd == nil)
        {
            print("FELAKTIG INMATNING")
            return
        }

        thesum = thesum! + numberToAdd!
        */
        
        
    }
    
    @IBAction func resetSum(_ sender: Any) {
        thesum = nil
        
        paintLayout()
    }
    
    func paintLayout()
    {
        if(thesum == nil)
        {
            sumLabel.text = "Mata in nummer"
        } else {
            sumLabel.text = String(thesum!)
        }
    }
    
}

