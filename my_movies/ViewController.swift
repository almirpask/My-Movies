//
//  ViewController.swift
//  my_movies
//
//  Created by Almir Santos on 28/02/19.
//  Copyright © 2019 Almir Santos. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var movies:[Movie] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        var movie: Movie
        movie = Movie.init(title: "007", description: "Description 1", image: #imageLiteral(resourceName: "filme1"))
        movies.append(movie)
        
        movie = Movie.init(title: "Start Wars", description: "Description 2", image: #imageLiteral(resourceName: "filme2"))
        movies.append(movie)
        
        movie = Movie.init(title: "Impacto Mortal", description: "Description 3", image: #imageLiteral(resourceName: "filme3"))
        movies.append(movie)
        
        movie = Movie.init(title: "DeadPool", description: "Description 4", image: #imageLiteral(resourceName: "filme4"))
        movies.append(movie)
        
        movie = Movie.init(title: "O Regresso", description: "Description 5", image: #imageLiteral(resourceName: "filme5"))
        movies.append(movie)
        
        movie = Movie.init(title: "A Herdeira", description: "Description 6", image: #imageLiteral(resourceName: "filme6"))
        movies.append(movie)
        
        movie = Movie.init(title: "Caçadores de emoção", description: "Description 7", image: #imageLiteral(resourceName: "filme7"))
        movies.append(movie)
        
        movie = Movie.init(title: "O Regresso do mal", description: "Description 8", image: #imageLiteral(resourceName: "filme8"))
        movies.append(movie)
        
        movie = Movie.init(title: "Tarzan", description: "Description 9", image: #imageLiteral(resourceName: "filme9"))
        movies.append(movie)
        
        movie = Movie.init(title: "Hardcore", description: "Description 10", image: #imageLiteral(resourceName: "filme10"))
        movies.append(movie)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let movie = movies[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as! MovieCell
//        cell.textLabel?.text = movie.title
//        cell.imageView?.image = movie.image
        cell.titleLabel.text = movie.title
        cell.descriptionLabel.text = movie.description
        cell.moviewImageView.image = movie.image
        
//        cell.moviewImageView.layer.cornerRadius = 42
//        cell.moviewImageView.clipsToBounds = true
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetailsSegue" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destViewController = segue.destination as! MovieDetailsViewController
                destViewController.movie = movies[indexPath.row]
            }
        }
    }

}

