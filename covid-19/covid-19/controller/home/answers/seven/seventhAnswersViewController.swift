//
//  seventhAnswersViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class seventhAnswersViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let answer7 = "إذا كنت قد زرت مؤخرًا (خلال ال14 يومًا الماضية) مناطق ينتشر فيها كوفيد-19، اتبع الإرشادات الموضحة في السؤال 15 (ماذا يمكنني أن أفعل لحماية نفسي ومنع انتشار المرض؟) والتزم بالآتي:\n🏠 * اعزل نفسك بالبقاء في المنزل إذا بدأت تشعر بالتوعك ولو بأعراض خفيفة كالصداع والحمى المنخفضة الدرجة (37.3 درجة مئوية أو أكثر) ورشح خفيف في الأنف حتى تتعافى تماما.*\n إذا تطلّب الأمر الاستعانة بشخص ما لإحضار ما تحتاج إليه من لوازم أو كنت مضطرا إلى الخروج لشراء ما تأكله مثلا، فارتد قناعا لتجنب نقل العدوى إلى أشخاص آخرين.\n لماذا؟ سيسمح تجنبك لمخالطة الآخرين وزيارتك للمرافق الطبية بأن تعمل هذه المرافق بمزيد من الفعّالية، وسيساعدان على حمايتك أنت والآخرين من الفيروس المسبب لمرض كوفيد-19 وسائر الفيروسات.\n🤒  إذا كنت تعاني من الحمى والسعال وصعوبة التنفس، التمس المشورة الطبية على الفور، فقد تكون مصاباً بعدوى الجهاز التنفسي أو حالة مرضية وخيمة أخرى. واتصل قبل الذهاب إلى مقدم الرعاية وأخبره إن كنت قد سافرت أو خالطت أي مسافرين مؤخراً.\n لماذا؟ إن اتصالك المسبق بمقدم الرعاية سيسمح له بتوجيهك سريعاً إلى مرفق الرعاية الصحية المناسب. وسيساعد ذلك أيضاً على منع أي انتشار محتمل للفيروس المسبب لمرض كوفيد-19 وغيره من الفيروسات."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = answer7
    }
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    

}
