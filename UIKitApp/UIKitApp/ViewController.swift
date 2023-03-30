//
//  ViewController.swift
//  UIKitApp
//
//  Created by Ariuna Banzarkhanova on 30/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var catImage: UIImage!
    
    var option: Options = .unknown
    var buttonIsActive = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.font = UIFont(name: "Montserrat-ExtraBold", size: 30)
        label.text = textFromOption(option: option)
//        let imageView = UIImageView(frame: CGRect(x: 115, y: 528, width: 145, height: 128))
//
//        if buttonIsActive {
//            imageView.alpha = 0.0 // set the initial alpha value to 0.0
//            imageView.image = UIImage(named: "catImage")
//            view.addSubview(imageView)
//            UIView.animate(withDuration: 0.5, animations: {
//                imageView.alpha = 1.0 // fade in the image view
//            })
//        } else {
//            imageView.image = nil
//        }
//        145, 128 / 115, 528
    }
    
    
    @IBAction func tapped1(_ sender: UIButton) {
        self.option = .one
        label.text = textFromOption(option: option)
    }
    
    @IBAction func tapped2(_ sender: UIButton) {
        self.option = .two
        label.text = textFromOption(option: option)
    }
    
    @IBAction func tapped3(_ sender: UIButton) {
        self.option = .three
        label.text = textFromOption(option: option)
    }
    
    @IBAction func doneTapped(_ sender: UIButton) {
        let button = doneButton
        button?.removeFromSuperview()
        
        // Create and add the image view
        let imageView = UIImageView(frame: CGRect(x: 123, y: 616, width: 145, height: 128))
        imageView.image = UIImage(named: "Cat")
        imageView.contentMode = .scaleAspectFit
        imageView.alpha = 0.0 // Set the initial alpha value to 0.0
        view.addSubview(imageView)
        
        // Animate the image view's alpha value to 1.0 over 0.5 seconds
        UIView.animate(withDuration: 0.5) {
            imageView.alpha = 1.0
        }
    }
}

