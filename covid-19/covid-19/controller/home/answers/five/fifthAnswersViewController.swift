//
//  fifthAnswersViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class fifthAnswersViewController: UIViewController {

    
    @IBOutlet weak var textView: UITextView!
    
    let answer5 = "هل من الممكن أن أصاب بمرض كوفيد-19 عن طريق الأسطح أو الطرود؟\n 🥄 كم من الوقت يظل الفيروس حياً على الأسطح؟\n لا يُعرف على وجه اليقين فترة استمرار الفيروس المسبب لمرض كوفيد-19 حياً على الأسطح، ولكن يبدو أنه يشبه في ذلك سائر فيروسات كورونا. وتشير الدراسات إلى أن فيروسات كورونا (بما في ذلك المعلومات الأولية عن الفيروس المسبب لمرض كوفيد-19) قد تظل حية على الأسطح لبضع ساعات أو لعدة أيام. وقد يختلف ذلك باختلاف الظروف (مثل نوع السطح ودرجة الحرارة أو الرطوبة البيئية).\n\n إذا كنت تعتقد أن سطحاً ما قد يكون ملوثاً، نظفه بمطهر عادي لقتل الفيروس وحماية نفسك والآخرين. ونظف يديك بفركهما بمطهر كحولي أو بغسلهما بالماء والصابون. وتجنب لمس عينيك أو فمك أو أنفك.\n 📦 هل من الآمن تلقي الطرود من المناطق التي أبلغت عن حالات إصابة بمرض كوفيد-19؟\n\n نعم. إن احتمالات تلوث السلع التجارية عن طريق شخص مصاب بالعدوى هي احتمالات ضعيفة، كما أن مخاطر الإصابة بالفيروس الذي يسبب مرض كوفيد-19 عن طريق طرد نُقل وشُحن وتعرض لمختلف الظروف ودرجات الحرارة، هي مخاطر ضئيلة."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = answer5
    }
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    

}
