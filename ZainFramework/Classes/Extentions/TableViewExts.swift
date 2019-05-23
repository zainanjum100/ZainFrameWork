//
//  TableViewExts.swift
//  ZainFramework
//
//  Created by ZainAnjum on 06/05/2019.
//

import UIKit
@available(iOS 10.0, *)
public extension UITableView {
    
    func beginRefreshing() {
        // Make sure that a refresh control to be shown was actually set on the view
        // controller and the it is not already animating. Otherwise there's nothing
        // to refresh.
        guard let refreshControl = refreshControl, !refreshControl.isRefreshing else {
            return
        }
        
        // Start the refresh animation
        refreshControl.beginRefreshing()
        //new
        
        // a pull to refresh manually
        refreshControl.sendActions(for: .valueChanged)
        if #available(iOS 11.0, *) {
            let top = self.adjustedContentInset.top
            let y = self.refreshControl!.frame.maxY + top
            self.setContentOffset(CGPoint(x: 0, y: -y), animated:true)
        } else {
            // Fallback on earlier versions
        }
        
        // Apply some offset so that the refresh control can actually be seen
        //        let contentOffset = CGPoint(x: 0, y: -refreshControl.frame.height)
        //        setContentOffset(contentOffset, animated: true)
    }
    
    func endRefreshing() {
        refreshControl?.endRefreshing()
    }
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .black
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "TrebuchetMS", size: 15)
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel;
        self.separatorStyle = .none;
    }
    
    func restore() {
        self.backgroundView = nil
        self.separatorStyle = .singleLine
    }
}
public struct Chapter: Decodable {
    let name: String
}
//Searcing extention
public extension Array where Element == Chapter{
    func matching(_ text: String?) -> [Chapter] {
        if let text = text, text.count > 0{
            return self.filter{
                $0.name.lowercased().contains(text.lowercased())
            }
        }else{
            return self
        }
    }
}
