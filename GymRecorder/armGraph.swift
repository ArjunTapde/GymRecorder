//
//  armGraph.swift
//  GymRecorder
//
//  Created by Personal Account on 9/10/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit
import Charts

class armGraph: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtTextBox4: UITextField!
    
    @IBOutlet weak var chtChart4: LineChartView!
    
    var numbers : [Double] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtTextBox4.delegate = self
    }
    
    @IBAction func btnButton4(_ sender: Any) {
        hideKeyboard()
        
        let input = Double(txtTextBox4.text!)
        
        numbers.append(input!)
        updateGraph()
    }
    
    func updateGraph()
    {
        var lineChartEntry = [ChartDataEntry]()
        
        for i in 0..<numbers.count
        {
            let value = ChartDataEntry(x: Double(i), y: numbers[i])
            lineChartEntry.append(value)
        }
        
        let line1 = LineChartDataSet(entries: lineChartEntry, label: "Weights")
        line1.colors = [NSUIColor.blue]
        
        let data = LineChartData()
        data.addDataSet(line1)
        
        chtChart4.data = data
        chtChart4.chartDescription?.text = "Arm Progress"
    }
    
    func hideKeyboard()
    {
        txtTextBox4.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
}
