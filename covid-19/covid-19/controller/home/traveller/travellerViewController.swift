//
//  travellerViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit

class travellerViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var moreInfoOutLet: UIButton!
    
    
    let travellerText = "توصي المنظمة بمراعاة ممارسة التحوطات في حال السفر والتجارة في سياق فاشية كوفيد-19\n\n من الأحوط للمسافرين المرضى تأجيل أو إلغاء السفر إلى المناطق المتضررة، لا سيما بالنسبة للمسافرين الكبار في ‏السن والأشخاص الذين يعانون أمراضاً مزمنة أو مشاكل صحية أخرى.‏ تشير عبارة المناطق المتضررة إلى البلدان أو المقاطعات أو الأراضي أو المدن التي تشهد انتقالاً سارياً لعدوى ‏كوفيد-19، مقابل المناطق التي لم تبلغ سوى عن حالات وافدة من الخارج.\n\n تتضمن التوصيات العامة لجميع المسافرين ما يلي:\n\n\n 🧼 نظف يديك جيداً بانتظام\n\n 👄 تجنب لمس عينيك وفمك وأنفك\n\n 💪 قم بتغطية فمك وأنفك بكوعك المثني أو بمنديل ورقي عند السعال أو العطس.\n\n ↔️ ابق على مسافة تزيد عن متر واحد (3 أقدام) عن الشخص المريض\n\n 🍗 اتبع ممارسات النظافة الغذائية السليمة\n\n 😷 ارتدِ القناع فقط إذا كنت مصاباً بأعراض كوفيد-19 (خاصة السعال) أو تقوم برعاية شخص قد يكون مصاباً بفيروس كوفيد-19.\n\n\n يتعين على المسافرين العائدين من المناطق المتضررة:\n\n 🌡 مراقبة ذاتية للأعراض لمدة 14 يومًا واتباع البروتوكولات الوطنية للدول المستقبلة. قد تُلزم بعض البلدان المسافرين العائدين بدخول الحجر الصحي.\n\n 🤒 في حالة ظهور أعراض مثل الحمى أو السعال أو صعوبة التنفس، يُنصح المسافرون بالاتصال بمقدمي الرعاية الصحية المحليين وإبلاغهم بأعراضهم وسفرياتهم السابقة، ويفضل أن يتم ذلك عبر الهاتف\n\n"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView.text = travellerText
        moreInfoOutLet.layer.cornerRadius = 20
    }
    
    
    func move(identifier:String)
    {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = storyBoard.instantiateViewController(withIdentifier: identifier)
        self.present(nextVC,animated: true,completion: nil)
    }
    
    @IBAction func morInfoAction(_ sender: Any) {
        
        move(identifier: "interestsNavigationController")
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}
