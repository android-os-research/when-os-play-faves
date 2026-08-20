.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "VpnStorageHelper.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "KnoxVpn.StorageHelper"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcreateTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smpostTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smpreTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smpreTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 173
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 174
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CREATE TABLE %s (%s"

    .line 173
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    const-string v1, "%s, PRIMARY KEY (%s)"

    .line 179
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_27
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferTable:Ljava/lang/String;

    if-eqz v2, :cond_45

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mForeignReferKey:Ljava/lang/String;

    if-eqz v5, :cond_45

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mForeignKeyName:Ljava/lang/String;

    if-eqz v6, :cond_45

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v6, v7, v4

    aput-object v2, v7, v0

    const/4 v1, 0x3

    aput-object v5, v7, v1

    const-string v1, "%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE"

    .line 185
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 190
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz p0, :cond_7b

    new-array p0, v0, [Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v0, p0, v3

    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 193
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string/jumbo p1, "onTableFound Created Table %s with Columns %d"

    .line 192
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxVpn.StorageHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7b
    return-void
.end method

.method public static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/storage/Table;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/storage/Column;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 160
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    .line 162
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 147
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT 1 FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " WHERE 1=0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_29

    const/4 v0, 0x1

    :catch_29
    :cond_29
    return v0
.end method

.method public static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    return-void
.end method

.method public static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    return-void
.end method

.method public static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static translateToAdminLUID(JJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-eqz v2, :cond_f

    cmp-long v0, p2, v0

    if-gtz v0, :cond_b

    goto :goto_f

    :cond_b
    const/16 v0, 0x20

    shl-long/2addr p2, v0

    or-long/2addr p0, p2

    :cond_f
    :goto_f
    return-wide p0
.end method


# virtual methods
.method public final convertAdminIdToLUID(Landroid/content/ContentValues;)V
    .registers 8

    const-string p0, "containerID"

    .line 497
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "adminUid"

    .line 498
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    if-eqz v0, :cond_3f

    .line 502
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 503
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 505
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 506
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 507
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    int-to-long v2, v2

    int-to-long v4, v0

    .line 509
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->translateToAdminLUID(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3f
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 11

    const/4 v0, 0x0

    .line 259
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 261
    :goto_8
    array-length v4, p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_53

    if-ge v2, v4, :cond_45

    const-string v4, "=?"

    if-nez v3, :cond_29

    .line 263
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 266
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_45
    if-eqz v3, :cond_4b

    .line 270
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    invoke-virtual {p0, p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4f} :catch_53

    if-lez p0, :cond_5e

    const/4 v0, 0x1

    goto :goto_5e

    :catch_53
    move-exception p0

    const-string p1, "KnoxVpn.StorageHelper"

    const-string p2, "delete operation failed"

    .line 275
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5e
    :goto_5e
    return v0
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_34

    if-nez p3, :cond_7

    goto :goto_34

    .line 428
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 429
    array-length v2, p2

    move v3, v1

    :goto_e
    if-ge v3, v2, :cond_29

    aget-object v4, p2, v3

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "= ? AND "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_29
    const-string p2, " AND "

    .line 432
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    :cond_34
    :goto_34
    move-object p3, v0

    .line 434
    :goto_35
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 436
    invoke-virtual {p0, p1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_41

    if-lez p0, :cond_48

    const/4 p0, 0x1

    return p0

    :catch_41
    const-string p0, "KnoxVpn.StorageHelper"

    const-string p1, "could not execute deleteDataByFields"

    .line 440
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return v1
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 95
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    const-string v1, "KnoxVpn.StorageHelper"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_26
    .catchall {:try_start_1e .. :try_end_23} :catchall_24

    goto :goto_2c

    :catchall_24
    move-exception p0

    goto :goto_49

    :catch_26
    move-exception p0

    :try_start_27
    const-string p1, "doTableCreationOrUpdate EX:"

    .line 134
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    .line 140
    :goto_2c
    sget-boolean p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz p0, :cond_48

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "doTableCreationOrUpdate Done + "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    return-void

    .line 139
    :goto_49
    throw p0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 454
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz p2, :cond_3f

    if-nez p3, :cond_10

    goto :goto_3f

    .line 465
    :cond_10
    :try_start_10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 466
    array-length v2, p2

    move v3, v9

    :goto_17
    if-ge v3, v2, :cond_32

    aget-object v4, p2, v3

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "= ? AND "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_32
    const-string p2, " AND "

    .line 469
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, v9, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    move-object v4, p3

    goto :goto_41

    :cond_3f
    :goto_3f
    move-object v3, v8

    move-object v4, v3

    :goto_41
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p4

    .line 472
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_79

    move p1, v9

    .line 475
    :goto_4d
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_79

    .line 476
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p2, v9

    .line 477
    :goto_5c
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result p3

    if-ge p2, p3, :cond_76

    .line 478
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/ContentValues;

    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v8, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_73} :catch_81
    .catchall {:try_start_10 .. :try_end_73} :catchall_7f

    add-int/lit8 p2, p2, 0x1

    goto :goto_5c

    :cond_76
    add-int/lit8 p1, p1, 0x1

    goto :goto_4d

    :cond_79
    if-eqz v8, :cond_8b

    .line 487
    :goto_7b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8b

    :catchall_7f
    move-exception p0

    goto :goto_8c

    :catch_81
    :try_start_81
    const-string p1, "KnoxVpn.StorageHelper"

    const-string p2, "could not execute getDataByFields"

    .line 484
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_7f

    if-eqz v8, :cond_8b

    goto :goto_7b

    :cond_8b
    :goto_8b
    return-object p0

    :goto_8c
    if-eqz v8, :cond_91

    .line 487
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 489
    :cond_91
    throw p0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 6

    const/4 v0, 0x0

    .line 234
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    .line 236
    invoke-virtual {p0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_13

    const-wide/16 v1, -0x1

    cmp-long p0, p0, v1

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    move v0, p0

    goto :goto_1f

    :catch_13
    move-exception p0

    const-string p1, "KnoxVpn.StorageHelper"

    const-string/jumbo p2, "insert operation failed"

    .line 241
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    :goto_1f
    return v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 86
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x1

    .line 88
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "KnoxVpn.StorageHelper"

    const-string v0, "Foreign Key Config failed"

    .line 90
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "KnoxVpn.StorageHelper"

    const-string/jumbo v1, "onCreate is called .."

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .line 81
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-nez v0, :cond_7

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_7
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 6

    .line 75
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->DBG:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpgrade from : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KnoxVpn.StorageHelper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 12

    const/4 v0, 0x0

    .line 390
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 392
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->convertAdminIdToLUID(Landroid/content/ContentValues;)V

    const/4 p0, 0x1

    if-eqz p2, :cond_40

    if-eqz p3, :cond_40

    .line 395
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    array-length v3, p2

    move v4, v0

    :goto_14
    if-ge v4, v3, :cond_2f

    aget-object v5, p2, v4

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "= ? AND "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_2f
    const-string p2, " AND "

    .line 399
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v2, v0, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 401
    invoke-virtual {v1, p1, p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_40

    return p0

    :cond_40
    const/4 p2, 0x0

    .line 406
    invoke-virtual {v1, p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_4c

    const-wide/16 p3, -0x1

    cmp-long p1, p1, p3

    if-eqz p1, :cond_63

    return p0

    :catch_4c
    move-exception p0

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "could not execute putDataByFields"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxVpn.StorageHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return v0
.end method

.method public declared-synchronized query(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 289
    :try_start_2
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 299
    :try_start_2
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15

    monitor-enter p0

    const/4 v0, 0x0

    .line 315
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz p3, :cond_49

    const/4 v2, 0x0

    move-object v3, v0

    .line 318
    :goto_a
    array-length v4, p3

    if-ge v2, v4, :cond_4a

    if-nez v3, :cond_2b

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 323
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_49
    move-object v3, v0

    :cond_4a
    if-eqz v3, :cond_52

    .line 328
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v4, p3

    goto :goto_53

    :cond_52
    move-object v4, v0

    :goto_53
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    .line 327
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5e} :catch_61
    .catchall {:try_start_2 .. :try_end_5e} :catchall_5f

    goto :goto_68

    :catchall_5f
    move-exception p1

    goto :goto_6a

    :catch_61
    :try_start_61
    const-string p1, "KnoxVpn.StorageHelper"

    const-string p2, "Failed on query"

    .line 331
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_5f

    .line 338
    :goto_68
    monitor-exit p0

    return-object v0

    :goto_6a
    monitor-exit p0

    throw p1
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    .line 357
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 359
    :goto_8
    array-length v4, p3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_53

    if-ge v2, v4, :cond_45

    const-string v4, "=?"

    if-nez v3, :cond_29

    .line 361
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 364
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_45
    if-eqz v3, :cond_4b

    .line 368
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4b
    invoke-virtual {p0, p1, p2, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4f} :catch_53

    if-lez p0, :cond_5f

    const/4 v0, 0x1

    goto :goto_5f

    :catch_53
    move-exception p0

    const-string p1, "KnoxVpn.StorageHelper"

    const-string/jumbo p2, "update operation failed"

    .line 374
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5f
    :goto_5f
    return v0
.end method
