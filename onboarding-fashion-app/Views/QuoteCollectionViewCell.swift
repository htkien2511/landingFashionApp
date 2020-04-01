//
//  QuoteCollectionViewCell.swift
//  onboarding-fashion-app
//
//  Created by Hoang Trong Kien on 4/1/20.
//  Copyright © 2020 Hoang Trong Kien. All rights reserved.
//

import UIKit

protocol QuoteCollectionViewCellDelegate: class {
    func didTapExploreButton()
}

class QuoteCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var exploreButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    weak var delegate: QuoteCollectionViewCellDelegate?
    
    func configure(with item: OnboardingItem) {
        titleLabel.text = item.title
        detailLabel.text = item.detail
    }
    
    func showExploreButton(shouldShow: Bool) {
        exploreButton.isHidden = !shouldShow
    }
    
    @IBAction func exploreButtonTapped(_ sender: Any) {
        delegate?.didTapExploreButton()
    }
}
