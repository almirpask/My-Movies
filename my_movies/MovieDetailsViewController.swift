//
//  MovieDetailsViewController.swift
//  my_movies
//
//  Created by Almir Santos on 03/03/19.
//  Copyright © 2019 Almir Santos. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie: Movie!
    
    @IBOutlet weak var movieDetailsImageView: UIImageView!
    @IBOutlet weak var movieDetailsTitleLabel: UILabel!
    @IBOutlet weak var movieDetailsDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDetailsImageView.image = movie.image
        movieDetailsTitleLabel.text = movie.title
        movieDetailsDescriptionLabel.text = movie.description
    }
}
