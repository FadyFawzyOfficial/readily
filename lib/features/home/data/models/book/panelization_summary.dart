import 'dart:convert';

import 'package:equatable/equatable.dart';

class PanelizationSummary extends Equatable {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;

  const PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  factory PanelizationSummary.fromMap(Map<String, dynamic> data) {
    return PanelizationSummary(
      containsEpubBubbles: data['containsEpubBubbles'] as bool?,
      containsImageBubbles: data['containsImageBubbles'] as bool?,
    );
  }

  Map<String, dynamic> toMap() => {
        'containsEpubBubbles': containsEpubBubbles,
        'containsImageBubbles': containsImageBubbles,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PanelizationSummary].
  factory PanelizationSummary.fromJson(String data) {
    return PanelizationSummary.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PanelizationSummary] to a JSON string.
  String toJson() => json.encode(toMap());

  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) {
    return PanelizationSummary(
      containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
      containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [containsEpubBubbles, containsImageBubbles];
}
