//
//  ContactInfo.swift
//  Contacts
//
//  Created by Рома Баранов on 23.06.2023.
//

import SwiftUI

struct ContactInfo: View {
    let image: String
    let info: String
    
    var body: some View {
        HStack() {
            Image(systemName: image)
            Text(info)
        }
    }
}

