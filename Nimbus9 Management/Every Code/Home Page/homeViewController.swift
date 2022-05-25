//
//  homeViewController.swift
//  Nimbus9 Management
//
//  Created by Tommy Ryu Tannaca on 20/05/22.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet weak var bgImageTheme: UIImageView!
    @IBOutlet weak var bgViewThemeColor: UIView!
    
    @IBOutlet weak var viewButton: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = "Hi, Nick Name"
        
        Functions().shadowUIView(cview: viewButton)
        registerCollectionView()
        registerTable()
        
    }
    
    @IBAction func didTapNotification(_ sender: Any) {
        print("Notification Tapped")
    }
    
    @IBAction func didTapYourTask(_ sender: Any) {
        print("Your Task Tapped")
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Selected Cell: \(indexPath.row)")
    }
    
    @IBAction func didTapMyAttendance(_ sender: Any) {
        print("My Attendance Tapped")
    }
    
    @IBAction func didTapSalarySlip(_ sender: Any) {
        print("Salary Slip Tapped")
    }
    
    @IBAction func didTapEmployeeLoan(_ sender: Any) {
        print("Employee Loan Tapped")
    }
    
    @IBAction func didTapMyReimbursement(_ sender: Any) {
        print("My Reimbursement Tapped")
    }
    
    func registerCollectionView() {
        homeCollectionView.backgroundColor = UIColor(white: 1, alpha: 0)
        let nibCell = UINib(nibName: "departemenCollectionViewCell", bundle: nil)
        homeCollectionView.register(nibCell, forCellWithReuseIdentifier: "departemenCollectionViewCell")
    }
    
    func registerTable() {
        tableView.register(UINib.init(nibName: "tenantInquiryTableViewCell", bundle: nil), forCellReuseIdentifier:"tenantInquiryTableViewCell")
        tableView.register(UINib.init(nibName: "statisticTableViewCell", bundle: nil), forCellReuseIdentifier:"statisticTableViewCell")
        tableView.register(UINib.init(nibName: "scheduleTableViewCell", bundle: nil), forCellReuseIdentifier:"scheduleTableViewCell")
        tableView.register(UINib.init(nibName: "officerTableViewCell", bundle: nil), forCellReuseIdentifier:"officerTableViewCell")
        tableView.register(UINib.init(nibName: "activityTableViewCell", bundle: nil), forCellReuseIdentifier:"activityTableViewCell")
        
        tableView.estimatedRowHeight = 200
        tableView.rowHeight = UITableView.automaticDimension
        //tableView.setContentOffset(.zero, animated: false)
        tableView.separatorColor = UIColor.clear
        tableView.reloadData()
        
    }
    
    
}





//_______________________________________________________________
//extension
extension homeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return departmentList.count //departementList ada di Daftar Struct/ListDepartemen
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "departemenCollectionViewCell", for: indexPath) as! departemenCollectionViewCell
        cell.setup(with: departmentList[indexPath.row])
        
        cell.shadowDecorate(radius: 10)
        return cell
    }
}

extension homeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "tenantInquiryTableViewCell", for: indexPath) as! tenantInquiryTableViewCell
            cell.selectionStyle = .none
            return cell
        }else if indexPath.row == 1
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "statisticTableViewCell", for: indexPath) as! statisticTableViewCell
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "scheduleTableViewCell", for: indexPath) as! scheduleTableViewCell
            cell.selectionStyle = .none
            return cell
        } else if indexPath.row == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "officerTableViewCell", for: indexPath) as! officerTableViewCell
            cell.selectionStyle = .none
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "activityTableViewCell", for: indexPath) as! activityTableViewCell
            cell.selectionStyle = .none
            return cell
        }
    }
}
