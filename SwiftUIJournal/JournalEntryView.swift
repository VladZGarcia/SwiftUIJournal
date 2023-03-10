//
//  JournalEntryView.swift
//  SwiftUIJournal
//
//  Created by Hugo Garcia on 2022-12-22.
//

import SwiftUI

struct JournalEntryView: View {
    var journal : Journal
    var entry : JournalEntry? = nil
    @State var content : String = ""
   
    var body: some View {
        VStack {
            TextEditor(text: $content)
        }
        .onAppear() {
            setContent()
        }
        .navigationBarItems(trailing: Button("Save") {
            saveEntry()
            
        })
    }
    
    private func setContent() {
        if let entry = entry {
            content = entry.content
        }
    }
    
    private func saveEntry() {
        let entry = JournalEntry(content: content)
        
        journal.entries.append(entry)
    }
    


}
