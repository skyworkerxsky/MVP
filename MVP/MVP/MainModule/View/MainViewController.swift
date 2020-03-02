//
//  ViewController.swift
//  MVP
//
//  Created by Алексей Макаров on 02.03.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var textlabel: UILabel!
    
    var presenter: MainViewPresenterProtocol!
    
    // MARK: - Life
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Actions
    // tap btn
    @IBAction func buttonTap(_ sender: Any) {
        self.presenter.showGreeting()
    }
    
}

extension MainViewController: MainViewProtocol {
    
    func setGreeting(greeting: String) {
        self.textlabel.text = greeting
    }
    
}
