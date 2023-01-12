//
//  ComsumptionViewController.swift
//  moneyNoteiOS
//
//  Created by ho on 2023/01/10.
//

import UIKit
import RealmSwift

class ComsumptionViewController: UIViewController {

    @IBOutlet weak var consumptionTableView: UITableView!
    
    @IBOutlet weak var addBtn: UIButton!
    
    let product:[String] = ["물"]
    
    let price:[String] = ["1000원"]
    
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegate 전달자 == > 이벤트 처리, 데이터 소스 처리 현재 클래스에서 하겠다.
        consumptionTableView.delegate = self
        consumptionTableView.dataSource = self
        
        // addBtn 그림자 처리
        addBtn.layer.shadowColor = UIColor.gray.cgColor
        addBtn.layer.shadowOpacity = 1.0
        addBtn.layer.shadowOffset = CGSize.zero
        addBtn.layer.shadowRadius = 5

    }
    
   
    //MARK: - Adddd 
    

}

extension ComsumptionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        product.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.consumptionTableView.dequeueReusableCell(withIdentifier: "ConsumptionTableViewCell", for: indexPath) as! ConsumptionTableViewCell
        cell.productLable?.text = product[indexPath.section]
        cell.priceLable.text = price[indexPath.section]
        
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("셀 변경")
        
    }
}
