import 'dart:convert';

class Fact {
  final String fact;
  final int length;

  Fact({
    required this.fact,
    required this.length,
  });

  factory Fact.fromMap(Map<String, dynamic> map) => Fact(
        fact: map['fact'] as String,
        length: map['length'] as int,
      );

  factory Fact.fromJson(String source) => Fact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Fact(fact: $fact, length: $length)';
}
