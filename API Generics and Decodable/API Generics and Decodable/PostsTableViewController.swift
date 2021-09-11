

import UIKit
import Alamofire

class PostsTableViewController: UITableViewController {
    
    // https://jsonplaceholder.typicode.com/comments
  var posts = [PostModel]()
var comments  = [CommentModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        PostsApiServices.shared.getData(url: "https://jsonplaceholder.typicode.com/posts") { (posts : [PostModel]?, error) in
            
            guard let posts  =  posts else {return}
            self.posts = posts
            
                self.tableView.reloadData()
            
            
        }
      

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = posts[indexPath.row].body

        return cell
    }
    


}
