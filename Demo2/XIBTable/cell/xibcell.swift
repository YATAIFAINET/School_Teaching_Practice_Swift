//
//  xibcell.swift
//  Demo2
//
//  Created by Alex on 2023/5/5.
//

import UIKit

class xibcell : UITableViewCell {

    @IBOutlet weak var title_Label: UILabel!
    @IBOutlet weak var itemTitle_Label: UILabel!
    @IBOutlet weak var itemDate_Label: UILabel!
    @IBOutlet weak var itemPrice_Label: UILabel!

    var titleString:String = "" {
        didSet {
            self.title_Label.text = titleString
        }
    }

    var itemTitleString:String = "" {
        didSet {
            self.itemTitle_Label.text = itemTitleString
        }
    }

    var itemDateString:String = "" {
        didSet {
            self.itemDate_Label.text = itemDateString
        }
    }

    var itemPriceString:String = "" {
        didSet {
            self.itemPrice_Label.text = itemPriceString
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }
}


