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
        
        cell.topicLabel.text = arr[indexPath.row]
//        cell.backgroundColor  = .blue
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SubTopicsViewController")
        navigationController?.pushViewController(vc, animated: false)
        
        
    }
    
}
