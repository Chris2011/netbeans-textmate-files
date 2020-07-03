import UIKit
class ViewController: UIViewController {
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let myNewView=UIView(frame: CGRect(x: 10, y: 100, width: 300, height: 200))
        
        // Change UIView background colour
        myNewView.backgroundColor=UIColor.lightGray
        
        // Add rounded corners to UIView
        myNewView.layer.cornerRadius=25
        
        // Add border to UIView
        myNewView.layer.borderWidth=2
        
        // Change UIView Border Color to Red
        myNewView.layer.borderColor = UIColor.red.cgColor
        
        // Add UIView as a Subview
        self.view.addSubview(myNewView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
