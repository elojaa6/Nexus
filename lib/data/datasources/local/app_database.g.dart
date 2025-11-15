// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $LinksTable extends Links with TableInfo<$LinksTable, Link>{
@override final GeneratedDatabase attachedDatabase;
final String? _alias;
$LinksTable(this.attachedDatabase, [this._alias]);
static const VerificationMeta _idMeta = const VerificationMeta('id');
@override
late final GeneratedColumn<int> id = GeneratedColumn<int>('id', aliasedName, false, hasAutoIncrement: true, type: DriftSqlType.int, requiredDuringInsert: false, defaultConstraints: GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
static const VerificationMeta _titleMeta = const VerificationMeta('title');
@override
late final GeneratedColumn<String> title = GeneratedColumn<String>('title', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _urlMeta = const VerificationMeta('url');
@override
late final GeneratedColumn<String> url = GeneratedColumn<String>('url', aliasedName, false, type: DriftSqlType.string, requiredDuringInsert: true);
static const VerificationMeta _positionMeta = const VerificationMeta('position');
@override
late final GeneratedColumn<int> position = GeneratedColumn<int>('position', aliasedName, false, type: DriftSqlType.int, requiredDuringInsert: true);
@override
List<GeneratedColumn> get $columns => [id, title, url, position];
@override
String get aliasedName => _alias ?? actualTableName;
@override
 String get actualTableName => $name;
static const String $name = 'links';
@override
VerificationContext validateIntegrity(Insertable<Link> instance, {bool isInserting = false}) {
final context = VerificationContext();
final data = instance.toColumns(true);
if (data.containsKey('id')) {
context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));}if (data.containsKey('title')) {
context.handle(_titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));} else if (isInserting) {
context.missing(_titleMeta);
}
if (data.containsKey('url')) {
context.handle(_urlMeta, url.isAcceptableOrUnknown(data['url']!, _urlMeta));} else if (isInserting) {
context.missing(_urlMeta);
}
if (data.containsKey('position')) {
context.handle(_positionMeta, position.isAcceptableOrUnknown(data['position']!, _positionMeta));} else if (isInserting) {
context.missing(_positionMeta);
}
return context;
}
@override
Set<GeneratedColumn> get $primaryKey => {id};
@override Link map(Map<String, dynamic> data, {String? tablePrefix})  {
final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';return Link(id: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}id'])!, title: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}title'])!, url: attachedDatabase.typeMapping.read(DriftSqlType.string, data['${effectivePrefix}url'])!, position: attachedDatabase.typeMapping.read(DriftSqlType.int, data['${effectivePrefix}position'])!, );
}
@override
$LinksTable createAlias(String alias) {
return $LinksTable(attachedDatabase, alias);}}class Link extends DataClass implements Insertable<Link> 
{
final int id;
final String title;
final String url;
final int position;
const Link({required this.id, required this.title, required this.url, required this.position});@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};map['id'] = Variable<int>(id);
map['title'] = Variable<String>(title);
map['url'] = Variable<String>(url);
map['position'] = Variable<int>(position);
return map; 
}
LinksCompanion toCompanion(bool nullToAbsent) {
return LinksCompanion(id: Value(id),title: Value(title),url: Value(url),position: Value(position),);
}
factory Link.fromJson(Map<String, dynamic> json, {ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return Link(id: serializer.fromJson<int>(json['id']),title: serializer.fromJson<String>(json['title']),url: serializer.fromJson<String>(json['url']),position: serializer.fromJson<int>(json['position']),);}
@override Map<String, dynamic> toJson({ValueSerializer? serializer}) {
serializer ??= driftRuntimeOptions.defaultSerializer;
return <String, dynamic>{
'id': serializer.toJson<int>(id),'title': serializer.toJson<String>(title),'url': serializer.toJson<String>(url),'position': serializer.toJson<int>(position),};}Link copyWith({int? id,String? title,String? url,int? position}) => Link(id: id ?? this.id,title: title ?? this.title,url: url ?? this.url,position: position ?? this.position,);Link copyWithCompanion(LinksCompanion data) {
return Link(
id: data.id.present ? data.id.value : this.id,title: data.title.present ? data.title.value : this.title,url: data.url.present ? data.url.value : this.url,position: data.position.present ? data.position.value : this.position,);
}
@override
String toString() {return (StringBuffer('Link(')..write('id: $id, ')..write('title: $title, ')..write('url: $url, ')..write('position: $position')..write(')')).toString();}
@override
 int get hashCode => Object.hash(id, title, url, position);@override
bool operator ==(Object other) => identical(this, other) || (other is Link && other.id == this.id && other.title == this.title && other.url == this.url && other.position == this.position);
}class LinksCompanion extends UpdateCompanion<Link> {
final Value<int> id;
final Value<String> title;
final Value<String> url;
final Value<int> position;
const LinksCompanion({this.id = const Value.absent(),this.title = const Value.absent(),this.url = const Value.absent(),this.position = const Value.absent(),});
LinksCompanion.insert({this.id = const Value.absent(),required String title,required String url,required int position,}): title = Value(title), url = Value(url), position = Value(position);
static Insertable<Link> custom({Expression<int>? id, 
Expression<String>? title, 
Expression<String>? url, 
Expression<int>? position, 
}) {
return RawValuesInsertable({if (id != null)'id': id,if (title != null)'title': title,if (url != null)'url': url,if (position != null)'position': position,});
}LinksCompanion copyWith({Value<int>? id, Value<String>? title, Value<String>? url, Value<int>? position}) {
return LinksCompanion(id: id ?? this.id,title: title ?? this.title,url: url ?? this.url,position: position ?? this.position,);
}
@override
Map<String, Expression> toColumns(bool nullToAbsent) {
final map = <String, Expression> {};if (id.present) {
map['id'] = Variable<int>(id.value);}
if (title.present) {
map['title'] = Variable<String>(title.value);}
if (url.present) {
map['url'] = Variable<String>(url.value);}
if (position.present) {
map['position'] = Variable<int>(position.value);}
return map; 
}
@override
String toString() {return (StringBuffer('LinksCompanion(')..write('id: $id, ')..write('title: $title, ')..write('url: $url, ')..write('position: $position')..write(')')).toString();}
}
abstract class _$AppDatabase extends GeneratedDatabase{
_$AppDatabase(QueryExecutor e): super(e);
$AppDatabaseManager get managers => $AppDatabaseManager(this);
late final $LinksTable links = $LinksTable(this);
@override
Iterable<TableInfo<Table, Object?>> get allTables => allSchemaEntities.whereType<TableInfo<Table, Object?>>();
@override
List<DatabaseSchemaEntity> get allSchemaEntities => [links];
}
typedef $$LinksTableCreateCompanionBuilder = LinksCompanion Function({Value<int> id,required String title,required String url,required int position,});
typedef $$LinksTableUpdateCompanionBuilder = LinksCompanion Function({Value<int> id,Value<String> title,Value<String> url,Value<int> position,});
class $$LinksTableFilterComposer extends Composer<
        _$AppDatabase,
        $LinksTable> {
        $$LinksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnFilters<int> get id => $composableBuilder(
      column: $table.id,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<String> get url => $composableBuilder(
      column: $table.url,
      builder: (column) => 
      ColumnFilters(column));
      
ColumnFilters<int> get position => $composableBuilder(
      column: $table.position,
      builder: (column) => 
      ColumnFilters(column));
      
        }
      class $$LinksTableOrderingComposer extends Composer<
        _$AppDatabase,
        $LinksTable> {
        $$LinksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<String> get url => $composableBuilder(
      column: $table.url,
      builder: (column) => 
      ColumnOrderings(column));
      
ColumnOrderings<int> get position => $composableBuilder(
      column: $table.position,
      builder: (column) => 
      ColumnOrderings(column));
      
        }
      class $$LinksTableAnnotationComposer extends Composer<
        _$AppDatabase,
        $LinksTable> {
        $$LinksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
          GeneratedColumn<int> get id => $composableBuilder(
      column: $table.id,
      builder: (column) => column);
      
GeneratedColumn<String> get title => $composableBuilder(
      column: $table.title,
      builder: (column) => column);
      
GeneratedColumn<String> get url => $composableBuilder(
      column: $table.url,
      builder: (column) => column);
      
GeneratedColumn<int> get position => $composableBuilder(
      column: $table.position,
      builder: (column) => column);
      
        }
      class $$LinksTableTableManager extends RootTableManager    <_$AppDatabase,
    $LinksTable,
    Link,
    $$LinksTableFilterComposer,
    $$LinksTableOrderingComposer,
    $$LinksTableAnnotationComposer,
    $$LinksTableCreateCompanionBuilder,
    $$LinksTableUpdateCompanionBuilder,
    (Link,BaseReferences<_$AppDatabase,$LinksTable,Link>),
    Link,
    PrefetchHooks Function()
    > {
    $$LinksTableTableManager(_$AppDatabase db, $LinksTable table) : super(
      TableManagerState(
        db: db,
        table: table,
        createFilteringComposer: () => $$LinksTableFilterComposer($db: db,$table:table),
        createOrderingComposer: () => $$LinksTableOrderingComposer($db: db,$table:table),
        createComputedFieldComposer: () => $$LinksTableAnnotationComposer($db: db,$table:table),
        updateCompanionCallback: ({Value<int> id = const Value.absent(),Value<String> title = const Value.absent(),Value<String> url = const Value.absent(),Value<int> position = const Value.absent(),})=> LinksCompanion(id: id,title: title,url: url,position: position,),
        createCompanionCallback: ({Value<int> id = const Value.absent(),required String title,required String url,required int position,})=> LinksCompanion.insert(id: id,title: title,url: url,position: position,),
        withReferenceMapper: (p0) => p0
              .map(
                  (e) =>
                     (e.readTable(table), BaseReferences(db, table, e))
                  )
              .toList(),
        prefetchHooksCallback: null,
        ));
        }
    typedef $$LinksTableProcessedTableManager = ProcessedTableManager    <_$AppDatabase,
    $LinksTable,
    Link,
    $$LinksTableFilterComposer,
    $$LinksTableOrderingComposer,
    $$LinksTableAnnotationComposer,
    $$LinksTableCreateCompanionBuilder,
    $$LinksTableUpdateCompanionBuilder,
    (Link,BaseReferences<_$AppDatabase,$LinksTable,Link>),
    Link,
    PrefetchHooks Function()
    >;class $AppDatabaseManager {
final _$AppDatabase _db;
$AppDatabaseManager(this._db);
$$LinksTableTableManager get links => $$LinksTableTableManager(_db, _db.links);
}
