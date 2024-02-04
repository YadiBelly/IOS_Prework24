//
//  IOS_Prework24
//
//  Created by Yadisa Belliard on 1/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
   
    @IBOutlet weak var schoolNameTextField: UITextField!
    
     @IBOutlet weak var titleNameTextField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after kiading the view.
        

    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        applyGradient()
    }
    func applyGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds

        // Generate two random colors for the gradient
        let color1 = generateRandomColor()
        let color2 = generateRandomColor()

        gradientLayer.colors = [color1.cgColor, color2.cgColor]

        // Optionally, adjust the gradient direction
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)

        // Remove previous gradients before adding a new one
        view.layer.sublayers?.filter { $0 is CAGradientLayer }.forEach { $0.removeFromSuperlayer() }

        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    func generateRandomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 1) // Alpha set to 1 for solid colors
    }
    
//
//    @IBAction func changeBackgroundColor(_ sender: UIButton) {
//        let randomColor = changeColor()
//        view.backgroundColor = randomColor
//    }
//    
//    func changeColor() -> UIColor{
//        let red = CGFloat.random(in: 0...1)
//        let green = CGFloat.random(in: 0...1)
//        let blue = CGFloat.random(in: 0...1)
//        
//        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
//    }
//    
//  
}
