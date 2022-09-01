//
//  FocusCell.swift
//  HeadSpaceFocus
//
//  Created by 백소망 on 2022/09/02.
//

import UIKit

class FocusCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    // 셀의 파일이 스토리보드에서 깨어났을 때
    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.backgroundColor = UIColor.systemIndigo
        contentView.layer.cornerRadius = 10
    }
    
    func configure(_ item: Focus) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumbnailImageView.image = UIImage(systemName: "\(item.imageName)")?.withRenderingMode(.alwaysOriginal)
    }
}
