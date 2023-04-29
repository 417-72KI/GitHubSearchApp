import UIKit

/// 画像の容量を下げる事い使用する
extension UIImage {
    /// 画像サイズを圧縮
    func resize() -> UIImage {
        let size = CGSize(width: self.size.width * 0.2, height: self.size.height * 0.2)

        return UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }

    /// 画像容量の取得 (KB) デバッグ用
    func checkImageData() {
        let imageData = NSData(data: self.jpegData(compressionQuality: 1)!).count
        print("🐕", Double(imageData) / 1000.0, "KB")
    }
}
