//
//  ContactViewController.swift
//  ContactList
//
//  Created by Келлер Дмитрий on 18.04.2023.
//

import UIKit

final class ContactViewController: UITableViewController{
    
    private var personList = Person.getPersonList()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailContactVC = segue.destination as? PersonContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailContactVC.contactDetail = personList[indexPath.row]
    }

}

// MARK: - UITableViewDataSource
extension ContactViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = personList[indexPath.row]
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}
