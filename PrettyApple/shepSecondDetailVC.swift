//
//  ProductDetailViewController.swift
//
//  Created by Duc Tran on 3/30/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class shepSecondDetailVC: UIViewController {
    // Model
    var product: ShepSingleXYZ?

    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productImageView.image = product?.image
    }

}
