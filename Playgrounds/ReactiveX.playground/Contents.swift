//: Playground - noun: a place where people can play

@testable import TMDbCore
import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//CREACION
//EMOJIS = Control + +CMD + Space

enum APIError : Error {
    case invalidKey
}


let empty = Observable<Int>.empty() // esto aqui solo admte u evento completed
let single = Observable.just("Hello") // emitir un evento next y un evento completed
let some = Observable.from(["😫", "😀"]) // next + next + completed

let error = Observable<Data>.error(APIError.invalidKey)

let hello = Observable<String>.create { observer in
    observer.onNext("hello")
    observer.onCompleted()
    
    return Disposables.create()
    
}


//SUBCRIPTION
hello.subscribe {event in
    switch event {
    case .next(let value):
        print(value)
    case .error(let error):
        print(error)
    case .completed:
        print("completed")
    }
}

//HttpRequest dentro de un observable

let session = URLSession(configuration: .default)
let url = URL(string: "https://randomuser.me/api")!

let randomUser = Observable<Data>.create { (observable) -> Disposable in
    let task = session.dataTask(with: url, completionHandler: { (data, response, error) in
        //TODO ??
        
        if let errorDes = error{
            observable.onError(errorDes)
        } else {
            observable.onNext(data ?? Data())
            observable.onCompleted()
        }
    })
    
    task.resume()
    
    //aqui libreamos todos los recursos que se han ido creando en el closure de subsiscripcion
    return Disposables.create {
        task.cancel()
    }
}

let disposable = randomUser.subscribe(onNext: { (data) in
    print(String(data: data,encoding: .utf8)!)
}, onError: { (error) in
    print(error)
}, onCompleted: {
    //
}) {
    //
}









