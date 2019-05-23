//
//  VCExts.swift
//  ZainFramework
//
//  Created by ZainAnjum on 06/05/2019.
//

import UIKit
public extension UIViewController{
    static func instantiate() -> UIViewController{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: id)
        
    }
    func pushVC(_ VC: UIViewController) {
        navigationController?.pushViewController(VC, animated: true)
    }
    func dismissVC() {
        self.dismiss(animated: true, completion: nil)
    }
    var activityIndicatorTag: Int { return 999999 }
    func startActivityIndicator(
        style: UIActivityIndicatorView.Style = .gray,
        location: CGPoint? = nil) {
        
        //Set the position - defaults to `center` if no`location`
        
        //argument is provided
        
        let loc = location ?? self.view.center
        
        //Ensure the UI is updated from the main thread
        
        //in case this method is called from a closure
        
        DispatchQueue.main.async {
            
            //Create the activity indicator
            
            let activityIndicator = UIActivityIndicatorView(style: style)
            //Add the tag so we can find the view in order to remove it later
            
            activityIndicator.tag = self.activityIndicatorTag
            //Set the location
            
            activityIndicator.center = loc
            activityIndicator.hidesWhenStopped = true
            //Start animating and add the view
            
            activityIndicator.startAnimating()
            self.view.addSubview(activityIndicator)
        }
    }
    func stopActivityIndicator() {
        
        //Again, we need to ensure the UI is updated from the main thread!
        
        DispatchQueue.main.async {
            
            
            //Here we find the `UIActivityIndicatorView` and remove it from the view
            
            if let activityIndicator = self.view.subviews.filter(
                { $0.tag == self.activityIndicatorTag}).first as? UIActivityIndicatorView {
                activityIndicator.stopAnimating()
                activityIndicator.removeFromSuperview()
            }
        }
    }
    
    func showAlert(text: String) {
        let alert = UIAlertController(title: "Alert", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            switch action.style{
            case .default:
                print("default")
                
            case .cancel:
                print("cancel")
                
            case .destructive:
                print("destructive")
            default:
                break
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    func showLoadingAlert(text: String) {
        let alert = UIAlertController(title: nil, message: text, preferredStyle: .alert)
        alert.view.tintColor = UIColor.black
        let loadingIndicator: UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50)) as UIActivityIndicatorView
        loadingIndicator.hidesWhenStopped = true
        loadingIndicator.style = UIActivityIndicatorView.Style.gray
        loadingIndicator.startAnimating();
        
        alert.view.addSubview(loadingIndicator)
        if let window = UIApplication.shared.keyWindow{
            window.rootViewController?.present(alert, animated: true, completion: nil)
        }
        
    }
}
