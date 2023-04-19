//
//  Person.swift
//  ContactList
//
//  Created by Келлер Дмитрий on 18.04.2023.
//


struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonList() -> [Person] {
        var personList: [Person] = []
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let phoneNumbers = DataStore.phoneNumbers.shuffled()
        let emails = DataStore.emails.shuffled()
        
        for index in 0..<names.count {
            personList.append( Person (
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            )
        }
        return personList
    }
}

