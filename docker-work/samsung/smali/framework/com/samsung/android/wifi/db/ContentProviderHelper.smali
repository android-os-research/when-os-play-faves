.class public Lcom/samsung/android/wifi/db/ContentProviderHelper;
.super Ljava/lang/Object;
.source "ContentProviderHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ContentProviderHelper"


# instance fields
.field private final blacklist dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/wifi/db/ISemDatabaseHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    .line 36
    return-void
.end method

.method private blacklist updateIfExist(Lcom/samsung/android/wifi/db/ISemDatabaseHelper;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .param p1, "helper"    # Lcom/samsung/android/wifi/db/ISemDatabaseHelper;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 85
    invoke-interface {p1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "uniqueColName":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ContentProviderHelper"

    if-nez v1, :cond_14

    .line 87
    const-string/jumbo v1, "unique value is not in the content"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v2

    .line 90
    :cond_14
    const/4 v1, 0x0

    .line 91
    .local v1, "id":I
    const/4 v4, 0x0

    .line 92
    .local v4, "updateValues":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "selectionString":Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "uniqueValue":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "try to find "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_4e
    new-array v9, v8, [Ljava/lang/String;

    aput-object v6, v9, v7

    .line 96
    invoke-interface {p1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v10

    .line 95
    invoke-virtual {p0, v2, v5, v9, v10}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_5a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4e .. :try_end_5a} :catch_a9

    .line 97
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_7a

    :try_start_5c
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_7a

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 99
    invoke-interface {p1, v9, p2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v10

    move-object v4, v10

    .line 100
    invoke-interface {p1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getIdColumnName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move v1, v10

    goto :goto_98

    .line 95
    :catchall_78
    move-exception v10

    goto :goto_9e

    .line 102
    :cond_7a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not existed in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_5c .. :try_end_98} :catchall_78

    .line 104
    :goto_98
    if-eqz v9, :cond_9d

    :try_start_9a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9a .. :try_end_9d} :catch_a9

    .line 107
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_9d
    goto :goto_b2

    .line 95
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :goto_9e
    if-eqz v9, :cond_a8

    :try_start_a0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_a4

    goto :goto_a8

    :catchall_a4
    move-exception v11

    :try_start_a5
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "uniqueColName":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v4    # "updateValues":Landroid/content/ContentValues;
    .end local v5    # "selectionString":Ljava/lang/String;
    .end local v6    # "uniqueValue":Ljava/lang/String;
    .end local p0    # "this":Lcom/samsung/android/wifi/db/ContentProviderHelper;
    .end local p1    # "helper":Lcom/samsung/android/wifi/db/ISemDatabaseHelper;
    .end local p2    # "values":Landroid/content/ContentValues;
    :cond_a8
    :goto_a8
    throw v10
    :try_end_a9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a5 .. :try_end_a9} :catch_a9

    .line 104
    .end local v9    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "uniqueColName":Ljava/lang/String;
    .restart local v1    # "id":I
    .restart local v4    # "updateValues":Landroid/content/ContentValues;
    .restart local v5    # "selectionString":Ljava/lang/String;
    .restart local v6    # "uniqueValue":Ljava/lang/String;
    .restart local p0    # "this":Lcom/samsung/android/wifi/db/ContentProviderHelper;
    .restart local p1    # "helper":Lcom/samsung/android/wifi/db/ISemDatabaseHelper;
    .restart local p2    # "values":Landroid/content/ContentValues;
    :catch_a9
    move-exception v9

    .line 105
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    const-string v10, "failed to update, exception"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 108
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_b2
    if-eqz v4, :cond_c9

    .line 109
    new-array v2, v8, [Ljava/lang/String;

    aput-object v6, v2, v7

    invoke-virtual {p0, v4, v5, v2}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c3

    .line 110
    const-string v2, "failed to update"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_c3
    int-to-long v2, v1

    invoke-interface {p1, v2, v3}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getContentUri(J)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 114
    :cond_c9
    return-object v2
.end method


# virtual methods
.method public blacklist delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 137
    const-string v0, "ContentProviderHelper"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 138
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2f} :catch_3a
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2f} :catch_30

    .line 140
    return v2

    .line 144
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "count":I
    :catch_30
    move-exception v1

    .line 145
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "failed to delete, disk io exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_44

    .line 141
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3a
    move-exception v1

    .line 142
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    const-string v2, "failed to delete, exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->printStackTrace()V

    .line 147
    .end local v1    # "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    nop

    .line 148
    :goto_44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v0}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist insert(Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 64
    const-string v0, "ContentProviderHelper"

    iget-object v1, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->updateIfExist(Lcom/samsung/android/wifi/db/ISemDatabaseHelper;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, "retUri":Landroid/net/Uri;
    if-eqz v1, :cond_b

    .line 66
    return-object v1

    .line 70
    :cond_b
    const/4 v2, 0x0

    :try_start_c
    iget-object v3, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 71
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v4}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    .line 72
    invoke-interface {v5, v2, p1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 71
    invoke-virtual {v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 73
    .local v4, "rowIndex":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_46

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v6, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v6, v4, v5}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getContentUri(J)Landroid/net/Uri;

    move-result-object v0
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_45} :catch_47

    return-object v0

    .line 80
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "rowIndex":J
    :cond_46
    goto :goto_50

    .line 77
    :catch_47
    move-exception v3

    .line 78
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "failed to insert, exception"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 81
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_50
    return-object v2
.end method

.method public blacklist query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v1}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " arg length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string v1, "null"

    if-eqz p3, :cond_30

    array-length v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_31

    :cond_30
    move-object v2, v1

    :goto_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " projection length "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    if-eqz p1, :cond_42

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sortOrder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "ContentProviderHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 48
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 50
    iget-object v2, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getProjectionMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 52
    :try_start_74
    iget-object v2, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 53
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v9, p4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_86
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_74 .. :try_end_86} :catch_87

    return-object v1

    .line 54
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_87
    move-exception v2

    .line 55
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    const-string v3, "failed to query, SQLiteException"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 58
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 120
    const-string v0, "ContentProviderHelper"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 121
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/samsung/android/wifi/db/ContentProviderHelper;->dbHelper:Lcom/samsung/android/wifi/db/ISemDatabaseHelper;

    invoke-interface {v2}, Lcom/samsung/android/wifi/db/ISemDatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " rows"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_30} :catch_3b
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_30} :catch_31

    .line 123
    return v2

    .line 127
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "count":I
    :catch_31
    move-exception v1

    .line 128
    .local v1, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "failed to update, disc io exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDiskIOException;->printStackTrace()V

    goto :goto_45

    .line 124
    .end local v1    # "e":Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_3b
    move-exception v1

    .line 125
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    const-string v2, "failed to update, exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->printStackTrace()V

    .line 130
    .end local v1    # "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    nop

    .line 131
    :goto_45
    const/4 v0, 0x0

    return v0
.end method
