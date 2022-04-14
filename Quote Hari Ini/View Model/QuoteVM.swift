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
                quoteList[each.id - 1].isViewed = true
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



//class QuoteListVM {
//
//    var quoteListVM: [QuoteVM]
//    init() {
//        self.quoteListVM = [QuoteVM(quote: Quote(text: "Bacot", author: "Lonte"))]
//    }
//}
//
//extension QuoteListVM {
//
//    func eachQuoteVM(at index: Int) -> QuoteVM {
//        return self.quoteListVM[index]
//    }
//}
//
//struct QuoteVM {
//    let quote: Quote
//}
//
//extension QuoteVM {
//
//    var text: String {
//        return quote.text
//    }
//
//    var author: String {
//        return quote.author
//    }
//}
