//
//  AppDelegate.swift
//  Quote Hari Ini
//
//  Created by Arrinal Sholifadliq on 08/02/22.
//

import UIKit
import Firebase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
//        let db = Firestore.firestore()
//        let quote: [[String: Any]] = [
//            ["id": 1,
//             "author": "Pramoedya Ananta Toer",
//            "quoteText": "Dalam hidup kita, cuma satu yang kita punya, yaitu keberanian. Kalau tidak punya itu, lantas apa harga hidup kita ini?"],
//            ["id": 2,
//             "author": "Pramoedya Ananta Toer",
//            "quoteText": "Orang boleh pandai setinggi langit, tapi selama ia tidak menulis, ia akan hilang di dalam masyarakat dan dari sejarah. Menulis adalah bekerja untuk keabadian."],
//            ["id": 3,
//             "author": "Sapardi Djoko Damono",
//            "quoteText": "Barangkali hidup adalah doa yang panjang, dan sunyi adalah minuman keras. Ia merasa Tuhan sedang memandangnya dengan curiga; ia pun bergegas."],
//            ["id": 4,
//             "author": "Sapardi Djoko Damono",
//            "quoteText": "Aku mencintaimu. Itu sebabnya aku takkan pernah selesai mendoakan keselamatanmu."],
//            ["id": 5,
//             "author": "Joko Pinurbo",
//            "quoteText": "Ketika aku berdoa, Tuhan tak pernah menanyakan agamaku."],
//            ["id": 6,
//             "author": "Brian Dyson",
//            "quoteText": "Janganlah pernah menyerah ketika kamu masih mampu berusaha lagi. Tidak ada kata berakhir sampai kamu berhenti mencoba."],
//            ["id": 7,
//             "author": "Kahlil Gibran",
//            "quoteText": "Berjalanlah ke tujuanmu dengan tegas dan dengan langkah berani."],
//            
//        ]
//        
//        func addNewData(data: [String: Any]) {
//            let quote = db.collection("quote")
//            
//            let document = quote.addDocument(data: data)
//            
//            document.updateData(
//                [
//                    "firebaseID": document.documentID
//                ]
//            )
//        }
//        
//        for each in quote {
//            addNewData(data: each)
//        }
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

