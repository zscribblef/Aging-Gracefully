import UIKit

class AgingGracefullyViewController: UIViewController {

    // MARK: - Properties
    var agingGracefullyViewModel: AgingGracefullyViewModel?
    var alertController: UIAlertController?
    let agingGracefullyTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .black
        tableView.separatorStyle = .none
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
        return tableView
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupNotifications()
        fetchAgingGracefullyData()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        agingGracefullyTableView.frame = view.bounds
    }
    
    // MARK: - Setup
    func setupUI() {
        // Setup Navigation Controller
        navigationController?.navigationBar.isTranslucent = false
        navigationItem.title = "Aging Gracefully"
        navigationController?.navigationBar.barTintColor = .black
        
        // Add tableView
        view.addSubview(agingGracefullyTableView)
        
        // Setup tableView Delegates
        agingGracefullyTableView.dataSource = self
        agingGracefullyTableView.delegate = self
    }
    
    func setupNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleAgingGracefullyDataFetched), name: .agingGracefullyDataFetched, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(handleAgingGracefullyDataFetchingError), name: .agingGracefullyDataFetchingError, object: nil)
    }
    
    // MARK: - Networking
    func fetchAgingGracefullyData() {
        agingGracefullyViewModel?.fetchAgingGracefullyData()
    }
    
    // MARK: - Actions
    @objc func handleAgingGracefullyDataFetched() {
        agingGracefullyTableView.reloadData()
    }
    
    @objc func handleAgingGracefullyDataFetchingError(notification: Notification) {
        guard let errorMessage = notification.userInfo?["errorMessage"] as? String else { return }

        alertController = UIAlertController(title: "Error", message: errorMessage, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { (_) in
            self.alertController?.dismiss(animated: true, completion: nil)
        }

        alertController?.addAction(action)
        present(alertController!, animated: true, completion: nil)
    }

}

// MARK: - UITableView Datasource
extension AgingGracefullyViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return agingGracefullyViewModel?.numberOfItems() ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let agingGracefullyItem = agingGracefullyViewModel?.agingGracefullyItem(at: indexPath)
        
        cell.textLabel?.text = agingGracefullyItem?.name
        cell.backgroundColor = .black
        cell.textLabel?.textColor = .white
        cell.selectionStyle = .none
        
        return cell
    }
    
}

// MARK: - UITableView Delegate
extension AgingGracefullyViewController: UITableViewDelegate {
    
}