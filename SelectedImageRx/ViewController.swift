//
//  ViewController.swift
//  SelectedImageRx
//
//  Created by Jean Paul Borges Manzini on 09/05/22.
//

import RxSwift

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    
    let selectedImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        title = "Selected Images"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let getImageBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.goPhotoLibrary))
        
        navigationItem.rightBarButtonItem = getImageBarButton
        
        view.addSubview(selectedImage)
        selectedImage.applyViewIntoSuperView()
        
    }
    
    @objc
    fileprivate func goPhotoLibrary(){
        let layout = UICollectionViewFlowLayout()
        let libraryVC = SelectedImageCollectionViewController(collectionViewLayout: layout)
        
        libraryVC.selectedPhoto.subscribe(onNext: { [weak self] photo in
            self?.selectedImage.image = photo
        }).disposed(by: disposeBag)
        
        self.present(libraryVC, animated: true)
    }
    
    
}

