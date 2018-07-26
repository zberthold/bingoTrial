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
    
    var bRow = [GridLabel]()
    var iRow = [GridLabel]()
    var nRow = [GridLabel]()
    var gRow = [GridLabel]()
    var oRow = [GridLabel]()
    var rowsArray = [[GridLabel]]()
    var count = 1
    var uniqueNumber = false
    var realRandom = 39
    var pick = 78
    var contains = false
    var noPrinty = true
    var count2 = 0
    
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
        bRow.append(b1)
        bRow.append(b2)
        bRow.append(b3)
        bRow.append(b4)
        bRow.append(b5)
        iRow.append(i1)
        iRow.append(i2)
        iRow.append(i3)
        iRow.append(i4)
        iRow.append(i5)
        nRow.append(n1)
        nRow.append(n2)
        nRow.append(n3)
        nRow.append(n4)
        nRow.append(n5)
        gRow.append(g1)
        gRow.append(g2)
        gRow.append(g3)
        gRow.append(g4)
        gRow.append(g5)
        oRow.append(o1)
        oRow.append(o2)
        oRow.append(o3)
        oRow.append(o4)
        oRow.append(o5)
        for label in labelsArray{
            label.text = "0"
        }
        
        rowsArray = [bRow, iRow, nRow, gRow, oRow]
        chooseNumber()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTappedGridLabel(_ sender: UITapGestureRecognizer) {
        for label in labelsArray {
            if label.frame.contains(sender.location(in: backgroundView)){
                if bRow.contains(label){
                    let pick = arc4random_uniform(15)+1
                    label.text = String(pick)
                }
            }
        }
    }
    
    func chooseNumber() {
        var count3 = 0
        for row in rowsArray {
            var minRandom = 1 + (count-1)*15
            for label in row {
                pick = Int(arc4random_uniform(15)) + minRandom
                count2 = 0
                while noPrinty == true {
                    count2 = 0
                    for otherLabel in row {
                        print(count2, pick)
                        if String(pick) != otherLabel.text {
                            count2 += 1
                            
                        }
                    }
                    if count2 == 5 {
                        noPrinty = false
                    }
                    else {
                        pick = Int(arc4random_uniform(15)) + minRandom
                    }
                    count3 += 1
                }
                noPrinty = true
                label.text = String(pick)
            }
            count += 1
        }
    }
    
    func makeNumber(){
    }
    
}

