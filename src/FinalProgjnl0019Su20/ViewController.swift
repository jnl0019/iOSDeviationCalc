//
//  ViewController.swift
//
// MIT SIGMA library imported (included in files for submission)
// jnl0019

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PopDevResult: UITextField! // population deviation
    @IBOutlet weak var SamDevResult: UITextField! // sample deviation
    @IBOutlet weak var PopVarResult: UITextField! // population variance
    @IBOutlet weak var SamVarResult: UITextField! // sample variance
    

    @IBOutlet weak var inputEntered: UITextField!
    
    var inputArr: [Double] = []
    
    @IBAction func buttonAddToList(_ sender: UIButton) {

        if let item = Double(inputEntered.text!) {
            inputArr.append(item)
        }
        inputEntered.text = nil

    }
    
    @IBAction func calcPopDeviation(sender: UIButton) {
        PopDevResult.text = String(Sigma.standardDeviationPopulation(inputArr)!)
        PopVarResult.text = String(Sigma.variancePopulation(inputArr)!)
    }
    
    @IBAction func calcSamDeviation(sender: UIButton) {
        SamDevResult.text = String(Sigma.standardDeviationSample(inputArr)!)
        SamVarResult.text = String(Sigma.varianceSample(inputArr)!)
    }
    
}

