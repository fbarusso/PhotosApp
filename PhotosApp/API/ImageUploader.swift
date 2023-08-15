//
//  ImageUploader.swift
//  PhotosApp
//
//  Created by Felipe Barusso on 14/08/23.
//

import UIKit
import FirebaseStorage

struct ImageUploader {
    static func uploadImage(image: UIImage, completion: @escaping (String) -> Void) {
        guard let imageData = image.jpegData(compressionQuality: 0.75) else { return }
        let filename = NSUUID().uuidString
        let reference = Storage.storage().reference(withPath: "/profile_images/\(filename)")
        reference.putData(imageData) { metadata, error in
            if let error = error {
                print("DEBUG: Failed to upload image: \(error.localizedDescription)")
            } else {
                reference.downloadURL { url, error in
                    if let error = error {
                        print("DEBUG: Failed to upload image: \(error.localizedDescription)")
                    } else {
                        guard let imageUrl = url?.absoluteString else { return }
                        completion(imageUrl)
                    }
                }
            }
        }
    }
}
