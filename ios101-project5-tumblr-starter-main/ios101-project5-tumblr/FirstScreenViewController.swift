//
//  FirstScreenViewController.swift
//  ios101-project5-tumblr
//
//  Created by Darian Lee on 10/15/23.
//

import UIKit

class FirstScreenViewController: UIViewController {
    var postType: Int?
    @IBOutlet weak var owlButton: UIImageView!
    @IBOutlet weak var personButton: UIButton!
    
    @IBAction func didPressPerson(_ sender: UIButton) {
        postType = 1
        performSegue(withIdentifier: "showTumblr", sender: self)
    }
    @IBAction func didPressOwl(_ sender: UIButton) {
        postType = 2
        performSegue(withIdentifier: "showTumblr", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showTumblr" {
            if let destinationVC = segue.destination as? ViewController {
                destinationVC.postType = postType!
                
                
                /*
                 // MARK: - Navigation
                 
                 // In a storyboard-based application, you will often want to do a little preparation before navigation
                 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                 // Get the new view controller using segue.destination.
                 // Pass the selected object to the new view controller.
                 }
                 */
                
            }
        }
    }
}
