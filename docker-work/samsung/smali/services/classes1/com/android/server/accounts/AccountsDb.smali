.class public Lcom/android/server/accounts/AccountsDb;
.super Ljava/lang/Object;
.source "AccountsDb.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;,
        Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field public static final ACCOUNTS_LAST_AUTHENTICATE_TIME_EPOCH_MILLIS:Ljava/lang/String; = "last_password_entry_time_millis_epoch"

.field public static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field public static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field public static final ACCOUNTS_PREVIOUS_NAME:Ljava/lang/String; = "previous_name"

.field public static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field public static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field public static final ACCOUNT_ACCESS_GRANTS:Ljava/lang/String; = "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

.field public static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

.field public static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field public static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field public static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field public static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field public static final CE_DATABASE_NAME:Ljava/lang/String; = "accounts_ce.db"

.field public static final CE_DATABASE_VERSION:I = 0xa

.field public static final CE_DB_PREFIX:Ljava/lang/String; = "ceDb."

.field public static final CE_TABLE_ACCOUNTS:Ljava/lang/String; = "ceDb.accounts"

.field public static final CE_TABLE_AUTHTOKENS:Ljava/lang/String; = "ceDb.authtokens"

.field public static final CE_TABLE_EXTRAS:Ljava/lang/String; = "ceDb.extras"

.field public static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

.field public static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

.field public static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field public static final COUNT_OF_MATCHING_GRANTS_ANY_TOKEN:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

.field public static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field public static DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String; = "action_account_add"

.field public static DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String; = "action_account_remove"

.field public static DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String; = "action_account_remove_de"

.field public static DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String; = "action_account_rename"

.field public static DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String; = "action_authenticator_remove"

.field public static DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String; = "action_called_account_add"

.field public static DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String; = "action_called_account_remove"

.field public static DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String; = "action_called_account_session_finish"

.field public static DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String; = "action_called_start_account_add"

.field public static DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String; = "action_clear_password"

.field public static DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String; = "action_set_password"

.field public static DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String; = "action_sync_de_ce_accounts"

.field public static DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String; = "action_type"

.field public static DEBUG_TABLE_CALLER_UID:Ljava/lang/String; = "caller_uid"

.field public static DEBUG_TABLE_KEY:Ljava/lang/String; = "primary_key"

.field public static DEBUG_TABLE_TABLE_NAME:Ljava/lang/String; = "table_name"

.field public static DEBUG_TABLE_TIMESTAMP:Ljava/lang/String; = "time"

.field public static final DE_DATABASE_NAME:Ljava/lang/String; = "accounts_de.db"

.field public static final DE_DATABASE_VERSION:I = 0x3

.field public static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field public static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field public static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field public static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field public static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field public static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field public static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field public static final MAX_DEBUG_DB_SIZE:I = 0x40

.field public static final META_KEY:Ljava/lang/String; = "key"

.field public static final META_KEY_DELIMITER:Ljava/lang/String; = ":"

.field public static final META_KEY_FOR_AUTHENTICATOR_UID_FOR_TYPE_PREFIX:Ljava/lang/String; = "auth_uid_for_type:"

.field public static final META_VALUE:Ljava/lang/String; = "value"

.field public static final PRE_N_DATABASE_VERSION:I = 0x9

.field public static final SELECTION_ACCOUNTS_ID_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field public static final SELECTION_META_BY_AUTHENTICATOR_TYPE:Ljava/lang/String; = "key LIKE ?"

.field public static final SHARED_ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field public static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field public static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field public static TABLE_DEBUG:Ljava/lang/String; = "debug_table"

.field public static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field public static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field public static final TABLE_META:Ljava/lang/String; = "meta"

.field public static final TABLE_SHARED_ACCOUNTS:Ljava/lang/String; = "shared_accounts"

.field public static final TABLE_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TAG:Ljava/lang/String; = "AccountsDb"

.field public static final VISIBILITY_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field public static final VISIBILITY_PACKAGE:Ljava/lang/String; = "_package"

.field public static final VISIBILITY_VALUE:Ljava/lang/String; = "value"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

.field public volatile mDebugDbInsertionPoint:J

.field public volatile mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

.field public final mDebugStatementLock:Ljava/lang/Object;

