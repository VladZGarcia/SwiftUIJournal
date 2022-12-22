//
//  JournalEntry.swift
//  SwiftUIJournal
//
//  Created by Hugo Garcia on 2022-12-22.
//

import UIKit

let entry = JournalEntry(content: "hej")

struct JournalEntry : Identifiable {
    let id = UUID()
    
    var content : String
    var date : Date = Date()

}
