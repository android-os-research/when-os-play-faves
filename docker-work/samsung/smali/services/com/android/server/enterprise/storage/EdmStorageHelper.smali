.class public Lcom/android/server/enterprise/storage/EdmStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EdmStorageHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "enterprise.db"

.field public static final DATABASE_VERSION:I = 0x8

.field public static final TAG:Ljava/lang/String; = "EdmStorageHelper"

.field public static mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper; = null

.field public static final mTAG:Ljava/lang/String; = "EDM"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$smcreateTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smisTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smpostTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smpreTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smpreTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "enterprise.db"

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 91
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 92
    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static addCidColumnForRCP(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 10

    const-string v0, "DROP TABLE "

    const-string v1, ";"

    const-string v2, ","

    const-string v3, "after end transaction"

    const-string v4, "EdmStorageHelper"

    .line 442
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 444
    :try_start_d
    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    .line 445
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content Values is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_3e

    const-string v6, "cid"

    .line 446
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v0, "Generic Table is already updated. for rcp "

    .line 447
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_102
    .catchall {:try_start_d .. :try_end_36} :catchall_100

    const/4 p1, 0x0

    .line 463
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 464
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 450
    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Table"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CREATE TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AS SELECT * FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adminUid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "propertyName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "propertyValue"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")  SELECT * FROM "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_ff} :catch_102
    .catchall {:try_start_3e .. :try_end_ff} :catchall_100

    goto :goto_11d

    :catchall_100
    move-exception p1

    goto :goto_125

    :catch_102
    move-exception v0

    .line 461
    :try_start_103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "inside exception for rcp data "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_103 .. :try_end_11d} :catchall_100

    .line 463
    :goto_11d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 464
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 463
    :goto_125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 464
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    throw p1
.end method

.method public static addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 9

    const-string v0, "DROP TABLE "

    const-string v1, ";"

    const-string v2, "EdmStorageHelper"

    .line 634
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 636
    :try_start_9
    iget-object v3, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_23

    const-string v5, "containerID"

    .line 637
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v0, "Generic Table is already updated."

    .line 638
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1f} :catch_d2
    .catchall {:try_start_9 .. :try_end_1f} :catchall_d0

    .line 658
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v4

    .line 642
    :cond_23
    :try_start_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Table"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_temp"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 644
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CREATE TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AS SELECT * FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 647
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 649
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SELECT *,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_cf} :catch_d2
    .catchall {:try_start_23 .. :try_end_cf} :catchall_d0

    goto :goto_ec

    :catchall_d0
    move-exception p1

    goto :goto_f1

    :catch_d2
    move-exception v0

    .line 656
    :try_start_d3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " upgrade EX: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catchall {:try_start_d3 .. :try_end_ec} :catchall_d0

    .line 658
    :goto_ec
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p0, 0x1

    return p0

    :goto_f1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 659
    throw p1
.end method

