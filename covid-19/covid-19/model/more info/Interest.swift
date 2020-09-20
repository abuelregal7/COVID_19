//
//  Interest.swift
//  Interests
//
//  Created by Duc Tran on 6/13/15.
//  Copyright © 2015 Developer Inspirus. All rights reserved.
//

import UIKit

class Interest
{
    // MARK: - Public API
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor)
    {
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
    }
    
    // MARK: - Private
    // dummy data
    static func fetchInterests() -> [Interest]
    {
        return [
            Interest(title: "للحصول على إرشادات خاصة بإدارة المسافرين المرضى في نقاط الدخول - المطارات والموانئ والمعابر البرية الدولية - في سياق فاشية مرض كوفيد-19", featuredImage: UIImage(named: "blue_background20")!, color: UIColor(red: 103/255.0, green: 217/255.0, blue: 87/255.0, alpha: 0.8)),
            Interest(title: "للحصول على أحدث توصيات للسفر", featuredImage: UIImage(named: "blue_background20")!, color: UIColor(red: 240/255.0, green: 133/255.0, blue: 91/255.0, alpha: 0.8)),
            Interest(title: "للحصول على نصائح حول ممارسات نظافة الغذاء المناسبة", featuredImage: UIImage(named: "blue_background20")!, color: UIColor(red: 102/255.0, green: 102/255.0, blue: 102/255.0, alpha: 0.8)),
            Interest(title: "للحصول على نصائح زيارة أسواق الحيوانات الحية", featuredImage: UIImage(named: "blue_background20")!, color: UIColor(red: 245/255.0, green: 62/255.0, blue: 40/255.0, alpha: 0.8)),
            Interest(title: "للحصول على أحدث تقارير الوضع الراهن للمناطق المتضررة دولياً", featuredImage: UIImage(named: "blue_background20")!, color: UIColor(red: 63/255.0, green: 71/255.0, blue: 80/255.0, alpha: 0.8))
            
        ]
    }
}
