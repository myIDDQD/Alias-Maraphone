import UIKit

class ChoiceViewController: UIViewController {
    
    var category: Category?
    
    @IBOutlet var buttonChoiceFirst: UIButton!
    @IBOutlet var buttonChoiceSecond: UIButton!
    @IBOutlet var buttonChoiceThird: UIButton!
    @IBOutlet var buttonChoiceFour: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonChoiceFirst.titleLabel?.text = Category.categories[0].title
        buttonChoiceSecond.titleLabel?.text = Category.categories[1].title
        buttonChoiceThird.titleLabel?.text = Category.categories[2].title
        buttonChoiceFour.titleLabel?.text = Category.categories[3].title
    }
    
    @IBAction func choiceOne(_ sender: UIButton) {
        self.category = Category.categories[0]
        performSegue(withIdentifier: "goToChoice", sender: self)
    }

    @IBAction func choiceSecond(_ sender: UIButton) {
        self.category = Category.categories[1]
        performSegue(withIdentifier: "goToChoice", sender: self)
    }

    @IBAction func choiceThird(_ sender: Any) {
        self.category = Category.categories[2]
        performSegue(withIdentifier: "goToChoice", sender: self)
    }

    @IBAction func choiceFour(_ sender: Any) {
        self.category = Category.categories[3]
        performSegue(withIdentifier: "goToChoice", sender: self)
    }

        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard segue.identifier == "goToChoice" else { return }
            guard let destinationVC = segue.destination as? GameViewController else { return }
            guard let category = category else { return }
            destinationVC.categoryManager = CategoryManager(category: category)
        }
}
