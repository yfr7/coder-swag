//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Yves Fernandes on 8/1/17.
//  Copyright © 2017 Kartech LDA. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productCollection: UICollectionView!
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        productCollection.delegate = self
        productCollection.dataSource = self
    }
    
    func initializeProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title.uppercased())
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCollectionViewCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }else {
            return ProductCollectionViewCell()
        }
        
    }

}
