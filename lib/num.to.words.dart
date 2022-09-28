String numberToWords(int value, {bool addAnd = true}) {
  if (value < 0) return 'negative ${numberToWords(value.abs())}';
  if (value == 0) return _unitNames[value];

  final parts = <String>[];
  for (final placeValue in _placeValues) {
    final quantity = value ~/ placeValue.value;
    if (quantity > 0) {
      parts.add('${numberToWords(quantity)} ${placeValue.name}');
      value %= placeValue.value;
    }
  }

  if (value > 0) {
    if (parts.isNotEmpty && addAnd) parts.add('and');
    if (value < 20) {
      parts.add(_unitNames[value]);
    } else {
      var lastPart = _tensNames[value ~/ 10];
      if ((value % 10) > 0) lastPart = '$lastPart-${_unitNames[value % 10]}';
      parts.add(lastPart);
    }
  }
  return parts.join(' ');
}

final _unitNames = [
  'zero',
  'one',
  'two',
  'three',
  'four',
  'five',
  'six',
  'seven',
  'eight',
  'nine',
  'ten',
  'eleven',
  'twelve',
  'thirteen',
  'fourteen',
  'fifteen',
  'sixteen',
  'seventeen',
  'eighteen',
  'nineteen',
];

final _tensNames = [
  'zero',
  'ten',
  'twenty',
  'thirty',
  'forty',
  'fifty',
  'sixty',
  'seventy',
  'eighty',
  'ninety',
];

const _placeValues = [
  _PlaceValue('quintillion', 1000000000000000000),
  _PlaceValue('quadrillion', 1000000000000000),
  _PlaceValue('trillion', 1000000000000),
  _PlaceValue('billion', 1000000000),
  _PlaceValue('million', 1000000),
  _PlaceValue('thousand', 1000),
  _PlaceValue('hundred', 100),
];

class _PlaceValue {
  const _PlaceValue(this.name, this.value);

  final String name;
  final int value;
}
