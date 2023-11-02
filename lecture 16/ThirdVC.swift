
import UIKit

class ThirdVC: UIViewController {
    
    //MARK: - Properties
    
    weak var delegate: ChangeButtonColorsDelegate?
    weak var delegateSecond: ChangeBackgroundColorsDelegate?
    
    private let masterStackView: UIStackView = {
        let masterStackView = UIStackView()
        masterStackView.axis = .vertical
        masterStackView.translatesAutoresizingMaskIntoConstraints = false
        masterStackView.spacing = 54
        return masterStackView
    }()
    
    private let changeHomeButtonsBGColorsStack: UIStackView = {
        let changeHomeButtonsBGColorsStack = UIStackView()
        changeHomeButtonsBGColorsStack.axis = .vertical
        changeHomeButtonsBGColorsStack.translatesAutoresizingMaskIntoConstraints = false
        changeHomeButtonsBGColorsStack.spacing = 16
        return changeHomeButtonsBGColorsStack
    }()
    
    private let firstThreeButtonsStack: UIStackView = {
        let firstThreeButtonsStack = UIStackView()
        firstThreeButtonsStack.distribution = .fillEqually
        firstThreeButtonsStack.axis = .horizontal
        firstThreeButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        firstThreeButtonsStack.spacing = 16
        return firstThreeButtonsStack
    }()
    
    private let secondThreeButtonsStack: UIStackView = {
        let secondThreeButtonsStack = UIStackView()
        secondThreeButtonsStack.distribution = .fillEqually
        secondThreeButtonsStack.axis = .horizontal
        secondThreeButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        secondThreeButtonsStack.spacing = 16
        return secondThreeButtonsStack
    }()
    
    private let firstTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Change Home Buttons Background Colors"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let daveGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dave Grey", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#DBD8D5")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let pastelGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Pastel Grey", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#CFCFC6")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let silverColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Silver", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#C8C1BC")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let lavenderGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Lavender", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#C4C3D0")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let greigeColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Greige", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#A79C89")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let coolGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cool Grey", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#8E93AB")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let changeHomeBackgroundColorStack: UIStackView = {
        let changeHomeButtonsBGColorsStack = UIStackView()
        changeHomeButtonsBGColorsStack.axis = .vertical
        changeHomeButtonsBGColorsStack.translatesAutoresizingMaskIntoConstraints = false
        changeHomeButtonsBGColorsStack.spacing = 16
        return changeHomeButtonsBGColorsStack
    }()
    
    private let thirdThreeButtonsStack: UIStackView = {
        let thirdThreeButtonsStack = UIStackView()
        thirdThreeButtonsStack.distribution = .fillEqually
        thirdThreeButtonsStack.axis = .horizontal
        thirdThreeButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        thirdThreeButtonsStack.spacing = 16
        return thirdThreeButtonsStack
    }()
    
    private let fourthThreeButtonsStack: UIStackView = {
        let fourthThreeButtonsStack = UIStackView()
        fourthThreeButtonsStack.distribution = .fillEqually
        fourthThreeButtonsStack.axis = .horizontal
        fourthThreeButtonsStack.translatesAutoresizingMaskIntoConstraints = false
        fourthThreeButtonsStack.spacing = 16
        return fourthThreeButtonsStack
    }()
    
    private let secondTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Change Home Background Colors"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let pewterColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Pewter", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#717E80")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let gainsboroColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Gainsboro", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#DBD8D5")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let ashColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ash", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#B5BEB6")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let concreteGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Concrete", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#D3D3D3")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let slateColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Slate", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#73808F")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    private let dolphinGreyColorButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Dolphin", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(hex: "#989BAA")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        button.layer.cornerRadius = 8
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpBackground()
        setUpSubviews()
        setUpConstraints()
        changeHomeButtonsBackgroundColor()
        changeHomeBackgroundColor()
    }
    
    //MARK: - Actions
    func changeHomeButtonsBackgroundColor() {
        daveGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#DBD8D5"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        pastelGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#CFCFC6"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        silverColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#C8C1BC"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        lavenderGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#C4C3D0"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        greigeColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#A79C89"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        coolGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegate?.changeButtonColor(using: UIColor(hex: "#8E93AB"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
    }
    
    func changeHomeBackgroundColor() {
        pewterColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#717E80"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        gainsboroColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#DBD8D5"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        ashColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#B5BEB6"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        concreteGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#D3D3D3"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        slateColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#73808F"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
        
        dolphinGreyColorButton.addAction(UIAction(handler: { [weak self] action in
            self?.delegateSecond?.changeBGColor(using: UIColor(hex: "#989BAA"))
            self?.navigationController?.popViewController(animated: true)
            self?.dismiss(animated: true)
        }),for: .touchUpInside)
    }
    
    //MARK: - Private Methods
    
    private func setUpBackground() {
        view.backgroundColor = .white
    }
    
    private func setUpSubviews() {
        view.addSubview(masterStackView)
        masterStackView.addArrangedSubview(changeHomeButtonsBGColorsStack)
        
        changeHomeButtonsBGColorsStack.addArrangedSubview(firstTitleLabel)
        
        changeHomeButtonsBGColorsStack.addArrangedSubview(firstThreeButtonsStack)
        firstThreeButtonsStack.addArrangedSubview(daveGreyColorButton)
        firstThreeButtonsStack.addArrangedSubview(pastelGreyColorButton)
        firstThreeButtonsStack.addArrangedSubview(silverColorButton)
        
        changeHomeButtonsBGColorsStack.addArrangedSubview(secondThreeButtonsStack)
        secondThreeButtonsStack.addArrangedSubview(lavenderGreyColorButton)
        secondThreeButtonsStack.addArrangedSubview(greigeColorButton)
        secondThreeButtonsStack.addArrangedSubview(coolGreyColorButton)
        
        masterStackView.addArrangedSubview(changeHomeBackgroundColorStack)
        
        changeHomeBackgroundColorStack.addArrangedSubview(secondTitleLabel)
        
        changeHomeBackgroundColorStack.addArrangedSubview(thirdThreeButtonsStack)
        thirdThreeButtonsStack.addArrangedSubview(pewterColorButton)
        thirdThreeButtonsStack.addArrangedSubview(gainsboroColorButton)
        thirdThreeButtonsStack.addArrangedSubview(ashColorButton)
        
        changeHomeBackgroundColorStack.addArrangedSubview(fourthThreeButtonsStack)
        fourthThreeButtonsStack.addArrangedSubview(concreteGreyColorButton)
        fourthThreeButtonsStack.addArrangedSubview(slateColorButton)
        fourthThreeButtonsStack.addArrangedSubview(dolphinGreyColorButton)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            masterStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            masterStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            masterStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            daveGreyColorButton.heightAnchor.constraint(equalToConstant: 40),
            pastelGreyColorButton.heightAnchor.constraint(equalToConstant: 40),
            silverColorButton.heightAnchor.constraint(equalToConstant: 40),
            lavenderGreyColorButton.heightAnchor.constraint(equalToConstant: 40),
            greigeColorButton.heightAnchor.constraint(equalToConstant: 40),
            coolGreyColorButton.heightAnchor.constraint(equalToConstant: 40),
            pewterColorButton.heightAnchor.constraint(equalToConstant: 40),
            gainsboroColorButton.heightAnchor.constraint(equalToConstant: 40),
            ashColorButton.heightAnchor.constraint(equalToConstant: 40),
            concreteGreyColorButton.heightAnchor.constraint(equalToConstant: 40),
            slateColorButton.heightAnchor.constraint(equalToConstant: 40),
            dolphinGreyColorButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}




