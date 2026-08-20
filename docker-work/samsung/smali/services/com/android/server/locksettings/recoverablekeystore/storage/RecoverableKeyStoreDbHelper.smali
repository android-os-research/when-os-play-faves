.class public Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "RecoverableKeyStoreDbHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "recoverablekeystore.db"

.field public static final DATABASE_VERSION:I = 0x6

.field public static final SQL_CREATE_KEYS_ENTRY:Ljava/lang/String; = "CREATE TABLE keys( _id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,alias TEXT,nonce BLOB,wrapped_key BLOB,platform_key_generation_id INTEGER,last_synced_at INTEGER,recovery_status INTEGER,key_metadata BLOB,UNIQUE(uid,alias))"

.field public static final SQL_CREATE_RECOVERY_SERVICE_METADATA_ENTRY:Ljava/lang/String; = "CREATE TABLE recovery_service_metadata (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,snapshot_version INTEGER,should_create_snapshot INTEGER,active_root_of_trust TEXT,public_key BLOB,cert_path BLOB,cert_serial INTEGER,secret_types TEXT,counter_id INTEGER,server_params BLOB,UNIQUE(user_id,uid))"

.field public static final SQL_CREATE_ROOT_OF_TRUST_ENTRY:Ljava/lang/String; = "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEXT,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

.field public static final SQL_CREATE_USER_METADATA_ENTRY:Ljava/lang/String; = "CREATE TABLE user_metadata( _id INTEGER PRIMARY KEY,user_id INTEGER UNIQUE,platform_key_generation_id INTEGER,user_serial_number INTEGER DEFAULT -1)"

.field public static final SQL_DELETE_KEYS_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS keys"

.field public static final SQL_DELETE_RECOVERY_SERVICE_METADATA_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS recovery_service_metadata"

.field public static final SQL_DELETE_ROOT_OF_TRUST_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS root_of_trust"

.field public static final SQL_DELETE_USER_METADATA_ENTRY:Ljava/lang/String; = "DROP TABLE IF EXISTS user_metadata"

.field public static final TAG:Ljava/lang/String; = "RecoverableKeyStoreDbHp"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "recoverablekeystore.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 104
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecoverableKeyStoreDbHp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ALTER TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ADD COLUMN "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_60

    .line 203
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_60

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DEFAULT "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    :cond_60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "DROP TABLE IF EXISTS keys"

    .line 156
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS user_metadata"

    .line 157
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS recovery_service_metadata"

    .line 158
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS root_of_trust"

    .line 159
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE keys( _id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,alias TEXT,nonce BLOB,wrapped_key BLOB,platform_key_generation_id INTEGER,last_synced_at INTEGER,recovery_status INTEGER,key_metadata BLOB,UNIQUE(uid,alias))"

    .line 109
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE user_metadata( _id INTEGER PRIMARY KEY,user_id INTEGER UNIQUE,platform_key_generation_id INTEGER,user_serial_number INTEGER DEFAULT -1)"

    .line 110
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE recovery_service_metadata (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,snapshot_version INTEGER,should_create_snapshot INTEGER,active_root_of_trust TEXT,public_key BLOB,cert_path BLOB,cert_serial INTEGER,secret_types TEXT,counter_id INTEGER,server_params BLOB,UNIQUE(user_id,uid))"

    .line 111
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEXT,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    .line 112
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p2, "RecoverableKeyStoreDbHp"

    const-string p3, "Recreating recoverablekeystore after unexpected version downgrade."

    .line 117
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const/4 v0, 0x2

    if-ge p2, v0, :cond_a

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->dropAllKnownTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_a
    const/4 v0, 0x3

    if-ge p2, v0, :cond_13

    if-lt p3, v0, :cond_13

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion3(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_13
    const/4 v0, 0x4

    if-ge p2, v0, :cond_1c

    if-lt p3, v0, :cond_1c

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_1c
    const/4 v0, 0x5

    if-ge p2, v0, :cond_25

    if-lt p3, v0, :cond_25

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_25
    const/4 v0, 0x6

    if-ge p2, v0, :cond_2e

    if-lt p3, v0, :cond_2e

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->upgradeDbForVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    move p2, v0

    :cond_2e
    if-eq p2, p3, :cond_37

    const-string p0, "RecoverableKeyStoreDbHp"

    const-string p1, "Failed to update recoverablekeystore database to the most recent version"

    .line 151
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-void
.end method

.method public final upgradeDbForVersion3(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string/jumbo p0, "recovery_service_metadata"

    const-string v0, "cert_path"

    const-string v1, "BLOB"

    const/4 v2, 0x0

    .line 164
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cert_serial"

    const-string v1, "INTEGER"

    .line 166
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final upgradeDbForVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string p0, "RecoverableKeyStoreDbHp"

    const-string v0, "Updating recoverable keystore database to version 4"

    .line 172
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "CREATE TABLE root_of_trust (_id INTEGER PRIMARY KEY,user_id INTEGER,uid INTEGER,root_alias TEXT,cert_path BLOB,cert_serial INTEGER,UNIQUE(user_id,uid,root_alias))"

    .line 174
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string/jumbo p0, "recovery_service_metadata"

    const-string v0, "active_root_of_trust"

    const-string v1, "TEXT"

    const/4 v2, 0x0

    .line 176
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final upgradeDbForVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string p0, "RecoverableKeyStoreDbHp"

    const-string v0, "Updating recoverable keystore database to version 5"

    .line 182
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "keys"

    const-string/jumbo v0, "key_metadata"

    const-string v1, "BLOB"

    const/4 v2, 0x0

    .line 184
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final upgradeDbForVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string p0, "RecoverableKeyStoreDbHp"

    const-string v0, "Updating recoverable keystore database to version 6"

    .line 189
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "user_metadata"

    const-string/jumbo v0, "user_serial_number"

    const-string v1, "INTEGER DEFAULT -1"

    const/4 v2, 0x0

    .line 191
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDbHelper;->addColumnToTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
