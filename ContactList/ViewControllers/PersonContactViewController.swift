//
//  PersonContactViewController.swift
//  ContactList
//
//  Created by Келлер Дмитрий on 19.04.2023.
//

import UIKit

final class PersonContactViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contactDetail: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = contactDetail.fullName
        
        phoneLabel.text = "Phone: \(contactDetail.phoneNumber)"
        emailLabel.text = "Email: \(contactDetail.email)"
    }
    


}
