import Foundation

/// 資格ごとに変わる値をここに集約する（configs.py から生成。手で編集しない）。
enum ExamInfo {
    static let appName = "FEnote"
    /// ホームのワードマークで強調する頭文字（例："FE"note）
    static let brandPrefix = "FE"
    static let examShortName = "基本情報技術者試験"
    static let examFullName = "基本情報技術者試験（FE）"
    static let officialSite = "IPA公式サイト（ipa.go.jp）"
    static let organizerNotice = "「基本情報技術者試験」は独立行政法人情報処理推進機構（IPA）が実施する国家試験です。本アプリは非公式の学習支援アプリです。"
    /// 本番模試の問題数と制限時間
    static let mockCount = 60
    static let mockMinutes = 90
    /// 合格ライン（1000点満点＝正答率×1000）
    static let passScore = 600
    static let mockNote = "本番は科目A（60問・90分・四肢択一）と科目B（20問・100分・擬似言語のアルゴリズムと情報セキュリティ）で、各1000点満点中600点以上が合格（IRT方式）。この模試は科目A形式に科目B対策の問題を混ぜた60問です。CBT試験は2026年12月28日以降いったん休止し、2027年度から新制度へ移行予定。最新はIPA公式でご確認ください。"
    static let servicesTitle = "頻出キーワード一覧"
    static let servicesSubtitle = "略語・用語・計算式をカテゴリ別に確認"
    static let servicesSearchPlaceholder = "キーワードを検索"

    struct NextCert { let title: String; let subtitle: String }
    static let nextCerts: [NextCert] = [
        .init(title: "応用情報技術者試験", subtitle: "設計・管理まで広く深く問う上位区分"),
        .init(title: "情報セキュリティマネジメント試験", subtitle: "セキュリティ管理の実務力を証明"),
        .init(title: "AWS認定 クラウドプラクティショナー", subtitle: "クラウドの基礎を証明"),
    ]

    /// 直前チェックリスト
    static let finalChecklist: [String] = [
        "2進数・16進数の変換と2の補数を手で計算できる",
        "稼働率（直列・並列）とMTBF・MTTRの式を書ける",
        "キャッシュのヒット率から実効アクセス時間を求められる",
        "正規化（第1〜第3正規形）とSQLのSELECT・JOIN・GROUP BYを読める",
        "IPアドレスとサブネットマスクからネットワーク部・ホスト数を求められる",
        "共通鍵暗号・公開鍵暗号・デジタル署名・PKIの役割を区別できる",
        "SQLインジェクション・XSS・CSRFの仕組みと対策を言える",
        "アローダイアグラムのクリティカルパスとEVMの指標を読める",
        "擬似言語の配列（添字は1から）・if・for・whileを紙でトレースできる",
        "損益分岐点・財務指標・SWOT・PPMを説明できる",
        "受験会場・本人確認書類・CBTの操作方法を確認した",
    ]

    /// 直前に見直す重要用語カードのID（terms.json の t-key1〜6）
    static let keyTermIds = ["t-key1", "t-key2", "t-key3", "t-key4", "t-key5", "t-key6"]

    /// 完全初心者向け 8週間の標準ロードマップ
    static let roadmap: [WeekGoal] = [
        .init(week: 1, title: "基礎理論とアルゴリズム", detail: "基数変換・2の補数／論理演算／確率統計／データ構造（スタック・キュー・木）／探索と整列", domains: [.theory]),
        .init(week: 2, title: "コンピュータシステム", detail: "CPU・キャッシュ／稼働率・MTBF／RAID／OSと仮想記憶／論理回路", domains: [.computer]),
        .init(week: 3, title: "データベース・ネットワーク", detail: "正規化とSQL／トランザクション／TCP/IPとサブネット計算／画像・音声のデータ量", domains: [.techElem]),
        .init(week: 4, title: "情報セキュリティ", detail: "攻撃手法と対策／暗号・署名・PKI／ISMSとリスク対応", domains: [.security]),
        .init(week: 5, title: "開発技術とマネジメント", detail: "テスト技法・アジャイル・UML／アローダイアグラム・EVM／ITIL・SLA／システム監査", domains: [.dev, .mgmt]),
        .init(week: 6, title: "ストラテジ系", detail: "財務・損益分岐点／知的財産・労働法／SWOT・PPM・4P／EA・RFP", domains: [.strategy]),
        .init(week: 7, title: "科目B アルゴリズム", detail: "擬似言語を紙でトレース／探索・整列・再帰／セキュリティ事例", domains: [.algoB]),
        .init(week: 8, title: "模擬試験と直前対策", detail: "全分野横断の模試→間違えた問題の集中復習→計算問題の総仕上げ", domains: ExamDomain.allCases),
    ]
}
