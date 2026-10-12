import SwiftUI

/// 基本情報技術者試験（FE） の出題分野（configs.py から生成。手で編集しない）。
/// ※配点比率は公式の出題範囲の分量からの近似値。最新は公式サイトで確認すること。
enum ExamDomain: String, CaseIterable, Codable, Identifiable {
    case theory
    case computer
    case techElem
    case security
    case dev
    case mgmt
    case strategy
    case algoB

    var id: String { rawValue }

    /// 出題比率の近似値（模試の出題配分・合格可能性スコアに使用）。合計1.0。
    var weight: Double {
        switch self {
        case .theory: return 0.14
        case .computer: return 0.12
        case .techElem: return 0.14
        case .security: return 0.14
        case .dev: return 0.08
        case .mgmt: return 0.12
        case .strategy: return 0.12
        case .algoB: return 0.14
        }
    }

    var title: String {
        switch self {
        case .theory: return "基礎理論・アルゴリズム"
        case .computer: return "コンピュータシステム"
        case .techElem: return "データベース・ネットワーク"
        case .security: return "情報セキュリティ"
        case .dev: return "開発技術"
        case .mgmt: return "マネジメント系"
        case .strategy: return "ストラテジ系"
        case .algoB: return "科目B アルゴリズム"
        }
    }

    var shortTitle: String {
        switch self {
        case .theory: return "基礎理論"
        case .computer: return "コンピュータ"
        case .techElem: return "DB・NW"
        case .security: return "セキュリティ"
        case .dev: return "開発技術"
        case .mgmt: return "マネジメント"
        case .strategy: return "ストラテジ"
        case .algoB: return "科目B"
        }
    }

    /// 章番号（並び順）
    var chapterNumber: Int {
        switch self {
        case .theory: return 1
        case .computer: return 2
        case .techElem: return 3
        case .security: return 4
        case .dev: return 5
        case .mgmt: return 6
        case .strategy: return 7
        case .algoB: return 8
        }
    }

    /// 配点を百分率の整数で（UI表示用）
    var weightPercent: Int { Int((weight * 100).rounded()) }

    var color: Color {
        switch self {
        case .theory: return Theme.navy
        case .computer: return Theme.blue
        case .techElem: return Theme.teal
        case .security: return Theme.rose
        case .dev: return Theme.purple
        case .mgmt: return Theme.indigo
        case .strategy: return Theme.orange
        case .algoB: return Theme.green
        }
    }

    var systemIcon: String {
        switch self {
        case .theory: return "function"
        case .computer: return "cpu"
        case .techElem: return "network"
        case .security: return "lock.shield.fill"
        case .dev: return "hammer.fill"
        case .mgmt: return "person.3.fill"
        case .strategy: return "chart.bar.xaxis"
        case .algoB: return "chevron.left.forwardslash.chevron.right"
        }
    }

}
