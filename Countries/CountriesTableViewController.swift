//
//  CountriesTableViewController.swift
//  Countries
//
//  Created by Sayed Ameer Almosawi on 09/10/2023.
//

import UIKit

class CountriesTableViewController: UITableViewController {
    
    struct List {
        var imageUrl: String
        var name: String
    }
    
    let countries = [
        List(imageUrl: "at", name: "Austria"),
        List(imageUrl: "be", name: "Belgium"),
        List(imageUrl: "de", name: "Germany"),
        List(imageUrl: "el", name: "Greece"),
        List(imageUrl: "fr", name: "France"),
    ]
    
    
    
    
    let birds = [
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/sparrow.jpg", name: "Sparrows"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/hummingbird.jpg", name: "Hummingbirds"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/pigeon.jpg", name: "Pigeons"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/dove.jpg", name: "Doves"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/bluebird.jpg", name: "Bluebirds"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/cardinal.jpg", name: "Northern Cardinal"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/American-robin.jpg", name: "American Robin"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/American-goldfinch.jpg", name: "American Goldfinch"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/warbler.jpg", name: "Warbler birds"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/heron.jpg", name: "Herons"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/geese-1.jpg", name: "Geese and Ducks"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/woodpecker.jpg", name: "Woodpeckers"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/swallow.jpg", name: "Swallows"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/swift.jpg", name: "Swifts"),
        List(imageUrl:  "https://www.leafyplace.com/wp-content/uploads/2019/10/bald-eagle.jpg", name: "Eagles"),
    ]
    
    let cars = [
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/2019_Toyota_Avalon_XSE_in_Ruby_Flare_Pearl%2C_Front_Right%2C_09-05-2022.jpg/360px-2019_Toyota_Avalon_XSE_in_Ruby_Flare_Pearl%2C_Front_Right%2C_09-05-2022.jpg", name: "Avalon"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/2022_Toyota_Belta_Smart_%28Egypt%29_front_view_01.png/360px-2022_Toyota_Belta_Smart_%28Egypt%29_front_view_01.png", name: "Belta"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/FAW-Toyota_BZ3_For_Guangzhou_International_Auto_Show_2022_%28cropped%29.jpg/360px-FAW-Toyota_BZ3_For_Guangzhou_International_Auto_Show_2022_%28cropped%29.jpg", name: "bZ3"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3e/2022_Toyota_Camry_SE_Standard_Package_in_Celestial_Silver_Metallic%2C_Front_Left%2C_08-06-2022.jpg/360px-2022_Toyota_Camry_SE_Standard_Package_in_Celestial_Silver_Metallic%2C_Front_Left%2C_08-06-2022.jpg", name: "Camry"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Toyota_Century_3rd_generation_2017_Tokyo_Motor_Show_front_1_%28cropped%29.jpg/360px-Toyota_Century_3rd_generation_2017_Tokyo_Motor_Show_front_1_%28cropped%29.jpg", name: "Century"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Toyota_Corolla_Limousine_Monrepos_2019_IMG_1908.jpg/360px-Toyota_Corolla_Limousine_Monrepos_2019_IMG_1908.jpg", name: "Corolla"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/2021_FAW-Toyota_Allion_2.0_%28front%29.jpg/360px-2021_FAW-Toyota_Allion_2.0_%28front%29.jpg", name: "Allion"),
        
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/TOYOTA_LEVIN_GT_China_%282%29.jpg/360px-TOYOTA_LEVIN_GT_China_%282%29.jpg", name: "Levin GT"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/2023_Toyota_Crown_XLE%2C_front_4.7.23.jpg/360px-2023_Toyota_Crown_XLE%2C_front_4.7.23.jpg", name: "Crown"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Toyota_Mirai_%28JPD20%29_IMG_5303.jpg/360px-Toyota_Mirai_%28JPD20%29_IMG_5303.jpg", name: "Mirai"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/Toyota_Prius_%28XW60%29_Plug-in_Hybrid_Automesse_Ludwigsburg_2023_1X7A0004.jpg/360px-Toyota_Prius_%28XW60%29_Plug-in_Hybrid_Automesse_Ludwigsburg_2023_1X7A0004.jpg", name: "Prius"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Toyota_Yaris_1.5_E_2023.jpg/360px-Toyota_Yaris_1.5_E_2023.jpg", name: "Yaris"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/2023_Toyota_Agya_GR_Sport_%28Indonesia%29_front_view.jpg/360px-2023_Toyota_Agya_GR_Sport_%28Indonesia%29_front_view.jpg", name: "Wigo"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Toyota_Aqua_X.jpg/360px-Toyota_Aqua_X.jpg", name: "Aqua"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Toyota_Corolla_Hybrid_%28E210%29_IMG_4338.jpg/360px-Toyota_Corolla_Hybrid_%28E210%29_IMG_4338.jpg", name: "Corolla"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/2023_Toyota_GR_Corolla%2C_front_NYIAS_2022.jpg/360px-2023_Toyota_GR_Corolla%2C_front_NYIAS_2022.jpg", name: "GR Corolla"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Toyota_Glanza_2022_Facelift.jpg/360px-Toyota_Glanza_2022_Facelift.jpg", name: "Starlet"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Toyota_Passo_MODA%22G_package%222WD_%28DBA-M700A-GBSE%29_front_%28cropped%29.jpg/360px-Toyota_Passo_MODA%22G_package%222WD_%28DBA-M700A-GBSE%29_front_%28cropped%29.jpg", name: "Passo"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/2024_Toyota_C-HR_HEV_GR_Sport_%28Europe%29_front_view_01.png/360px-2024_Toyota_C-HR_HEV_GR_Sport_%28Europe%29_front_view_01.png", name: "C-HR"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/Toyota_Corolla_Cross_Hybrid_1X7A6357.jpg/360px-Toyota_Corolla_Cross_Hybrid_1X7A6357.jpg", name: "Corolla Cross"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/2024_Toyota_Grand_Highlander_XLE_AWD_in_Blueprint%2C_Front_Right%2C_09-10-2023.jpg/360px-2024_Toyota_Grand_Highlander_XLE_AWD_in_Blueprint%2C_Front_Right%2C_09-10-2023.jpg", name: "Grand Highlander"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/da/2023_Toyota_Sequoia_Platinum%2C_front_3.10.23.jpg/360px-2023_Toyota_Sequoia_Platinum%2C_front_3.10.23.jpg", name: "Sequoia"),
        List(imageUrl: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/2017_Toyota_HiAce_%28TRH201R%29_LWB_van_%282018-10-01%29_01.jpg/360px-2017_Toyota_HiAce_%28TRH201R%29_LWB_van_%282018-10-01%29_01.jpg", name: "HiAce"),
        
        
    ]
    
    private var selectedList = [List]()
    private var filteredCountries = [List]()
    
    
    let imageNames = ["birds_background", "earth_background", "toyota_background"]
    var currentIndex: Int = 0
    var isHorizontalScrolling = false
    var lastContentOffsetX: CGFloat = 0
    
    
    var headerScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Create a table header view
        let tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 200))
        
        // Create a scroll view for the image carousel
        headerScrollView = UIScrollView(frame: tableHeaderView.bounds)
        headerScrollView.isPagingEnabled = true
        headerScrollView.contentSize = CGSize(width: headerScrollView.frame.width * CGFloat(imageNames.count), height: headerScrollView.frame.height)
        
        for (index, imageName) in imageNames.enumerated() {
            // Create image views for each image in the carousel
            let imageView = UIImageView(frame: CGRect(x: headerScrollView.frame.width * CGFloat(index), y: 0, width: headerScrollView.frame.width, height: headerScrollView.frame.height))
            imageView.image = UIImage(named: imageName)
            imageView.contentMode = .scaleAspectFit
            headerScrollView.addSubview(imageView)
        }
        
        tableHeaderView.addSubview(headerScrollView)
        tableView.tableHeaderView = tableHeaderView
        headerScrollView.delegate = self // Set the scroll view's delegate to this view controller
        
        
        selectedList = birds
        filteredCountries = selectedList
        
        
        
    }
    
    
    // MARK: - UIScrollViewDelegate
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView ==  headerScrollView{
            let currentIndex = Int(scrollView.contentOffset.x / scrollView.frame.width)
            if self.currentIndex != currentIndex {
                self.currentIndex = currentIndex
                print("Current Index: \(currentIndex)")
                
                switch currentIndex {
                case 0:
                    selectedList = birds
                    filteredCountries = selectedList
                    tableView.reloadData()
                    
                case 1:
                    selectedList = countries
                    filteredCountries = selectedList
                    tableView.reloadData()
                case 2:
                    selectedList = cars
                    filteredCountries = selectedList
                    
                    tableView.reloadData()
                    
                default:
                    selectedList = birds
                    filteredCountries = selectedList
                    tableView.reloadData()
                    
                    
                }
            }
        }
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredCountries.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        
      
        
        let item = filteredCountries[indexPath.row]
        
        cell.textLabel?.text = item.name
        if currentIndex == 1{cell.imageView?.image = UIImage(named: item.imageUrl)}
        else
        {
            cell.imageView?.imageFromServerURL(urlString: item.imageUrl, PlaceHolderImage: UIImage(named: "place_holder")!)
        }
        cell.imageView?.contentMode = .redraw
        
