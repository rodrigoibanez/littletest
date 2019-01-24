//
//  NumberViewController.swift
//  LittleTest
//
//  Created by Rodrigo Ibañez on 1/24/19.
//  Copyright © 2019. All rights reserved.
//

import UIKit

enum NumberListType: String {

    case even = "even"
    case power = "power"
    case fibonacci = "fibonacci"
    case primes = "primes"

    func make() -> [String] {
        var numberList: NumberList! = NumberListEven()

        switch self {
        case .power:
            numberList = NumberListPower()
        case .fibonacci:
            numberList = NumberListFibonacci()
        case .even:
            numberList = NumberListEven()
        case .primes:
            numberList = NumberListPrimes()
        }

        return numberList.make()
    }
}

class NumberViewController: UIViewController {

    @IBOutlet private weak var tableView: UITableView!
    private var numberListType: NumberListType! {
        didSet {
            list = numberListType.make()
            tableView.reloadData()
        }
    }
    fileprivate var list: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        numberListType = .even
    }
    @IBAction func updateListAction(_ sender: UIBarButtonItem) {
        numberListType = NumberListType(rawValue: sender.title ?? "")
    }

}

extension NumberViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let number = list[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell.textLabel?.text = "\(indexPath.row + 1): \(number)"
            return cell
        }
        cell.textLabel?.text = "\(indexPath.row + 1): \(number)"
        return cell
    }
}