.method public static addISAPackageNameColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 15

    const-string v0, "fpNewRow"

    const-string v1, "fpDirty"

    const-string v2, "fpCurrent"

    const-string/jumbo v3, "packageName"

    const-string v4, "fpBaseLined"

    const-string v5, "adminUid"

    const-string v6, "DROP TABLE "

    const-string v7, ";"

    const-string v8, "EdmStorageHelper"

    const-string v9, ","

    .line 665
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 667
    :try_start_18
    iget-object v10, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v10

    if-eqz v10, :cond_33

    const-string/jumbo v11, "isaPackageName"

    .line 668
    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    const-string v0, "ISL Table is already updated."

    .line 669
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2e} :catch_11e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_11c

    const/4 p1, 0x0

    .line 690
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p1

    .line 673
    :cond_33
    :try_start_33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Upgrading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Table"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "_temp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 675
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CREATE TABLE "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " AS SELECT * FROM "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 677
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 680
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INSERT INTO "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") SELECT "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_11b} :catch_11e
    .catchall {:try_start_33 .. :try_end_11b} :catchall_11c

    goto :goto_138

    :catchall_11c
    move-exception p1

    goto :goto_13d

    :catch_11e
    move-exception v0

    .line 688
    :try_start_11f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " upgrade ISL Table: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_138
    .catchall {:try_start_11f .. :try_end_138} :catchall_11c

    .line 690
    :goto_138
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 p0, 0x1

    return p0

    :goto_13d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 691
    throw p1
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 10

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 156
    iget-object v2, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 157
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildTableColumns()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "CREATE TABLE %s (%s"

    .line 156
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-virtual {p1}, Lcom/android/server/enterprise/storage/Table;->buildPrimaryKeys()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v4

    const-string v1, "%s, PRIMARY KEY (%s)"

    .line 162
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 166
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

    .line 168
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array p0, v0, [Ljava/lang/Object;

    .line 175
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    aput-object v0, p0, v3

    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mColumns:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    const-string/jumbo p1, "onTableFound Created Table %s with Columns %d"

    .line 175
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdmStorageHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    const-string v0, "EdmStorageHelper"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 733
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_2b

    .line 735
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " WHERE "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    :cond_2b
    invoke-virtual {p0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 739
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 740
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 741
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCount("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") with Condition "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_5a} :catch_60
    .catchall {:try_start_4 .. :try_end_5a} :catchall_5e

    .line 746
    :goto_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_68

    :catchall_5e
    move-exception p0

    goto :goto_69

    :catch_60
    :try_start_60
    const-string p0, "getCount() failed"

    .line 743
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_5e

    if-eqz v2, :cond_68

    goto :goto_5a

    :cond_68
    :goto_68
    return v1

    :goto_69
    if-eqz v2, :cond_6e

    .line 746
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_6e
    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageHelper;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    monitor-enter v0

    .line 81
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    if-nez v1, :cond_e

    .line 82
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    .line 84
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/EdmStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;
    .registers 6
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

    const/4 v0, 0x0

    .line 358
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " LIMIT 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/enterprise/storage/Table;->getMissingColumns(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    .line 363
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_2b
    move-exception p0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_31
    throw p0
.end method

.method public static getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 6

    const-string v0, "EdmStorageHelper"

    .line 698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRAGMA table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 703
    :try_start_19
    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_6b
    .catchall {:try_start_19 .. :try_end_1d} :catchall_69

    if-eqz p0, :cond_4f

    .line 704
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_26

    goto :goto_4f

    .line 709
    :cond_26
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_4c
    .catchall {:try_start_1f .. :try_end_2b} :catchall_49

    .line 712
    :goto_2b
    :try_start_2b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_45

    const/4 v2, 0x1

    .line 713
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_44} :catch_4d
    .catchall {:try_start_2b .. :try_end_44} :catchall_49

    goto :goto_2b

    .line 720
    :cond_45
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_85

    :catchall_49
    move-exception p1

    move-object v2, p0

    goto :goto_86

    :catch_4c
    move-object v1, v2

    :catch_4d
    move-object v2, p0

    goto :goto_6c

    .line 705
    :cond_4f
    :goto_4f
    :try_start_4f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get list of columns for table: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_63} :catch_4c
    .catchall {:try_start_4f .. :try_end_63} :catchall_49

    if-eqz p0, :cond_68

    .line 720
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_68
    return-object v2

    :catchall_69
    move-exception p1

    goto :goto_86

    :catch_6b
    move-object v1, v2

    .line 717
    :goto_6c
    :try_start_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not exists"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_69

    if-eqz v2, :cond_85

    .line 720
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_85
    :goto_85
    return-object v1

    :goto_86
    if-eqz v2, :cond_8b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_8b
    throw p1
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    if-eqz p1, :cond_29

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 343
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

.method public static postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "EdmStorageHelper"

    :try_start_2
    const-string v1, "INSERT INTO ADMIN_INFO VALUES (0, \'SYSTEM-LEVEL-ADMIN\', 0, 0);"

    .line 473
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "INSERT INTO ADMIN_INFO VALUES (1000, \'KNOX-CUSTOM\', 0, 0);"

    .line 478
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ADMIN"

    .line 483
    invoke-static {p0, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "adminUid!=1000"

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO ADMIN_INFO(adminUid,adminName,canRemove) SELECT * from ADMIN WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "In postAdminInfoTableCreate - Start adding KnoxCustomManagerService.DB_UID to ADMIN table..."

    .line 500
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "INSERT INTO ADMIN VALUES (1000,1000,0);"

    .line 501
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "In postAdminInfoTableCreate - Finished adding KnoxCustomManagerService.DB_UID to ADMIN table"

    .line 505
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3e} :catch_3f

    goto :goto_54

    :catch_3f
    move-exception p0

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMIN_INFO postAdminInfoTableCreate failed  EX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public static postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "EdmStorageHelper"

    :try_start_2
    const-string v1, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;"

    .line 533
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "adminUid!=0"

    const-string v2, "ADMIN_INFO"

    .line 541
    invoke-static {p0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getCount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2a

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO ADMIN SELECT adminUid,adminUid,0,adminUid/100000 FROM ADMIN_INFO WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2a
    const-string v1, "CREATE TRIGGER ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;"

    .line 549
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_45

    :try_start_2f
    const-string v1, "Start adding KnoxCustomManagerService.DB_UID to ADMIN table..."

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "INSERT INTO ADMIN VALUES (1000,1000,0);"

    .line 560
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Finished adding KnoxCustomManagerService.DB_UID to ADMIN table"

    .line 564
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_5a

    :catch_3f
    :try_start_3f
    const-string p0, "KnoxCustomManagerService.DB_UID already exists in ADMIN table"

    .line 566
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_44} :catch_45

    goto :goto_5a

    :catch_45
    move-exception p0

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMIN_INFO postAdminTableCreate failed  EX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public static postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "INSERT INTO CONTAINER(containerID,adminUid) VALUES (0,0);"

    .line 519
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_1d

    :catch_6
    move-exception p0

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONTAINER postContainerTableCreate failed  EX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EdmStorageHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void
.end method

