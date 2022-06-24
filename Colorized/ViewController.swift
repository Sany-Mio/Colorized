//
//  ViewController.swift
//  Colorized
//
//  Created by M.Art on 24.06.2022.
//

import UIKit

class ViewController: UIViewController {

// MARK: - IB Outlets

    @IBOutlet var viewColor: UIView!

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()
        viewColor.layer.cornerRadius = 10
        setupLabels()
        setupSliders()
        setColorView()
    }
// MARK: - IB Actions

    @IBAction func rgbSlidersActions(_ sender: UISlider) {
        setColorView()
        setupLabels()
    }

        // MARK: - Private Methods

    private func setupLabels() {
        redLabel.text = roundedStrings(from: redSlider)
        greenLabel.text = roundedStrings(from: greenSlider)
        blueLabel.text = roundedStrings(from: blueSlider)
    }

    private func setupSliders() {
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        greenSlider.minimumValue = 0.0
        greenSlider.maximumValue = 1.0
        blueSlider.minimumValue = 0.0
        blueSlider.maximumValue = 1.0
    }

    private func setColorView() {
        viewColor.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

    private func roundedStrings(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

