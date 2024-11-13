//
//  ViewController.swift
//  NavguideSolutionsLLp
//
//  Created by Ajay Kumar on 12/11/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var topicsTableView: UITableView!{
        didSet{
            topicsTableView.dataSource = self
            topicsTableView.delegate = self
            topicsTableView.registerXIB(name: TopicsCell.identifier)
        }
    }
    
    var arr = ["Topic-1", "Topic-2", "Topic-3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = topicsTableView.dequeueReusableCell(withIdentifier: TopicsCell.identifier, for: indexPath) as? TopicsCell else {
                return UITableViewCell()
            }
            
            let topic = arr[indexPath.row]
            cell.configure(with: topic)
            cell.imgView.image = UIImage(named: "focus")
            // Handle button tap
            cell.didTapForwardButton = { [weak self] in
                guard let self = self else { return }
                
                // Determine image range based on the selected topic
                var imageRange: (start: Int, end: Int) = (0, 0)
                switch indexPath.row {
                case 0:
                    imageRange = (1, 200)
                case 1:
                    imageRange = (201, 400)
                case 2:
                    imageRange = (401, 706)
                default:
                    break
                }
                
                // Navigate to SubTopicsViewController
                let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SubTopicsViewController") as! SubTopicsViewController
                vc.imageRange = imageRange
                vc.title = topic // Set navigation title
                self.navigationController?.pushViewController(vc, animated: true)
            }
            
            return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SubTopicsViewController")
//        navigationController?.pushViewController(vc, animated: false)
        
        
    }
    
}