.method public static postKnoxCustomTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    const-string v0, "EdmStorageHelper"

    const-string/jumbo v1, "postKnoxCustomTableCreate()"

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    const-string v1, "Initialise KNOX_CUSTOM table..."

    .line 582
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "INSERT INTO KNOX_CUSTOM (adminUid) VALUES (1000);"

    .line 583
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "Finished initialising KNOX_CUSTOM table"

    .line 586
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_2d

    :catch_18
    move-exception p0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADMIN_INFO postKnoxCustomTableCreate failed  EX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    return-void
.end method

.method public static postTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 3

    .line 384
    iget-object p1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const-string v0, "ADMIN_INFO"

    .line 385
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_e

    .line 386
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminInfoTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_e
    const-string v0, "CONTAINER"

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1a

    .line 391
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postContainerTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_1a
    const-string v0, "ADMIN"

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_26

    .line 396
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :cond_26
    const-string v0, "KNOX_CUSTOM"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_38

    const-string p1, "EdmStorageHelper"

    const-string v0, "Calling postKnoxCustomTableCreate"

    .line 402
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postKnoxCustomTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_38
    return-void
.end method

.method public static preTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V
    .registers 2

    return-void
.end method

.method public static preTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 6

    .line 415
    iget-object v0, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    const-string v1, "ADMIN"

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_12

    .line 417
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->updateAdminInfoTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 418
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0

    :cond_12
    const-string v1, "generic"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1f

    .line 422
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0

    :cond_1f
    const-string v1, "WebFilterLogTable"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    .line 426
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addContainerIdColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0

    :cond_2c
    const-string v1, "EnterpriseIslFpTable"

    .line 429
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    const-string v2, "EdmStorageHelper"

    if-nez v1, :cond_40

    const-string v0, "Coming inside ISL Pretable update"

    .line 430
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addISAPackageNameColumn(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0

    :cond_40
    const-string v1, "RCP_DATA"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_61

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Coming inside RCP TABLE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->addCidColumnForRCP(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result p0

    return p0

    :cond_61
    const/4 p0, 0x0

    return p0
.end method

.method public static updateAdminInfoTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string v0, "DROP TRIGGER ADMIN_INFO_ONINSERT"

    .line 596
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;"

    .line 597
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER IF NOT EXISTS ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;"

    .line 603
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_27

    :catch_10
    move-exception p0

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADMIN_INFOUpdate of ADMIN_INFO_ONINSERT trigger has failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EdmStorageHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-void
.end method

.method public static upgradeAdminTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z
    .registers 7

    const-string v0, "EdmStorageHelper"

    const/4 v1, 0x1

    :try_start_3
    const-string v2, "ADMIN"

    .line 614
    invoke-static {p0, v2}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->getTableColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    const-string v4, "containerID"

    .line 615
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string p1, "Admin Table is already updated."

    .line 616
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_31
    .catchall {:try_start_3 .. :try_end_19} :catchall_2f

    .line 627
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return v3

    .line 620
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    const-string v2, "DROP TABLE ADMIN"

    .line 621
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 622
    invoke-static {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 623
    invoke-static {p0}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->postAdminTableCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_31
    .catchall {:try_start_1d .. :try_end_2b} :catchall_2f

    .line 627
    :goto_2b
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    goto :goto_47

    :catchall_2f
    move-exception p1

    goto :goto_48

    :catch_31
    move-exception p1

    .line 625
    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADMIN upgrade failed  EX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_32 .. :try_end_46} :catchall_2f

    goto :goto_2b

    :goto_47
    return v1

    .line 627
    :goto_48
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    .line 628
    throw p1
.end method


# virtual methods
.method public doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16

    const-string/jumbo p0, "signature"

    const-string v0, "adminUid"

    const-string/jumbo v1, "unknown"

    const-string v2, "doCreationOrUpdatePostCommands EX1:"

    const-string v3, "EdmStorageHelper"

    :try_start_c
    const-string v4, "CREATE TRIGGER IF NOT EXISTS webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;"

    .line 235
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v4

    .line 245
    invoke-static {v3, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16
    :try_start_16
    const-string v4, "CREATE TRIGGER IF NOT EXISTS bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;"

    .line 249
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception v4

    const-string v5, "doCreationOrUpdatePostCommands EX2:"

    .line 259
    invoke-static {v3, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    :try_start_22
    const-string v4, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (1, \'SpaceView\');"

    .line 263
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (2, \'TextView\');"

    .line 264
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (3, \'ImageView\');"

    .line 265
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (4, \'ContainerView\');"

    .line 266
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (5, \'CustomWidget\');"

    .line 267
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3b
    const-string v4, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (0, \'VERTICAL\');"

    .line 273
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v4, "INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (1, \'HORIZONTAL\');"

    .line 274
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_45} :catch_45

    :catch_45
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_47
    const-string/jumbo v6, "ro.build.fingerprint"

    .line 280
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    move-object v6, v5

    :cond_55
    const-string v1, "INSERT INTO generic VALUES (\'PlatformSoftwareVersion\', \'%s\', %d);"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 284
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v4

    .line 282
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6a
    const-string v1, "APPLICATION_SIGNATURE"

    .line 290
    invoke-static {p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_70} :catch_de

    if-eqz v1, :cond_de

    :try_start_72
    const-string v7, "APPLICATION_SIGNATURE"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p1

    .line 294
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_d7

    .line 296
    :try_start_7f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "APPLICATION_SIGNATURE Current Count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_97
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 299
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 298
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 301
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 300
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 303
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 304
    invoke-virtual {v8, p0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "controlState"

    .line 306
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "APPLICATION_SIGNATURE2"

    .line 307
    invoke-virtual {p1, v6, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ca
    .catchall {:try_start_7f .. :try_end_ca} :catchall_d4

    goto :goto_97

    .line 311
    :cond_cb
    :try_start_cb
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string p0, "DROP TABLE APPLICATION_SIGNATURE;"

    .line 315
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_de

    :catchall_d4
    move-exception p0

    move-object v5, v1

    goto :goto_d8

    :catchall_d7
    move-exception p0

    :goto_d8
    if-eqz v5, :cond_dd

    .line 311
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_dd
    throw p0
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_de} :catch_de

    :catch_de
    :cond_de
    :goto_de
    :try_start_de
    const-string p0, "CREATE TRIGGER IF NOT EXISTS  domainFilterReportTableCircularBuffer  AFTER INSERT  ON DomainFilterReportTable WHEN (SELECT COUNT(*) FROM DomainFilterReportTable) > 1000 BEGIN  DELETE FROM DomainFilterReportTable WHERE id = (SELECT id FROM DomainFilterReportTable ORDER BY id LIMIT 1); END;  END;"

    .line 323
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e3} :catch_e4

    goto :goto_e8

    :catch_e4
    move-exception p0

    .line 335
    invoke-static {v3, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e8
    return-void
.end method

.method public doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doTableCreationOrUpdate Starting + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdmStorageHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 185
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x117000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 190
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;-><init>(Lcom/android/server/enterprise/storage/EdmStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 219
    new-instance v3, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;

    invoke-direct {v3, v0, v2}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;-><init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/enterprise/storage/TableCallback;)V

    .line 220
    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/EnterpriseXmlParser;->parseXML()V

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doCreationOrUpdatePostCommands(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_3d
    .catchall {:try_start_1b .. :try_end_38} :catchall_3b

    if-eqz v0, :cond_48

    goto :goto_45

    :catchall_3b
    move-exception p0

    goto :goto_61

    :catch_3d
    move-exception p0

    :try_start_3e
    const-string p1, "doTableCreationOrUpdate EX:"

    .line 223
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    if-eqz v0, :cond_48

    .line 226
    :goto_45
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 229
    :cond_48
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

    return-void

    :goto_61
    if-eqz v0, :cond_66

    .line 226
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 228
    :cond_66
    throw p0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 97
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p0, 0x1

    .line 99
    :try_start_4
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception p0

    const-string p1, "EdmStorageHelper"

    const-string v0, "Foreign Key Config failed"

    .line 101
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const-string p0, "EdmStorageHelper"

    const-string p1, "Downgrading not supported"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/16 p2, 0x8

    if-ne p3, p2, :cond_7

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->updateProfilePoicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_7
    return-void
.end method

.method public final updateProfilePoicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8

    const-string p0, "_tmp"

    const-string v0, "ProfilePolicyPORestrictions"

    const-string v1, "adminUid"

    const-string v2, "ProfilePolicyPORestrictionsProperty"

    const-string v3, "ProfilePolicyPORestrictionsValue"

    .line 139
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alter table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " rename to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " INTEGER, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " NUMERIC DEFAULT 1, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " TEXT, PRIMARY KEY ("

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") FOREIGN KEY ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") REFERENCES ADMIN("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ON DELETE CASCADE ON UPDATE CASCADE)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " select * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "EdmStorageHelper"

    const-string p1, "ProfilePolicy table is migrated"

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b8} :catch_b9

    goto :goto_bd

    :catch_b9
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_bd
    return-void
.end method
