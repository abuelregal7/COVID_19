//
//  fourthAnswersViewControllerViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class fourthAnswersViewControllerViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    let answer4 = "هل يمكن أن أصاب بمرض كوفيد-19 عن طريق الفضلات البشرية أو الحيوانات أو ملامسة الأسطح أو الطرود؟\n 🚽 هل يمكن أن أصاب بمرض كوفيد-19 عن طريق فضلات شخص مريض؟\n تبدو مخاطر انتقال مرض كوفيد-19 عن طريق براز الشخص المصاب بالعدوى محدودة. وفي حين أن التحريات المبدئية تشير إلى أن الفيروس قد يتواجد في البراز في بعض الحالات، فإن انتشاره عبر هذا المسار لا يشكل إحدى السمات الرئيسية للفاشية. وتعكف المنظمة على تقييم البحوث الجارية بشأن طرق انتشار مرض كوفيد-19 وستواصل نشر النتائج الجديدة. ولكن نظراً إلى ما ينطوي عليه ذلك من مخاطر، فإنه يعد سبباً آخر لتنظيف اليدين بانتظام بعد استخدام دورة المياه وقبل تناول الطعام.\n 🐾 هل يمكن أن تنتقل عدوى مرض كوفيد-19 إلى البشر من مصدر حيواني؟\n\n فيروسات كورونا هي فصيلة كبيرة من الفيروسات الشائعة بين الحيوانات. ويصاب الأشخاص في حالات نادرة بعدوى هذه الفيروسات التي ينقلونها بعد ذلك إلى الآخرين. ومن الأمثلة على ذلك فيروس كورونا المسبب لمتلازمة الالتهاب الرئوي الحاد الوخيم (سارس) الذي ارتبط بقطط الزباد، وفيروس كورونا المسبب لمتلازمة الشرق الأوسط التنفسية (ميرس) الذي انتقل عن طريق الإبل. ولم تتأكد بعد المصادر الحيوانية المحتملة لمرض كوفيد-19.\n ولحماية نفسك، عندما تزور أسواق الحيوانات الحية مثلاً، تجنب الملامسة المباشرة للحيوانات وللأسطح الملامسة للحيوانات. وتأكد من اتّباع ممارسات السلامة الغذائية الجيدة في جميع الأوقات بتوخى العناية الواجبة عند التعامل مع اللحوم النيئة والحليب الخام وأعضاء الحيوانات لتلافي تلوث الأغذية غير المطهوة، وتجنب تناول المنتجات الحيوانية النيئة أو غير المطبوخة جيداً.\n 🐶هل يمكن أن أُصاب بمرض كوفيد-19 عن طريق حيواني الأليف؟\n لا يوجد حتى اليوم دليل علمي على إمكانية انتقال عدوى كوفيد-19 من كلب أو قط أو أي حيوان أليف. فمرض كوفيد-19 ينتشر بشكل أساسي عن طريق القطيرات التي يفرزها الشخص المصاب بالعدوى عندما يسعل أو يعطس أو يتكلم. ولحماية نفسك من العدوى، نظف يديك بشكل جيد ومتكرر."
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = answer4
    }
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

    

}