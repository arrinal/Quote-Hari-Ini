//
//  QuoteVM.swift
//  Quote Hari Ini
//
//  Created by Arrinal Sholifadliq on 06/04/22.
//

import Foundation
import Firebase



class QuoteListVM {
    
    @Published var quoteList = [Quote]()
    
    var filteredQuoteList: [Quote] {
        guard quoteList.filter({$0.isViewed == false}).count != 0 else {
           
            for each in quoteList {
                quoteList[each.id - 1].isViewed = false
            }
            
            return quoteList
        }
        
        return quoteList.filter({$0.isViewed == false})
    }
    
    func viewed(quoteID: Int) {
        quoteList = quoteList.map { (quote) -> Quote in
            var quote = quote
            if quote.id == quoteList.filter({ $0.id == quoteID })[0].id {
                quote.isViewed = true
            }
            return quote
        }
    }
}

