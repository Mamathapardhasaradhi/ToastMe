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
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        configure()
    }

    func configure() {
        // Clear subViews
        for subView in subviews {
            subView.removeFromSuperview()
        }
        
        
        
        layer.shadowOpacity = 0.4
        layer.shadowRadius = 2
        layer.shadowColor = UIColor.red.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 2)
        
        let contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.frame = CGRect(x: 0, y: 0, width: 320, height: 44)
        contentView.backgroundColor = UIColor.orange
        
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 44))
        messageLabel.accessibilityIdentifier = "messageLabel"
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.textColor = UIColor.white
        messageLabel.backgroundColor = UIColor.yellow
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .left
        messageLabel.text = "Hello world"
        contentView.addSubview(messageLabel)

    }
}
