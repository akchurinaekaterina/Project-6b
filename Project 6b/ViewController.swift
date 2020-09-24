//
//  ViewController.swift
//  Project 6b
//
//  Created by Ekaterina Akchurina on 24.09.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        let label2 = UILabel()
        let label3 = UILabel()
        let label4 = UILabel()
        let label5 = UILabel()
        
        var previous: UILabel?
        
        let labels = [label1, label2, label3, label4, label5]
        let colors = [UIColor.red, UIColor.cyan, UIColor.yellow, UIColor.green, UIColor.orange]
        let texts = ["THIS", "ARE", "SOME", "AWESOME", "LABELS"]
        
        
        for label in labels {
            label.translatesAutoresizingMaskIntoConstraints = false
            label.backgroundColor = colors[labels.firstIndex(of: label)!]
            label.text = texts[labels.firstIndex(of: label)!]
            label.sizeToFit()
            view.addSubview(label)
            
            //label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
            label.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2, constant: -10).isActive = true
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            previous = label
        }
        
       /* let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]
        for label in viewsDictionary.keys {
            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDictionary))
        }
        
        let metrics = ["labelHeight": 100]
        view.addConstraints( NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: viewsDictionary))
       */
        
    }


}

