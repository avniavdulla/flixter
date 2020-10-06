//
//  MovieDetailsViewController.swift
//  flixter
//
//  Created by Avni Avdulla on 10/6/20.
//  Copyright © 2020 avniavdulla. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    var movie: [String:Any]!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/original"

        // Get backdrop url
        let backdropPath = movie["backdrop_path"] as! String
        
        let backdropUrl = URL(string: baseUrl + backdropPath)
        
        backdropView.af_setImage(withURL: backdropUrl!)

        // Get poster URL
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterView.af_setImage(withURL: posterUrl!)
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
