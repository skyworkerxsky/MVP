//
//  DetailViewController.swift
//  MVP
//
//  Created by Алексей Макаров on 03.03.2020.
//  Copyright © 2020 Алексей Макаров. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var presenter: DetailViewPresenterProtocol!

    // MARK: - Outlets
    
    @IBOutlet weak var detailLabel: UILabel!
    
    // MARK: - Life
    
    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.setComment()
    }
    
    @IBAction func tapAction(_ sender: Any) {
        presenter.tap()
    }
    

}

extension DetailViewController: DetailViewProtocol {
    
    func setComment(comment: Comment?) {
        detailLabel.text = comment?.body
    }
    
}
