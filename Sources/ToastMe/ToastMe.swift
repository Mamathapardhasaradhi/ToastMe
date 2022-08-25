import UIKit
public struct ToastMeStr {
    public private(set) var text = "Hello, World!"

    public init() {
    }
    
    public func showHelloWorld() -> String {
        return "Hello world"
    }
    
    
}

open class ToastMe: UIView {
    
    public private(set) var text = "Hello, World!"
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        configure()
    }

    func configure() {
        // Clear subViews
        loadViewFromNib()
    }
}

extension UIView {
    func loadViewFromNib() {
        let nibName = NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
        let view = Bundle(for: type(of: self)).loadNibNamed(nibName, owner: self, options: nil)?.first as! UIView
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        
        let views = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[view]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[view]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: views))
        setNeedsUpdateConstraints()
    }
}
