//
//  DailyWeatherTableViewCell.swift
//  WeatherTest
//
//  Created by Zimma on 21.06.2018.
//  Copyright © 2018 Zimma. All rights reserved.
//

import UIKit

class DailyWeatherTableViewCell: UITableViewCell {

    @IBOutlet weak var dataLbl: UILabel!
    @IBOutlet weak var temperaturLbl: UILabel!
    @IBOutlet weak var iconLbl: UIImageView!
    @IBOutlet weak var summaryLbl: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
