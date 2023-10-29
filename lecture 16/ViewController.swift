import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    
    private let backgroundImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "BG shape")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let masterStackView: UIStackView = {
        
        let masterStackView = UIStackView()
        masterStackView.axis = .vertical
        masterStackView.translatesAutoresizingMaskIntoConstraints = false
        masterStackView.spacing = 32
        
        return masterStackView
    }()
    
    
    private let avatarImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Avatar")
        imageView.contentMode = .center
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Sign In"
        label.font = UIFont.systemFont(ofSize: 28, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let titleAndAvatarStack: UIStackView = {
        
        let titleAndAvatarStack = UIStackView()
        titleAndAvatarStack.axis = .vertical
        titleAndAvatarStack.alignment = .center
        titleAndAvatarStack.distribution = .fill
        titleAndAvatarStack.spacing = 15
        titleAndAvatarStack.translatesAutoresizingMaskIntoConstraints = false
        
        return titleAndAvatarStack
    }()
    
    
    private let emailTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.textColor = UIColor(hex: "#5F5F5F")
        textField.backgroundColor = UIColor(hex: "#F8F8F8")
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(hex: "#B2B2B2", alpha: 0.25).cgColor
        
        return textField
    }()
    
    private let passwordTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        textField.textColor = UIColor(hex: "#5F5F5F")
        textField.backgroundColor = UIColor(hex: "#F8F8F8")
        textField.borderStyle = .roundedRect
        
        textField.layer.borderWidth = 1.0
        textField.layer.borderColor = UIColor(hex: "#B2B2B2", alpha: 0.25).cgColor
        
        return textField
    }()
    
    private let forgotPasswordLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Forgot Your Password?"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(hex: "#5F5F5F")
        label.textAlignment = .right
        
        return label
    }()
    
    private let textFieldsStack: UIStackView = {
        
        let textFieldsStack = UIStackView()
        textFieldsStack.axis = .vertical
        textFieldsStack.alignment = .fill
        textFieldsStack.distribution = .fill
        textFieldsStack.spacing = 15
        textFieldsStack.translatesAutoresizingMaskIntoConstraints = false
        
        return textFieldsStack
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(UIColor(hex: "#FFFFFF"), for: .normal)
        button.backgroundColor = UIColor(hex: "#22577A")
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        button.layer.cornerRadius = 16
        
        return button
    }()
    
    private let lineView: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = UIColor(hex: "#5F5F5F")
        
        return lineView
    }()
    
    private let orLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Or"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    //ეს "or" მაინც არ ჩანს და ვერ ვხვდები რატო
    
    private let lineViewSecond: UIView = {
        let lineViewSecond = UIView()
        lineViewSecond.backgroundColor = UIColor(hex: "#5F5F5F")
        
        return lineViewSecond
    }()
    
    private let orStack: UIStackView = {
        
        let orStack = UIStackView()
        orStack.axis = .horizontal
        orStack.alignment = .fill
        orStack.distribution = .fillEqually
        orStack.spacing = 8
        orStack.translatesAutoresizingMaskIntoConstraints = false
        
        return orStack
    }()
    
    private let googleIconImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Google")
        imageView.contentMode = .center
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let googleIconStack: UIStackView = {
        
        let googleIcon = UIStackView()
        googleIcon.backgroundColor = UIColor(hex: "#F9F9F9")
        googleIcon.axis = .horizontal
        googleIcon.alignment = .center
        googleIcon.distribution = .fill
        googleIcon.layer.cornerRadius = 4
        googleIcon.translatesAutoresizingMaskIntoConstraints = false
        
        return googleIcon
    }()
    
    private let facebookIconImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Facebook")
        imageView.contentMode = .center
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let facebookIconStack: UIStackView = {
        
        let facebookIcon = UIStackView()
        facebookIcon.backgroundColor = UIColor(hex: "#F9F9F9")
        facebookIcon.axis = .horizontal
        facebookIcon.alignment = .center
        facebookIcon.distribution = .fill
        facebookIcon.layer.cornerRadius = 4
        facebookIcon.translatesAutoresizingMaskIntoConstraints = false
        
        return facebookIcon
    }()
    
    private let linkedinIconImageView: UIImageView = {
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Linkedin")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private let linkedinIconStack: UIStackView = {
        
        let linkedinIcon = UIStackView()
        linkedinIcon.backgroundColor = UIColor(hex: "#F9F9F9")
        linkedinIcon.axis = .horizontal
        linkedinIcon.alignment = .center
        linkedinIcon.distribution = .fill
        linkedinIcon.layer.cornerRadius = 4
        linkedinIcon.translatesAutoresizingMaskIntoConstraints = false
        
        return linkedinIcon
    }()
    
    private let iconsStack: UIStackView = {
        
        let iconsStack = UIStackView()
        iconsStack.axis = .horizontal
        iconsStack.alignment = .center
        iconsStack.distribution = .equalCentering
        iconsStack.layer.cornerRadius = 4
        iconsStack.spacing = 12
        iconsStack.translatesAutoresizingMaskIntoConstraints = false
        
        return iconsStack
    }()
    
    private let signInOptionsStack: UIStackView = {
        
        let signInOptionsStack = UIStackView()
        signInOptionsStack.axis = .vertical
        signInOptionsStack.alignment = .center
        signInOptionsStack.distribution = .equalCentering
        signInOptionsStack.spacing = 12
        signInOptionsStack.translatesAutoresizingMaskIntoConstraints = false
        
        return signInOptionsStack
    }()
    
    private let signUpLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Don’t have an account? Sign Up"
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = UIColor(hex: "#5F5F5F")
        label.textAlignment = .center
        
        return label
    }()
    
    //MARK: - ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpBackground()
        setUpSubviews()
        setUpConstraints()
        
    }
    
    //MARK: - Private Methods
    
    private func setUpBackground() {
        view.backgroundColor = .white
    }
    
    private func setUpSubviews() {
        view.addSubview(backgroundImageView)
        view.addSubview(masterStackView)
        
        titleAndAvatarStack.addArrangedSubview(avatarImageView)
        titleAndAvatarStack.addArrangedSubview(titleLabel)
        masterStackView.addArrangedSubview(titleAndAvatarStack)
        
        masterStackView.addArrangedSubview(textFieldsStack)
        textFieldsStack.addArrangedSubview(emailTextField)
        textFieldsStack.addArrangedSubview(passwordTextField)
        textFieldsStack.addArrangedSubview(forgotPasswordLabel)
        
        masterStackView.addArrangedSubview(signInButton)
        
        masterStackView.addArrangedSubview(signInOptionsStack)
        signInOptionsStack.addArrangedSubview(orStack)
        signInOptionsStack.addArrangedSubview(iconsStack)
        
        orStack.addArrangedSubview(lineView)
        orStack.addArrangedSubview(orLabel)
        orStack.addArrangedSubview(lineViewSecond)
        
        iconsStack.addArrangedSubview(googleIconStack)
        googleIconStack.addArrangedSubview(googleIconImageView)
        
        iconsStack.addArrangedSubview(facebookIconStack)
        facebookIconStack.addArrangedSubview(facebookIconImageView)
        
        iconsStack.addArrangedSubview(linkedinIconStack)
        linkedinIconStack.addArrangedSubview(linkedinIconImageView)
        
        masterStackView.addArrangedSubview(signUpLabel)
    }
    
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.heightAnchor.constraint(equalToConstant: 284),
            
            masterStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            masterStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            masterStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            
            avatarImageView.heightAnchor.constraint(equalToConstant: 160),
            avatarImageView.widthAnchor.constraint(equalToConstant: 160),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 53),
            passwordTextField.heightAnchor.constraint(equalToConstant: 53),
            signInButton.heightAnchor.constraint(equalToConstant: 45),
            
            lineView.heightAnchor.constraint(equalToConstant: 1),
            lineView.widthAnchor.constraint(equalToConstant: 120),
            lineViewSecond.heightAnchor.constraint(equalToConstant: 1),
            lineViewSecond.widthAnchor.constraint(equalToConstant: 120),
            
            googleIconStack.heightAnchor.constraint(equalToConstant: 42),
            googleIconStack.widthAnchor.constraint(equalToConstant: 42),
            
            facebookIconStack.heightAnchor.constraint(equalToConstant: 42),
            facebookIconStack.widthAnchor.constraint(equalToConstant: 42),
            
            linkedinIconStack.heightAnchor.constraint(equalToConstant: 42),
            linkedinIconStack.widthAnchor.constraint(equalToConstant: 42),
            
            googleIconImageView.heightAnchor.constraint(equalToConstant: 30),
            googleIconImageView.widthAnchor.constraint(equalToConstant: 30),
            
            facebookIconImageView.heightAnchor.constraint(equalToConstant: 30),
            facebookIconImageView.widthAnchor.constraint(equalToConstant: 30),
            
            linkedinIconImageView.heightAnchor.constraint(equalToConstant: 30),
            linkedinIconImageView.widthAnchor.constraint(equalToConstant: 30),
            
            
        ])
    }
}

//MARK: - HEX Code Extension

extension UIColor {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    //MARK: - Navigations
    
    
}