.field public final mPreNDatabaseFile:Ljava/io/File;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDEBUG_TABLE_ACTION_TYPE()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_ACTION_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_TABLE_CALLER_UID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_CALLER_UID:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_TABLE_KEY()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_TABLE_TABLE_NAME()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TABLE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG_TABLE_TIMESTAMP()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTABLE_DEBUG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smresetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/accounts/AccountsDb;->resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "type"

    const-string v1, "count(type)"

    .line 144
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v1, "authtoken"

    .line 165
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string/jumbo v0, "key"

    const-string/jumbo v1, "value"

    .line 168
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V
    .registers 6

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 188
    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 192
    iput-object p1, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 193
    iput-object p2, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    .line 194
    iput-object p3, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    return-void
.end method

.method public static create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb;
    .registers 7

    .line 1397
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1398
    new-instance v1, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 1399
    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p3, v2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper-IA;)V

    if-nez v0, :cond_28

    .line 1401
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_28

    .line 1404
    new-instance p3, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;

    .line 1405
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/accounts/AccountsDb$PreNDatabaseHelper;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1407
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 1408
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 1410
    invoke-static {v1, p2}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->-$$Nest$mmigratePreNDbToDe(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Ljava/io/File;)V

    .line 1412
    :cond_28
    new-instance p1, Lcom/android/server/accounts/AccountsDb;

    invoke-direct {p1, v1, p0, p2}, Lcom/android/server/accounts/AccountsDb;-><init>(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Landroid/content/Context;Ljava/io/File;)V

    return-object p1
.end method

.method public static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .registers 3

    .line 1390
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was not deleted successfully"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountsDb"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static resetDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    const-string v0, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    const/4 v1, 0x0

    .line 1419
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1420
    :cond_7
    :goto_7
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 1421
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android_metadata"

    .line 1423
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "sqlite_sequence"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_7

    .line 1426
    :cond_24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TABLE IF EXISTS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_71

    goto :goto_7

    .line 1428
    :cond_39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v0, "SELECT name FROM sqlite_master WHERE type =\'trigger\'"

    .line 1430
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1431
    :goto_42
    :try_start_42
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1432
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_65

    goto :goto_42

    .line 1435
    :cond_61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_65
    move-exception p0

    if-eqz v0, :cond_70

    .line 1430
    :try_start_68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw p0

    :catchall_71
    move-exception p0

    if-eqz v0, :cond_7c

    .line 1419
    :try_start_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7c
    :goto_7c
    throw p0
.end method


# virtual methods
.method public attachCeDatabase(Ljava/io/File;)V
    .registers 5

    .line 1290
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mPreNDatabaseFile:Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;->create(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountsDb$CeDatabaseHelper;

    .line 1291
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ATTACH DATABASE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AS ceDb"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1293
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->-$$Nest$fputmCeAttached(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;Z)V

    return-void
.end method

.method public beginTransaction()V
    .registers 1

    .line 1278
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public calculateDebugTableInsertionPoint()J
    .registers 5

    .line 1302
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT COUNT(*) FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1304
    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x40

    if-ge v0, v2, :cond_25

    int-to-long v0, v0

    return-wide v0

    .line 1311
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ORDER BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIMIT 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5f} :catch_60

    return-wide v0

    :catch_60
    move-exception p0

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open debug table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountsDb"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public close()V
    .registers 1

    .line 1386
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method public closeDebugStatement()V
    .registers 3

    .line 1349
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v1, :cond_f

    .line 1351
    iget-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const/4 v1, 0x0

    .line 1352
    iput-object v1, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 1354
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    .line 1325
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT OR REPLACE INTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    return-object p0
.end method

.method public deleteAccountVisibilityForPackage(Ljava/lang/String;)Z
    .registers 6

    .line 1030
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "visibility"

    const-string v3, "_package=? "

    .line 1031
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0
.end method

.method public deleteAuthToken(Ljava/lang/String;)Z
    .registers 6

    .line 375
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ceDb.authtokens"

    const-string v3, "_id= ?"

    .line 376
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    return v0
.end method

