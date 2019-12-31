import 'package:json_annotation/json_annotation.dart';

part 'notification.g.dart';

@JsonSerializable(
  nullable: false,
  ignoreUnannotated: false,
  anyMap: true,
)
class AppNotification extends Comparable<AppNotification> {
  @JsonKey(nullable: true)
  final String title;
  @JsonKey(nullable: true)
  final DateTime dateTime;
  @JsonKey(nullable: true)
  final String content;
  @JsonKey(nullable: true)
  final bool important;

  AppNotification(this.title, this.dateTime, this.content, this.important);

  factory AppNotification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
  Map<String, dynamic> toJson() => _$NotificationToJson(this);

  @override
  int compareTo(other) {
    return -dateTime.compareTo(other?.dateTime);
  }
}
