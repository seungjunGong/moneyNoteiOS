//
//  ViewController.swift
//  moneyNoteiOS
//
//  Created by ho on 2023/01/03.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var ivComsumption: UIImageView!
    @IBOutlet weak var ivInvestment: UIImageView!
    @IBOutlet weak var ivWaste: UIImageView!
    
    @IBOutlet weak var labelDescribed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let ivConsumptionClick = UITapGestureRecognizer(target: self, action: #selector(labelChangeComsumption))
        ivComsumption.isUserInteractionEnabled = true
        ivComsumption.addGestureRecognizer(ivConsumptionClick)
        
        let ivInvestmentClick = UITapGestureRecognizer(target: self, action: #selector(labelChangeInvestment))
        ivInvestment.isUserInteractionEnabled = true
        ivInvestment.addGestureRecognizer(ivInvestmentClick)
        
        let ivWasteClick = UITapGestureRecognizer(target: self, action: #selector(labelChangeWaste))
        ivWaste.isUserInteractionEnabled = true
        ivWaste.addGestureRecognizer(ivWasteClick)
        
    }
    
    @IBAction func onClickBtnConsumption(_ sender: UIButton) {
        let comsumptionVC = self.storyboard?.instantiateViewController(withIdentifier: "ComsumptionVC") as! ComsumptionViewController
        self.navigationController?.pushViewController(comsumptionVC, animated: true)
    }
    
    @IBAction func onClickBtnInvestment(_ sender: UIButton) {
        let investmentVC = self.storyboard?.instantiateViewController(withIdentifier: "InvestmentVC") as! InvestmentViewController
        self.navigationController?.pushViewController(investmentVC, animated: true)
    }
    
    @IBAction func onClickBtnWaste(_ sender: UIButton) {
        let wasteVC = self.storyboard?.instantiateViewController(withIdentifier: "WasteVC") as! WasteViewController
        self.navigationController?.pushViewController(wasteVC, animated: true)
    }
    
    @objc func labelChangeComsumption() {
        labelDescribed.text = "소비는 의식주를 포함합니다.\n소비를 적으려면 아래 \"소비\"를 눌러 주세요."
    }
    @objc func labelChangeInvestment() {
        labelDescribed.text = "투자는 장래 목표, 주식을 포함합니다.\n투자를 적으려면 아래 \"투자\"를 눌러 주세요."
    }
    @objc func labelChangeWaste() {
        labelDescribed.text = "낭비는 음료수, 명품을 포함합니다.\n낭비를 적으려면 아래 \"낭비\"를 눌러 주세요."
    }
    
}