//        cell.imageView?.frame.size = CGSize(width: 10, height: 10)
        
        cell.imageView?.frame = CGRect(x: 500, y: 50, width: 5, height: 5)
        
        
        
        return cell
    }
    
    
    
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = .lightGray
        
        let textField = UITextField()
        textField.placeholder = "Search..."
        textField.tag = section
        textField.backgroundColor = .white
        textField.borderStyle = .roundedRect
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        headerView.addSubview(textField)
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 8).isActive = true
        textField.trailingAnchor.constraint(equalTo: headerView.trailingAnchor, constant: -8).isActive = true
        textField.topAnchor.constraint(equalTo: headerView.topAnchor, constant: 8).isActive = true
        textField.bottomAnchor.constraint(equalTo: headerView.bottomAnchor, constant: -8).isActive = true
        
        return headerView
    }
    
    
    // MARK: - Actions
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        if textField.text?.isEmpty ?? true {
            filteredCountries = selectedList
        } else {
            filteredCountries = selectedList.filter { $0.name.contains(textField.text!) }
        }
        tableView.reloadData()
    }
    
}




extension UIImageView {
    public func imageFromServerURL(urlString: String, PlaceHolderImage:UIImage) {
        
        if self.image == nil{
            self.image = PlaceHolderImage
        }
        
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error ?? "No Error")
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }
}
