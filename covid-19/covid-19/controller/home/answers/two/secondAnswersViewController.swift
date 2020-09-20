//
//  secondAnswersViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class secondAnswersViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let answer2 = "تتمثل الأعراض الأكثر شيوعاً لمرض كوفيد-19 في:\n🤒 الحمى\n😴 الإرهاق\n💨 السعال الجاف\n قد يعاني بعض المرضى من الآلام والأوجاع، أو احتقان الأنف، أو الرشح، أو ألم الحلق، أو الإسهال.\n ادة ما تكون هذه الأعراض خفيفة وتبدأ تدريجياً. ويصاب بعض الناس بالعدوى دون أن تظهر عليهم أي أعراض ودون أن يشعروا بالمرض.\n تعافى معظم الأشخاص (نحو 80%) من المرض دون الحاجة إلى علاج خاص. وتشتد حدة المرض لدى شخص واحد تقريباً من كل 6 أشخاص يصابون بعدوى كوفيد-19 حيث يعانون من صعوبة التنفس.\n تزداد احتمالات إصابة المسنين والأشخاص المصابين بمشكلات طبية أساسية مثل ارتفاع ضغط الدم أو أمراض القلب أو داء السكري، بأمراض وخيمة.\n ينبغي للأشخاص الذين يعانون من الحمى والسعال وصعوبة التنفس التماس الرعاية الطبية."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = answer2
    }
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    

}
