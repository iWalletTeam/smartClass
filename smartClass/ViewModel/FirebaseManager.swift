//
//  FirebaseManager.swift
//  smartClass
//
//  Created by Ислам Батыргереев on 19.06.2023.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift

@MainActor
class FirebaseManager: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: UserModel?

    init (){
       // self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }
    }
    
    func singIn(withEmail email: String, password: String) async throws{
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()
        }catch{
            print ("Debug: sing in \(error.localizedDescription)")
        }
    }
    
    func createUser (withEmail email: String, password: String, surname: String, firstName: String, fatherName: String, birthDate: Date, university: String, specialtyState: String, group: String, courseState: String) async throws{
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = UserModel(id: result.user.uid, email: email, password: password, surname: surname, firstName: firstName, fatherName: fatherName, birthDate: birthDate, university: university, specialty: specialtyState, group: group, course: courseState)
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.id).setData(encodedUser)
            await fetchUser()
        } catch {
            print ("Debug: create user\(error.localizedDescription)")
        }
    }
    
    func singOut(){
        do {
            try Auth.auth().signOut()
            self.userSession = nil
            self.currentUser = nil
        } catch{
            print("Debug: error sing out: \(error.localizedDescription)")
        }
        
    }
    
    func deleteAccount(){
        
    }
    
    func fetchUser() async {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else {return}
        self.currentUser = try? snapshot.data(as: UserModel.self)
        
        print ("Debug: \(String(describing: self.currentUser))")
    }
}

