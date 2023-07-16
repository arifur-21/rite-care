// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SearchUserModelAdapter extends TypeAdapter<SearchUserModel> {
  @override
  final int typeId = 0;

  @override
  SearchUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SearchUserModel(
      id: fields[0] as dynamic,
      cellNo: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, SearchUserModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.cellNo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
