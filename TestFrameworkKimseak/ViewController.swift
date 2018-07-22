//
//  ViewController.swift
//  TestFrameworkKimseak
//
//  Created by kimseak on 7/21/18.
//  Copyright © 2018 Kimseak. All rights reserved.
//

import UIKit
import KSLoading

class ViewController: UIViewController {

     var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(_ animated: Bool) {
////        presentModalStatusView()
//
//        let app = UIApplication.shared.delegate as! AppDelegate
//        app.presentModalStatusView()
    }
    
    @IBAction func testDisable(_ sender: Any) {
       
        self.timer = Timer.scheduledTimer(timeInterval: TimeInterval(5.0), target: self, selector: #selector(self.test), userInfo: nil, repeats: false)
         view.backgroundColor = UIColor.darkGray
        
    }
    @objc private func test(){
        view.backgroundColor = .white
       
    }
    
//    func presentModalStatusView() {
//        let modalView = KSLoadingView(frame: self.view.bounds)
//        modalView.set(message: "Please wait")
//        modalView.backgroundColor = UIColor.black.withAlphaComponent(0.3)
//        view.addSubview(modalView)
//    }
    

}