.method public deleteAuthTokensByAccountId(J)Z
    .registers 6

    .line 410
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 412
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "ceDb.authtokens"

    const-string v2, "accounts_id=?"

    .line 411
    invoke-virtual {p0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, p2

    :goto_1c
    return v0
.end method

.method public deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z
    .registers 6

    .line 368
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 371
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const-string p3, "ceDb.authtokens"

    const-string v1, "accounts_id=? AND type=?"

    .line 369
    invoke-virtual {p0, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1e

    move p2, p1

    :cond_1e
    return p2
.end method

.method public deleteCeAccount(J)Z
    .registers 5

    .line 1268
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ceDb.accounts"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public deleteDeAccount(J)Z
    .registers 5

    .line 698
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "accounts"

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z
    .registers 7

    .line 870
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 874
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const/4 p1, 0x1

    aput-object p3, v0, p1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    const-string/jumbo p3, "grants"

    const-string p4, "accounts_id=? AND auth_token_type=? AND uid=?"

    .line 871
    invoke-virtual {p0, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_26

    move p2, p1

    :cond_26
    return p2
.end method

.method public deleteGrantsByUid(I)Z
    .registers 6

    .line 916
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 918
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo p1, "grants"

    const-string/jumbo v3, "uid=?"

    .line 917
    invoke-virtual {p0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z
    .registers 6

    .line 1077
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth_uid_for_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1083
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string/jumbo p1, "meta"

    const-string/jumbo v2, "key=? AND value=?"

    .line 1078
    invoke-virtual {p0, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_31

    move v1, p2

    :cond_31
    return v1
.end method

.method public deleteSharedAccount(Landroid/accounts/Account;)Z
    .registers 6

    .line 712
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 713
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string/jumbo p1, "shared_accounts"

    const-string/jumbo v3, "name=? AND type=?"

    invoke-virtual {p0, p1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_20

    move v2, v1

    :cond_20
    return v2
.end method

.method public dumpDeAccountsTable(Ljava/io/PrintWriter;)V
    .registers 10

    .line 787
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 788
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const-string v1, "accounts"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 792
    :goto_15
    :try_start_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_41

    goto :goto_15

    .line 798
    :cond_3d
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_41
    move-exception p1

    if-eqz p0, :cond_47

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_47
    throw p1
.end method

.method public dumpDebugTable(Ljava/io/PrintWriter;)V
    .registers 11

    const-string v0, ","

    .line 1367
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1368
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->TABLE_DEBUG:Ljava/lang/String;

    sget-object v8, Lcom/android/server/accounts/AccountsDb;->DEBUG_TABLE_TIMESTAMP:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-string v1, "AccountId, Action_Type, timestamp, UID, TableName, Key"

    .line 1370
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Accounts History"

    .line 1371
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    :goto_1f
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 1376
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 1377
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1375
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_1f .. :try_end_70} :catchall_75

    goto :goto_1f

    .line 1380
    :cond_71
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_75
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1381
    throw p1
.end method

.method public endTransaction()V
    .registers 1

    .line 1286
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public findAccountLastAuthenticatedTime(Landroid/accounts/Account;)J
    .registers 5

    .line 767
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 768
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    invoke-static {p0, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 483
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p1, v4, p0

    const/4 p1, 0x1

    aput-object p2, v4, p1

    const-string/jumbo p1, "password"

    .line 486
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "ceDb.accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 487
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 489
    :try_start_22
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_30

    .line 490
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_35

    .line 493
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :cond_30
    const/4 p0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_35
    move-exception p0

    if-eqz p1, :cond_40

    .line 487
    :try_start_38
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_40
    :goto_40
    throw p0
.end method

.method public findAccountVisibility(JLjava/lang/String;)Ljava/lang/Integer;
    .registers 12

    .line 946
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "value"

    .line 947
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 949
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 p0, 0x1

    aput-object p3, v4, p0

    const-string/jumbo v1, "visibility"

    const-string v3, "accounts_id=? AND _package=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 947
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 951
    :try_start_26
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 952
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_3d

    .line 955
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_38
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_3d
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 956
    throw p1
.end method

.method public findAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 12

    .line 931
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "value"

    .line 932
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x3

    new-array v4, p0, [Ljava/lang/String;

    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const/4 p0, 0x2

    aput-object p2, v4, p0

    const-string/jumbo v1, "visibility"

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?) AND _package=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 936
    :try_start_29
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 937
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_40

    .line 940
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_3b
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_40
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 941
    throw p1
.end method

.method public findAllAccountGrants()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1091
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT name, uid FROM accounts, grants WHERE accounts_id=_id"

    const/4 v1, 0x0

    .line 1092
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 1093
    :try_start_f
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_3a

    .line 1096
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    const/4 v1, 0x0

    .line 1098
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1099
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1101
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_44

    if-nez v1, :cond_1b

    .line 1103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 1094
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_44

    if-eqz p0, :cond_43

    .line 1103
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object v0

    :catchall_44
    move-exception v0

    if-eqz p0, :cond_4f

    .line 1092
    :try_start_47
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4f
    :goto_4f
    throw v0
.end method

.method public findAllDeAccounts()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 818
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 819
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "_id"

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "name"

    .line 820
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "accounts"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    .line 821
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 823
    :goto_23
    :try_start_23
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_45

    const/4 v1, 0x0

    .line 824
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    .line 825
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 826
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 828
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v4, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_23 .. :try_end_44} :catchall_49

    goto :goto_23

    .line 831
    :cond_45
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_49
    move-exception p0

    if-eqz v0, :cond_54

    .line 821
    :try_start_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw p0
.end method

.method public findAllUidGrants()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 878
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 879
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "uid"

    .line 880
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "grants"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 884
    :goto_20
    :try_start_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    .line 885
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 886
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_37

    goto :goto_20

    .line 889
    :cond_33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_37
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 890
    throw p0
.end method

.method public findAllVisibilityValues()Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 998
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "SELECT visibility._package, visibility.value, accounts.name, accounts.type FROM visibility JOIN accounts ON accounts._id = visibility.accounts_id"

    const/4 v2, 0x0

    .line 1000
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1010
    :goto_12
    :try_start_12
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    .line 1011
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1012
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    .line 1013
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 1014
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1015
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_45

    .line 1018
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1019
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    :cond_45
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_4d

    goto :goto_12

    .line 1024
    :cond_49
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_4d
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1025
    throw v0
.end method

.method public findAllVisibilityValuesForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 978
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 979
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "_package"

    const-string/jumbo v2, "value"

    .line 980
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v4, v8

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object p1, v4, v9

    const-string/jumbo v1, "visibility"

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 981
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 985
    :goto_2d
    :try_start_2d
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 986
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_47

    goto :goto_2d

    .line 989
    :cond_43
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_47
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 990
    throw p0
.end method

.method public findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 349
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 350
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v4, v8

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object p1, v4, v9

    const-string v1, "ceDb.authtokens"

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 356
    :goto_25
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 357
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    goto :goto_25

    .line 362
    :cond_37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_3b
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 363
    throw p0
.end method

.method public findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 5

    .line 333
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "SELECT ceDb.authtokens._id, ceDb.accounts.name, ceDb.authtokens.type FROM ceDb.accounts JOIN ceDb.authtokens ON ceDb.accounts._id = ceDb.authtokens.accounts_id WHERE ceDb.authtokens.authtoken = ? AND ceDb.accounts.type = ?"

    .line 334
    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public findCeAccountId(Landroid/accounts/Account;)J
    .registers 11

    .line 469
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    .line 470
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 472
    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const-string v1, "ceDb.accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 473
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 475
    :try_start_25
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 476
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_39

    .line 479
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_33
    const-wide/16 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_39
    move-exception p1

    if-eqz p0, :cond_44

    .line 473
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p1
.end method

.method public findCeAccountsNotInDe()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1245
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string v0, "SELECT name,type FROM ceDb.accounts WHERE NOT EXISTS  (SELECT _id FROM accounts WHERE _id=ceDb.accounts._id )"

    const/4 v1, 0x0

    .line 1247
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1255
    :try_start_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1256
    :goto_16
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    .line 1257
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 1258
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1259
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_33

    goto :goto_16

    .line 1263
    :cond_2f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_33
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1264
    throw v0
.end method

.method public findDeAccountByAccountId(J)Landroid/accounts/Account;
    .registers 11

    .line 961
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "name"

    const-string/jumbo v1, "type"

    .line 962
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    .line 963
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "accounts"

    const-string v3, "_id=? "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 962
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 965
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 966
    new-instance v0, Landroid/accounts/Account;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_41

    .line 969
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_3c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_41
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 970
    throw p0
.end method

.method public findDeAccountId(Landroid/accounts/Account;)J
    .registers 11

    .line 804
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    .line 805
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 807
    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const-string v1, "accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 808
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 810
    :try_start_25
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_33

    .line 811
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_39

    .line 814
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_33
    const-wide/16 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_39
    move-exception p1

    if-eqz p0, :cond_44

    .line 808
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p1
.end method

.method public findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 11

    .line 836
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "previous_name"

    .line 837
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    .line 839
    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const-string v1, "accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 840
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 842
    :try_start_26
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 843
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_39

    .line 845
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :cond_34
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x0

    return-object p0

    :catchall_39
    move-exception p1

    if-eqz p0, :cond_44

    .line 840
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_44
    :goto_44
    throw p1
.end method

.method public findExtrasIdByAccountId(JLjava/lang/String;)J
    .registers 12

    .line 416
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    .line 417
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accounts_id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "key"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p3, v4, p0

    const-string v1, "ceDb.extras"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 422
    :try_start_3c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 423
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_50

    .line 427
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide p2

    :cond_4a
    const-wide/16 p2, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-wide p2

    :catchall_50
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 428
    throw p0
.end method

.method public findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J
    .registers 6

    .line 895
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 896
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iget-object p1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v0, p2

    iget-object p1, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    .line 897
    invoke-static {p0, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J
    .registers 5

    .line 901
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 902
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object p1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND name=? AND type=?"

    .line 903
    invoke-static {p0, p1, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public findMetaAuthUid()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1046
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo p0, "key"

    const-string/jumbo v1, "value"

    .line 1047
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string p0, "auth_uid_for_type:%"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "meta"

    const-string/jumbo v3, "key LIKE ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "key"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1055
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1057
    :goto_2a
    :try_start_2a
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_86

    const/4 v1, 0x0

    .line 1059
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 1060
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1061
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_5f

    .line 1067
    :cond_4f
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1068
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :cond_5f
    :goto_5f
    const-string v2, "AccountsDb"

    .line 1063
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auth type empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid empty: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_2a .. :try_end_85} :catchall_8a

    goto :goto_2a

    .line 1071
    :cond_86
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_8a
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1072
    throw v0
.end method

.method public findSharedAccountId(Landroid/accounts/Account;)J
    .registers 11

    .line 751
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string p0, "_id"

    .line 752
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x2

    new-array v4, p0, [Ljava/lang/String;

    iget-object p0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p0, v4, v8

    iget-object p0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 p1, 0x1

    aput-object p0, v4, p1

    const-string/jumbo v1, "shared_accounts"

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 757
    :try_start_26
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 758
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_3a

    .line 762
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_34
    const-wide/16 v0, -0x1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :catchall_3a
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 763
    throw p1
.end method

.method public findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getReadableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 452
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 453
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v4, v8

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object p1, v4, v9

    .line 454
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v1, "ceDb.extras"

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 459
    :goto_25
    :try_start_25
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 460
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    goto :goto_25

    .line 464
    :cond_37
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_3b
    move-exception p0

    if-eqz p1, :cond_46

    .line 454
    :try_start_3e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    throw p0
.end method

.method public getSharedAccounts()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "name"

    .line 728
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 729
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_12
    const-string/jumbo v3, "shared_accounts"

    .line 732
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_48

    .line 734
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 735
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 736
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 738
    :cond_32
    new-instance v2, Landroid/accounts/Account;

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 739
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_4e

    if-nez v2, :cond_32

    :cond_48
    if-eqz v10, :cond_4d

    .line 744
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4d
    return-object p0

    :catchall_4e
    move-exception p0

    if-eqz v10, :cond_54

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 746
    :cond_54
    throw p0
.end method

.method public getStatementForLogging()Landroid/database/sqlite/SQLiteStatement;
    .registers 3

    .line 1336
    iget-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_7

    .line 1337
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    return-object p0

    .line 1340
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->compileSqlStatementForLogging()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;

    .line 1341
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugStatementForLogging:Landroid/database/sqlite/SQLiteStatement;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open debug table"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountsDb"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J
    .registers 6

    .line 382
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 383
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 384
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "accounts_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p1, "type"

    .line 385
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "authtoken"

    .line 386
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "ceDb.authtokens"

    .line 387
    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J
    .registers 6

    .line 497
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 498
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 499
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "password"

    .line 501
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ceDb.accounts"

    .line 502
    invoke-virtual {p0, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertDeAccount(Landroid/accounts/Account;J)J
    .registers 5

    .line 850
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 851
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 852
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 853
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo p3, "name"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "last_password_entry_time_millis_epoch"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "accounts"

    .line 856
    invoke-virtual {p0, p1, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertExtra(JLjava/lang/String;Ljava/lang/String;)J
    .registers 7

    .line 442
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "key"

    .line 444
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "accounts_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo p1, "value"

    .line 446
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ceDb.extras"

    .line 447
    invoke-virtual {p0, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertGrant(JLjava/lang/String;I)J
    .registers 6

    .line 907
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 908
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 909
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "accounts_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "auth_token_type"

    .line 910
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p3, "uid"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "grants"

    .line 912
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J
    .registers 6

    .line 1036
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 1037
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth_uid_for_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "meta"

    const/4 p2, 0x0

    const/4 v1, 0x5

    .line 1041
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public insertSharedAccount(Landroid/accounts/Account;)J
    .registers 5

    .line 703
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 704
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 705
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "shared_accounts"

    .line 707
    invoke-virtual {p0, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isCeDatabaseAttached()Z
    .registers 1

    .line 1274
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-static {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->-$$Nest$fgetmCeAttached(Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;)Z

    move-result p0

    return p0
.end method

.method public renameCeAccount(JLjava/lang/String;)Z
    .registers 7

    .line 401
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 403
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/String;

    .line 404
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "ceDb.accounts"

    const-string v2, "_id=?"

    .line 405
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_26

    goto :goto_27

    :cond_26
    move p3, p2

    :goto_27
    return p3
.end method

.method public renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 860
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 861
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 862
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "previous_name"

    .line 863
    invoke-virtual {v0, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array p4, p3, [Ljava/lang/String;

    .line 864
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p4, p2

    const-string p1, "accounts"

    const-string v1, "_id=?"

    .line 865
    invoke-virtual {p0, p1, v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move p3, p2

    :goto_2d
    return p3
.end method

.method public renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 6

    .line 718
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 719
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "name"

    .line 720
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 721
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p1, p2, v1

    const-string/jumbo p1, "shared_accounts"

    const-string/jumbo v1, "name=? AND type=?"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public reserveDebugDbInsertionPoint()J
    .registers 5

    .line 1358
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 1359
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->calculateDebugTableInsertionPoint()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 1360
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    return-wide v0

    .line 1362
    :cond_11
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x40

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    .line 1363
    iget-wide v0, p0, Lcom/android/server/accounts/AccountsDb;->mDebugDbInsertionPoint:J

    return-wide v0
.end method

.method public setAccountVisibility(JLjava/lang/String;I)Z
    .registers 6

    .line 922
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 923
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 924
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "accounts_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_package"

    .line 925
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "value"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "visibility"

    .line 927
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    const-wide/16 p2, -0x1

    cmp-long p0, p0, p2

    if-eqz p0, :cond_32

    const/4 p0, 0x1

    goto :goto_33

    :cond_32
    const/4 p0, 0x0

    :goto_33
    return p0
.end method

.method public setTransactionSuccessful()V
    .registers 1

    .line 1282
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 7

    .line 776
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 777
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "last_password_entry_time_millis_epoch"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 779
    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "accounts"

    const-string/jumbo v4, "name=? AND type=?"

    invoke-virtual {p0, p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_32

    move v3, v2

    :cond_32
    return v3
.end method

.method public updateCeAccountPassword(JLjava/lang/String;)I
    .registers 6

    .line 392
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 393
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "password"

    .line 394
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    .line 397
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, p3, p2

    const-string p1, "ceDb.accounts"

    const-string p2, "_id=?"

    .line 395
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public updateExtra(JLjava/lang/String;)Z
    .registers 7

    .line 432
    iget-object p0, p0, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;->getWritableDatabaseUserIsUnlocked()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 433
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "value"

    .line 434
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/String;

    .line 437
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    const-string p1, "extras"

    const-string v2, "_id=?"

    .line 435
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ne p0, p3, :cond_26

    goto :goto_27

    :cond_26
    move p3, p2

    :goto_27
    return p3
.end method
