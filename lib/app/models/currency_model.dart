class CurrencyModel {
  final String name;
  final double real;
  final double dolar;
  final double euro;
  final double bitcoin;

  CurrencyModel({
    required this.name,
    required this.real,
    required this.dolar,
    required this.euro,
    required this.bitcoin,
  });

  static List<CurrencyModel> getCurrencies() {
    return <CurrencyModel>[
      CurrencyModel(
        name: 'Real',
        real: 1,
        dolar: 1 / 3.5,
        euro: 1 / 4.5,
        bitcoin: 1 / 0.0003,
      ),
      CurrencyModel(
        name: 'Dolar',
        real: 3.5,
        dolar: 1,
        euro: 1 / 4.5,
        bitcoin: 1 / 0.0003,
      ),
      CurrencyModel(
        name: 'Euro',
        real: 4.5,
        dolar: 1 / 3.5,
        euro: 1,
        bitcoin: 1 / 0.0003,
      ),
      CurrencyModel(
        name: 'Bitcoin',
        real: 0.0003,
        dolar: 1 / 3.5,
        euro: 1 / 4.5,
        bitcoin: 1,
      ),
    ];
  }
}
