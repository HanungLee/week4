//
//  PopUpViewController.swift
//  FSCalendarSwiftExample
//
//  Created by Hanung Lee on 22/07/2018.
//  Copyright © 2018 wenchao. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var canvasView: CanvasView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var onSave: ((UIImage)->())?
    var date:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        
        canvasView.clearCanvas(animated: false)
        
        textLabel.text = date
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hihi(_ sender: UIButton) {
        print("clicked1")
    }
    @IBAction func closePopUp(_ sender: Any) {
        print("clicked")
        
        onSave?((canvasView.image)!)
        
        
        dismiss(animated: true)
    }
    
}
