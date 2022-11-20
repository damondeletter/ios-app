//
//  VideoViewController.swift
//  NomadGym
//
//  Created by Damon De Letter on 13/11/2022.
//

import UIKit

class VideoViewController : UIViewController {
    var model = VideoModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model.getVideos()
    }
    
    
}
