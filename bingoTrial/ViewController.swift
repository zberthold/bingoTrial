//
//  ViewController.swift
//  bingoTrial
//
//  Created by Zoe Berthold on 7/24/18.
//  Copyright © 2018 Zoe Berthold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var b1: GridLabel!
    @IBOutlet weak var i1: GridLabel!
    @IBOutlet weak var n1: GridLabel!
    @IBOutlet weak var g1: GridLabel!
    @IBOutlet weak var o1: GridLabel!
    @IBOutlet weak var b2: GridLabel!
    @IBOutlet weak var i2: GridLabel!
    @IBOutlet weak var n2: GridLabel!
    @IBOutlet weak var g2: GridLabel!
    @IBOutlet weak var o2: GridLabel!
    @IBOutlet weak var b3: GridLabel!
    @IBOutlet weak var i3: GridLabel!
    @IBOutlet weak var n3: GridLabel!
    @IBOutlet weak var g3: GridLabel!
    @IBOutlet weak var o3: GridLabel!
    @IBOutlet weak var b4: GridLabel!
    @IBOutlet weak var i4: GridLabel!
    @IBOutlet weak var n4: GridLabel!
    @IBOutlet weak var g4: GridLabel!
    @IBOutlet weak var o4: GridLabel!
    @IBOutlet weak var b5: GridLabel!
    @IBOutlet weak var i5: GridLabel!
    @IBOutlet weak var n5: GridLabel!
    @IBOutlet weak var g5: GridLabel!
    @IBOutlet weak var o5: GridLabel!
    
    var labelsArray = [GridLabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsArray.append(b1)
        labelsArray.append(i1)
        labelsArray.append(n1)
        labelsArray.append(g1)
        labelsArray.append(o1)
        labelsArray.append(b2)
        labelsArray.append(i2)
        labelsArray.append(n2)
        labelsArray.append(g2)
        labelsArray.append(o2)
        labelsArray.append(b3)
        labelsArray.append(i3)
        labelsArray.append(n3)
        labelsArray.append(g3)
        labelsArray.append(o3)
        labelsArray.append(b4)
        labelsArray.append(i4)
        labelsArray.append(n4)
        labelsArray.append(g4)
        labelsArray.append(o4)
        labelsArray.append(b5)
        labelsArray.append(i5)
        labelsArray.append(n5)
        labelsArray.append(g5)
        labelsArray.append(o5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTappedGridLabel(_ sender: UITapGestureRecognizer) {
        for label in labelsArray {
            if label.frame.contains(sender.location(in: backgroundView)){
                label.text = "Z"
            }
        }
    }
    
}

