//
//  chestGraph.swift
//  GymRecorder
//
//  Created by Personal Account on 9/9/19.
//  Copyright © 2019 Arjun Tapde SideProjects. All rights reserved.
//

import UIKit
import Charts

class chestGraph: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtTextBox2: UITextField!
    @IBOutlet weak var chtChart2: LineChartView!
    
    var numbers2 : [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        txtTextBox2.delegate = self
    }
    
    @IBAction func btnButton2(_ sender: Any) {
        hideKeyboard()
        
        let input = Double(txtTextBox2.text!)
        
        numbers2.append(input!)
        updateGraph()
    }
    
    func updateGraph()
    {
        var lineChartEntry2 = [ChartDataEntry]()
        
        for i in 0..<numbers2.count
        {
            let value = ChartDataEntry(x: Double(i), y: numbers2[i])
            
            lineChartEntry2.append(value)
        }
        
        let line2 = LineChartDataSet(entries: lineChartEntry2, label: "Weights")
        
        line2.colors = [NSUIColor.red]
        
        let data = LineChartData()
        
        data.addDataSet(line2)
        
        chtChart2.data = data
        
        chtChart2.chartDescription?.text = "Chest Muscle Progress"
    }
    
    func hideKeyboard()
    {
        txtTextBox2.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
}
