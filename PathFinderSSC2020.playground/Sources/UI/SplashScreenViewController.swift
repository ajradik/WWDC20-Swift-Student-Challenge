//
//  SplashScreenViewController.swift
//  PathFinder
//
//  Copyright © 2020 Artemas J. Radik. All rights reserved.
//

import Foundation
import UIKit

class SplashScreenViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.secondarySystemBackground
        overrideUserInterfaceStyle = .dark
        view.alpha = 1
        
        //Stack View
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution  = .fillEqually
        stack.spacing = -60
        
        let stackConstraints: [NSLayoutConstraint] = [
            NSLayoutConstraint(item: stack, attribute: .height, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .height, multiplier: 0.8, constant: 0),
            view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: stack.topAnchor, constant: 60),
            NSLayoutConstraint(item: stack, attribute: .width, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .width, multiplier: 0.8, constant: 0),
            view.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: stack.centerXAnchor, constant: 0)
        ]
        stack.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stack)
        NSLayoutConstraint.activate(stackConstraints)
        
        //Labels
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome To PathFinder!"
        welcomeLabel.font = UIFont(name: "LexendDeca-Regular", size: 50)
        welcomeLabel.numberOfLines = 0
        welcomeLabel.textAlignment = .center
        welcomeLabel.textColor = UIColor.label
        welcomeLabel.adjustsFontSizeToFitWidth = true
        welcomeLabel.minimumScaleFactor = 0.5
        stack.addArrangedSubview(welcomeLabel)
        
        let subLabel = UILabel()
        subLabel.text = "PathFinder is an algorithm visualizer for the Breadth First Search, Depth First Search, and A* pathfinding algorithms.\n\nTo begin, draw walls on the grid using the wall draw tool by selecting the tool and dragging across the grid. Make sure you add a start node and an end node as well. Select a solve algorithm, hit the find path button, and watch magic happen!\n\n Thank you :)"
        subLabel.font = UIFont(name: "LexendDeca-Regular", size: 26)
        subLabel.numberOfLines = 0
        subLabel.textAlignment = .center
        subLabel.textColor = UIColor.systemGray
        subLabel.adjustsFontSizeToFitWidth = true
        subLabel.minimumScaleFactor = 0.5
        stack.addArrangedSubview(subLabel)
        
        //Dismiss Button
        let dismissButton = UIButton()
        dismissButton.setTitle("Dismiss", for: .normal)
        dismissButton.titleLabel!.font = UIFont(name: "LexendDeca-Regular", size: 20)
        dismissButton.setTitleColor(UIColor.label, for: .normal)
        dismissButton.backgroundColor = UIColor.link
        dismissButton.cornerRadius = 16
        dismissButton.isUserInteractionEnabled = true
        dismissButton.addTarget(self, action: #selector(continueButton(sender:)), for: .touchUpInside)
        
        let dismissButtonConstraints: [NSLayoutConstraint] = [
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: dismissButton.bottomAnchor, constant: 20),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: dismissButton.trailingAnchor, constant: 20),
            view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: dismissButton.leadingAnchor, constant: -20),
            dismissButton.heightAnchor.constraint(equalToConstant: 60)
        ]
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(dismissButton)
        NSLayoutConstraint.activate(dismissButtonConstraints)
    }
    
    @objc func continueButton(sender: UIButton!) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ViewController.initialLock = false
    }
}
