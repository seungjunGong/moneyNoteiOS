//
//  ComsumptionViewController.swift
//  moneyNoteiOS
//
//  Created by ho on 2023/01/10.
//

import UIKit

class ComsumptionViewController: UIViewController {

    @IBOutlet weak var consumptionTableView: UITableView!
    
    let product:[String] = ["물"]
    
    let price:[String] = ["1000원"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // delegate 전달자 == > 이벤트 처리, 데이터 소스 처리 현재 클래스에서 하겠다.
        consumptionTableView.delegate = self
        consumptionTableView.dataSource = self
    }
    
   
    

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
