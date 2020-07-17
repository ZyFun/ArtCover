//
//  DetailVC.swift
//  ArtCover
//
//  Created by Дмитрий Данилин on 17.07.2020.
//  Copyright © 2020 Дмитрий Данилин. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var trackName: UILabel!
    
    var trackTitle = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        image.image = UIImage(named: trackTitle)
        trackName.text = trackTitle
        trackName.numberOfLines = 0
    }
}
