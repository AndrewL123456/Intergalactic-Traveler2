//
//  StarViewController.swift
//  Intergalactic Traveler
//
//  Created by Lujan, Andrew - Student on 3/29/22.
//

import UIKit

class StarViewController: UIViewController {
    
    @IBOutlet weak var starImageView: UIImageView!
    
    var isGoingtoRedStarPassed: Bool!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        let red1 = UIImage(named: "red star 1")
//        let red2 = UIImage(named: "red star 2")
//        let red3 = UIImage(named: "red star 3")
//        let blue1 = UIImage(named: "blue star 1")
//        let blue2 = UIImage(named: "blue star 2")
//        let blue3 = UIImage(named: "blue star 3")
        
        let redArray = [UIImage (named: "red star 1"), UIImage (named: "red star 2"), UIImage (named: "red star 3")]
        let blueArray = [UIImage (named: "blue star 1"), UIImage (named: "blue star 2"), UIImage (named: "blue star 3")]
        
        let randomNumber = Int(arc4random_uniform(3))
        
        
        if isGoingtoRedStarPassed == true {
            starImageView.image = redArray[randomNumber]
        } else {
            starImageView.image = blueArray[randomNumber]
        }
    }
    
    @IBAction func returnButton(_ sender: Any) {
        self.performSegue(withIdentifier: "unwindToFirstView", sender: nil)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
