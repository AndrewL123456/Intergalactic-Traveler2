//
//  ViewController.swift
//  Intergalactic Traveler
//
//  Created by Lujan, Andrew - Student on 3/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    var isGoingToRedStar: Bool!
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redStarButton(_ sender: Any) {
        isGoingToRedStar = true
        performSegue(withIdentifier: "toStarViewController", sender: nil)
    }
    
    @IBAction func blueStarButton(_ sender: Any) {
        isGoingToRedStar = false
        performSegue(withIdentifier: "toStarViewController", sender: nil)
    }
    
    

  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! StarViewController
        nvc.isGoingtoRedStarPassed = isGoingToRedStar
    }

}

