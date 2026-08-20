.class Lcom/samsung/android/server/wifi/db/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiService.provider"


# instance fields
.field private final dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    return-void
.end method

.method private updateIfExist(Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12

    .line 81
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SemWifiService.provider"

    if-nez v1, :cond_13

    const-string p0, "unique value is not in the content"

    .line 83
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 88
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_45
    new-array v6, v4, [Ljava/lang/String;

    aput-object v0, v6, v5

    .line 92
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {p0, v2, v1, v6, v7}, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_51} :catch_a4

    if-eqz v6, :cond_72

    .line 93
    :try_start_53
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_72

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    invoke-interface {p1, v6, p2}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_6f

    .line 96
    :try_start_60
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getIdColumnName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_6c
    .catchall {:try_start_60 .. :try_end_6c} :catchall_6d

    goto :goto_8f

    :catchall_6d
    move-exception v7

    goto :goto_97

    :catchall_6f
    move-exception v7

    move-object p2, v2

    goto :goto_97

    .line 98
    :cond_72
    :try_start_72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not existed in "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_72 .. :try_end_8d} :catchall_6f

    move-object p2, v2

    move v7, v5

    :goto_8f
    if-eqz v6, :cond_af

    .line 100
    :try_start_91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_af

    :catch_95
    move-exception v6

    goto :goto_a7

    :goto_97
    if-eqz v6, :cond_a1

    .line 91
    :try_start_99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception v6

    :try_start_9e
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a1
    :goto_a1
    throw v7
    :try_end_a2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9e .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception v6

    goto :goto_a6

    :catch_a4
    move-exception v6

    move-object p2, v2

    :goto_a6
    move v7, v5

    :goto_a7
    const-string v8, "failed to update, exception"

    .line 101
    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_af
    :goto_af
    if-eqz p2, :cond_c6

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v5

    .line 105
    invoke-virtual {p0, p2, v1, v2}, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_c0

    const-string p0, "failed to update"

    .line 106
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c0
    int-to-long v0, v7

    .line 108
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_c6
    return-object v2
.end method


# virtual methods
.method delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const-string v0, "SemWifiService.provider"

    .line 131
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delete "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rows"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2c} :catch_37
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    const-string p1, "failed to delete, disk io exception"

    .line 139
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_40

    :catch_37
    move-exception p0

    const-string p1, "failed to delete, exception"

    .line 136
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->printStackTrace()V

    :goto_40
    const/4 p0, 0x0

    return p0
.end method

.method getType()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8

    const-string v0, "SemWifiService.provider"

    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->updateIfExist(Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_b

    return-object v1

    :cond_b
    const/4 v1, 0x0

    .line 66
    :try_start_c
    iget-object v2, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 67
    iget-object v3, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {v3}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    .line 68
    invoke-interface {v4, v1, p1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1

    .line 67
    invoke-virtual {v2, v3, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_4d

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert at "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {p0, v2, v3}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_43} :catch_44

    return-object p0

    :catch_44
    move-exception p0

    const-string p1, "failed to insert, exception"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_4d
    return-object v1
.end method

.method query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " arg length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p3, :cond_2a

    .line 40
    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2b

    :cond_2a
    move-object v2, v1

    :goto_2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " projection length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_3a

    .line 41
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sortOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiService.provider"

    .line 38
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 46
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {v0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getProjectionMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 49
    :try_start_69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    .line 50
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_7a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_69 .. :try_end_7a} :catch_7b

    return-object p0

    :catch_7b
    move-exception p0

    const-string p1, "failed to query, SQLiteException"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const-string v0, "SemWifiService.provider"

    .line 115
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 117
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "update "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rows"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2c} :catch_37
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    move-exception p0

    const-string p1, "failed to update, disc io exception"

    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_40

    :catch_37
    move-exception p0

    const-string p1, "failed to update, exception"

    .line 120
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->printStackTrace()V

    :goto_40
    const/4 p0, 0x0

    return p0
.end method
