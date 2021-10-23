//
//  ProfileCell.swift
//  InstagramCloneFirestore
//
//  Created by Caleb Danielsen on 12/10/2021.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    var viewModel: PostViewModel? {
        didSet { configure()}
    }
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "color_flame")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .lightGray
        
        addSubview(postImageView)
        postImageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Action
    
    func configure() {
        guard let viewModel = viewModel else { return }
        
        postImageView.sd_setImage(with: viewModel.imageUrl)
    }
}
