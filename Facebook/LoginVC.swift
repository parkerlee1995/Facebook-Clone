//
//  LoginVC.swift
//  Facebook
//
//  Created by Parker Lee on 10/30/18.
//  Copyright © 2018 Parker Lee. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var textFieldsView: UIView!
    
    // executed when scene is loaded
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    // executed after aligning objects
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        configureTextFieldsView()
        
    }
    
    //this func stores code which configures the TextField's view
    func configureTextFieldsView() {
        
        // declaring constants to later be used to assisn to 'object'
        let width = CGFloat(2)
        let color = UIColor.groupTableViewBackground.cgColor
        
        // create layer to be border of view
        let border = CALayer()
        border.borderColor = color
        border.frame = CGRect(x: 0, y: 0, width: textFieldsView.frame.width, height: textFieldsView.frame.height)
        border.borderWidth = width
        
        // create layer to be line in middle of the view
        let line = CALayer()
        line.borderWidth = width
        line.borderColor = color
        line.frame = CGRect(x: 0, y: textFieldsView.frame.height / 2 - width, width: textFieldsView.frame.width, height: width)
        
        // add layers to the view
        textFieldsView.layer.addSublayer(border)
        textFieldsView.layer.addSublayer(line)
        
        // round corners of the border of the view
        textFieldsView.layer.cornerRadius = 5
        textFieldsView.layer.masksToBounds = true
        
    }
    
}
