class CurrencyModel {
  final String name;
  final double brl;
  final double usd;
  final double eur;
  final double btc;

  CurrencyModel({
    this.name,
    this.brl,
    this.usd,
    this.eur,
    this.btc,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'brl',
        brl: 1,
        usd: 0.18,
        eur: 0.15,
        btc: 0.000016,
      ),
      CurrencyModel(
        name: 'usd',
        brl: 3.5,
        usd: 1,
        eur: 0.85,
        btc: 0.000088,
      ),
      CurrencyModel(
        name: 'eur',
        brl: 4.5,
        usd: 1.17,
        eur: 1,
        btc: 0.00010,
      ),
      CurrencyModel(
        name: 'btc',
        brl: 64116.51,
        usd: 11351.30,
        eur: 9689.54,
        btc: 1,
      ),
    ];
  }
}
