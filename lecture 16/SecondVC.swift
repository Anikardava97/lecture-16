import UIKit

protocol ChangeButtonColorsDelegate: AnyObject {
    func changeButtonColor(using colour: UIColor)
}

protocol ChangeBackgroundColorsDelegate: AnyObject {
    func changeBGColor(using colour: UIColor)
}

class SecondVC: UIViewController {
    
    //MARK: - Properties
    private let masterStackView: UIStackView = {
        let masterStackView = UIStackView()
        masterStackView.axis = .vertical
        masterStackView.translatesAutoresizingMaskIntoConstraints = false
        masterStackView.spacing = 32
        return masterStackView
    }()
    
    private let presentColorPalettePageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Present Color Palette Page", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: "#4B527E")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let pushColorPalettePageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Push Color Palette Page", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(hex: "#7C81AD")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpBackground()
        setUpSubviews()
        setUpConstraints()
        setUpPresentButton()
        setUpPushButton()
    }
    
    //MARK: - Actions
    func setUpPresentButton() {
        presentColorPalettePageButton.addAction(UIAction(handler: { [weak self] action in
            self?.presentColorPalettePage()
        }),for: .touchUpInside)
    }
    
    func setUpPushButton() {
        pushColorPalettePageButton.addAction(UIAction(handler: { [weak self] action in
            self?.pushToColorPalettePage()
        }),for: .touchUpInside)
    }
    
    //MARK: - Navigations
    
    func presentColorPalettePage() {
        let colorPalette = ThirdVC()
        colorPalette.delegate = self
        colorPalette.delegateSecond = self
        present(colorPalette, animated: true)
    }
    
    func pushToColorPalettePage() {
        let colorPalette = ThirdVC()
        colorPalette.delegate = self
        colorPalette.delegateSecond = self
        navigationController?.pushViewController(colorPalette, animated: true)
    }
    
    //MARK: - Private Methods
    
    private func setUpBackground() {
        view.backgroundColor = .white
    }
    
    private func setUpSubviews() {
        view.addSubview(masterStackView)
        masterStackView.addArrangedSubview(presentColorPalettePageButton)
        masterStackView.addArrangedSubview(pushColorPalettePageButton)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            masterStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            masterStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            masterStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            presentColorPalettePageButton.topAnchor.constraint(equalTo: masterStackView.topAnchor, constant: 200),
            presentColorPalettePageButton.heightAnchor.constraint(equalToConstant: 54),
            pushColorPalettePageButton.heightAnchor.constraint(equalToConstant: 54)
        ])
    }
}

extension SecondVC: ChangeButtonColorsDelegate, ChangeBackgroundColorsDelegate {
    func changeButtonColor(using colour: UIColor) {
        presentColorPalettePageButton.backgroundColor = colour
        pushColorPalettePageButton.backgroundColor = colour
    }
    
    func changeBGColor(using colour: UIColor) {
        view.backgroundColor = colour
    }
}

