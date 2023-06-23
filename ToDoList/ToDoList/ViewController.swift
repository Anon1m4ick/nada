
import UIKit

class ViewController: UIViewController {
    
    private var label: UILabel = {
        let label = UILabel()
        label.font = DSFont.footnote.font
        label.text = "LABEL"
        label.textColor = DSColor.labelPrimary.color
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var label2 = makeLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(label)
        
        NSLayoutConstraint.activate(
            [
                label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                label.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            ]
        )
    }
    
    private func makeLabel() -> UILabel {
        let label = UILabel()
        label.font = DSFont.footnote.font
        label.text = "LABEL"
        label.textColor = DSColor.labelPrimary.color
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }
}

