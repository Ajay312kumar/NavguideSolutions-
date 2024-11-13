//
//  TopicsCell.swift
//  NavguideSolutionsLLp
//
//  Created by Ajay Kumar on 12/11/24.
//

import UIKit

class TopicsCell: UITableViewCell {

    
    
    @IBOutlet weak var topicLabel: UILabel!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var imageBackView: UIView!
    @IBOutlet weak var imgView: UIImageView!
    
    
    
    
    static let identifier = String(describing: TopicsCell.self)
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with imageName: String) {
        topicLabel.text = imageName
        imgView.image = UIImage(named: imageName)
    }
    
}
