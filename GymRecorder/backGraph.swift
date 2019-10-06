//
//  backGraph.swift
//  GymRecorder
//
//  Created by Personal Account on 9/9/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit
import Charts

class backGraph: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtTextBox: UITextField!
    @IBOutlet weak var chtChart: LineChartView!
    
    var numbers : [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        txtTextBox.delegate = self
    }
    
    @IBAction func btnButton(_ sender: Any) {
        hideKeyboard()
        let input = Double(txtTextBox.text!)
        
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
        
        chtChart.data = data
        
        chtChart.chartDescription?.text = "Back Muscle Progress"
    }

    func hideKeyboard()
    {
        txtTextBox.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
    
}
