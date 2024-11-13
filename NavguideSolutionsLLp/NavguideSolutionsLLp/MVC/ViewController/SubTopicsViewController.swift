//
//  SubTopicsViewController.swift
//  NavguideSolutionsLLp
//
//  Created by Ajay Kumar on 13/11/24.
//

import UIKit

class SubTopicsViewController: UIViewController {
    
    
    @IBOutlet weak var subTopicsTableView: UITableView!{
        didSet{
            subTopicsTableView.dataSource = self
            subTopicsTableView.delegate = self
            subTopicsTableView.registerXIB(name: TopicsCell.identifier)
            
        }
    }
    
    
    private var subTopics: [SubTopicsModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageNames = SubTopicsModel.generateImageNames(count: 200)
                subTopics = imageNames.map { SubTopicsModel(imageName: $0) }
    }
  
}

extension SubTopicsViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return subTopics.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TopicsCell.identifier, for: indexPath) as? TopicsCell else {
                return UITableViewCell()
            }
            
            // Configure cell with model data
            let subTopic = subTopics[indexPath.row]
            cell.configure(with: subTopic.imageName)
            return cell
        }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: <#T##String#>)
//        
//        
//    }
    
    
}
