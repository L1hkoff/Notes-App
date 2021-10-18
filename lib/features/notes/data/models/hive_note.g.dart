// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_note.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveNoteAdapter extends TypeAdapter<HiveNote> {
  @override
  final int typeId = 0;

  @override
  HiveNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveNote(
      title: fields[0] as String,
      text: fields[1] as String,
      date: fields[2] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, HiveNote obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.text)
      ..writeByte(2)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
