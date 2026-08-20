.class public Lcom/android/server/ssrm/BinaryVersionDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BinaryVersionDatabase.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "pda.db"

.field static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field static sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/android/server/ssrm/BinaryVersionDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/BinaryVersionDatabase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/BinaryVersionDatabase;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/ssrm/BinaryVersionDatabase;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;

    if-nez v1, :cond_10

    .line 38
    new-instance v1, Lcom/android/server/ssrm/BinaryVersionDatabase;

    const-string v2, "pda.db"

    invoke-direct {v1, p0, v2}, Lcom/android/server/ssrm/BinaryVersionDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;

    .line 40
    :cond_10
    sget-object v1, Lcom/android/server/ssrm/BinaryVersionDatabase;->sSingleton:Lcom/android/server/ssrm/BinaryVersionDatabase;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    .line 36
    .end local p0    # "context":Landroid/content/Context;
    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .registers 5

    .line 79
    const-string v0, ""

    .line 80
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 81
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT data FROM log_table"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 84
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_34

    .line 85
    :try_start_f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    :goto_12
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_34

    .line 87
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 88
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_24
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    goto :goto_12

    .line 94
    :catchall_22
    move-exception v3

    goto :goto_2b

    .line 91
    :catch_24
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .line 94
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_39

    .line 95
    goto :goto_36

    .line 94
    :goto_2b
    if-eqz v2, :cond_30

    .line 95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_30
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    throw v3

    .line 94
    :cond_34
    if-eqz v2, :cond_39

    .line 95
    :goto_36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 98
    nop

    .line 100
    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 49
    sget-object v0, Lcom/android/server/ssrm/BinaryVersionDatabase;->TAG:Ljava/lang/String;

    const-string v1, "onCreate::"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v0, "CREATE TABLE log_table (data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 56
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 7
    .param p1, "version"    # Ljava/lang/String;

    .line 59
    const-string v0, "log_table"

    invoke-virtual {p0}, Lcom/android/server/ssrm/BinaryVersionDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 61
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 68
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_1d} :catch_23
    .catchall {:try_start_6 .. :try_end_1d} :catchall_21

    .line 72
    .end local v3    # "values":Landroid/content/ContentValues;
    :try_start_1d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_34

    goto :goto_2a

    :catchall_21
    move-exception v0

    goto :goto_36

    .line 69
    :catch_23
    move-exception v0

    .line 70
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_24
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    .line 72
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_27
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    :goto_2a
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_34

    .line 74
    nop

    .line 75
    if-eqz v1, :cond_33

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 76
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_33
    return-void

    .line 59
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_34
    move-exception v0

    goto :goto_3e

    .line 72
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 73
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    nop

    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/android/server/ssrm/BinaryVersionDatabase;
    .end local p1    # "version":Ljava/lang/String;
    throw v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_34

    .line 59
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/android/server/ssrm/BinaryVersionDatabase;
    .restart local p1    # "version":Ljava/lang/String;
    :goto_3e
    if-eqz v1, :cond_48

    :try_start_40
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v0
.end method
