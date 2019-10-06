//
//  legGraph.swift
//  GymRecorder
//
//  Created by Personal Account on 9/9/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit
import Charts

class legGraph: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtTextBox3: UITextField!

    @IBOutlet weak var chtChart3: LineChartView!
    
    var numbers3 : [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtTextBox3.delegate = self
    }
    
    @IBAction func btnButton3(_ sender: Any) {
        hideKeyboard()
        let input = Double(txtTextBox3.text!)
        numbers3.append(input!)
        updateGraph()
    }
    
    func updateGraph()
    {
        var lineChartEntry3 = [ChartDataEntry]()
        
        for i in 0..<numbers3.count
        {
            let value = ChartDataEntry(x: Double(i), y : numbers3[i])
            
            lineChartEntry3.append(value)
        }
        
        let line1 = LineChartDataSet(entries: lineChartEntry3, label: "Weights")
        
        line1.colors = [NSUIColor.red]
        
        let data = LineChartData()
        
        data.addDataSet(line1)
        
        chtChart3.data = data
        
        chtChart3.chartDescription?.text = "Leg Muscle Progress"
    }
    
    func hideKeyboard()
    {
        txtTextBox3.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
}
