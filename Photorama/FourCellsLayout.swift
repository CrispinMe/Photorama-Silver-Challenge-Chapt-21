//
//  FourCellsLayout.swift
//  Photorama
//
//  Created by Crispin Lloyd on 17/04/2020.
//  Copyright © 2020 Big Nerd Ranch. All rights reserved.
//

import UIKit

class FourCellsLayout: UICollectionViewFlowLayout {
    
    //Override prepare func to display 4 cells only per encompassing as much as the screen as possible
    override func prepare() {
        super.prepare()
        
        //Access the UICollectionView for which the layout needs to be created
        guard let collectionView = collectionView else {return}
        
        let collectionViewWidth = collectionView.bounds.inset(by: collectionView.layoutMargins).width
        
        //Set the spacing between lines and items
        self.minimumLineSpacing = 2
        self.minimumInteritemSpacing = 2
        
        //Set the sectionInset - spacing above the collectionView section and either side
        let edgeSpacing = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.sectionInset = edgeSpacing
        
        
        //4 Cells per row requires 5 inter item columns, correct collectionViewWidth to account for inter item spacing
        let iteritemspacecorrectedWidth = collectionViewWidth - 10
        
        //Divide interitemspacecorrectedCollectionViewWidth by 4 to get the width value for the cells
        let fourCellsWidth = (iteritemspacecorrectedWidth / 4).rounded(.down)
         
        
        //Set the size for the cells within the collectionView
        self.itemSize = CGSize(width: fourCellsWidth, height: fourCellsWidth)
        
        
        
        
        
    }
}
