import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner.freezed.dart';

part 'owner.g.dart';

@freezed
class Owner with _$Owner {
  const factory Owner({
    @JsonKey(name: 'login') @Default("") String name,
    @JsonKey(name: 'avatar_url') @Default("") String avatarUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
