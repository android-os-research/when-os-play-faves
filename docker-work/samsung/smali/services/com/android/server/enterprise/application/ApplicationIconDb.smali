.class public Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApplicationIconDb.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "dmappmgr.db"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final NAME_OWNER:Ljava/lang/String; = "nameowner"

.field public static final NEW_NAME:Ljava/lang/String; = "newname"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationIcon"

.field public static final TAG:Ljava/lang/String; = "ApplicationIconDb"

.field public static final USER_ID:Ljava/lang/String; = "userid"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "dmappmgr.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 75
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 76
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationIconDb;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-eqz p1, :cond_31

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    .line 501
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
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_2a

    const/4 v0, 0x1

    goto :goto_31

    :catch_2a
    const-string p0, "ApplicationIconDb"

    const-string p1, "::isTableExists:Table Does not exists "

    .line 505
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    return v0
.end method


# virtual methods
.method public clearApplicationData()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 310
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_39

    const-string v2, "SELECT * FROM ApplicationIcon"

    .line 313
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_12} :catch_41
    .catchall {:try_start_6 .. :try_end_12} :catchall_3f

    :try_start_12
    const-string/jumbo v3, "pkgname"

    .line 314
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 315
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 317
    :cond_1f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_2c
    const-string v3, "ApplicationIcon"

    .line 322
    invoke-virtual {p0, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_31} :catch_36
    .catchall {:try_start_12 .. :try_end_31} :catchall_33

    move-object v1, v2

    goto :goto_39

    :catchall_33
    move-exception p0

    move-object v1, v2

    goto :goto_49

    :catch_36
    move-exception p0

    move-object v1, v2

    goto :goto_42

    :cond_39
    :goto_39
    if-eqz v1, :cond_48

    .line 328
    :goto_3b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :catchall_3f
    move-exception p0

    goto :goto_49

    :catch_41
    move-exception p0

    .line 325
    :goto_42
    :try_start_42
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    if-eqz v1, :cond_48

    goto :goto_3b

    :cond_48
    :goto_48
    return-object v0

    :goto_49
    if-eqz v1, :cond_4e

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_4e
    throw p0
.end method

.method public clearApplicationDataForUid(I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 339
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_5a

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_21} :catch_62
    .catchall {:try_start_6 .. :try_end_21} :catchall_60

    :try_start_21
    const-string/jumbo v3, "pkgname"

    .line 344
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 345
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 347
    :cond_2e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2e

    :cond_3b
    const-string v3, "ApplicationIcon"

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "nameowner = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v3, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_52} :catch_57
    .catchall {:try_start_21 .. :try_end_52} :catchall_54

    move-object v1, v2

    goto :goto_5a

    :catchall_54
    move-exception p0

    move-object v1, v2

    goto :goto_6a

    :catch_57
    move-exception p0

    move-object v1, v2

    goto :goto_63

    :cond_5a
    :goto_5a
    if-eqz v1, :cond_69

    .line 359
    :goto_5c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_69

    :catchall_60
    move-exception p0

    goto :goto_6a

    :catch_62
    move-exception p0

    .line 356
    :goto_63
    :try_start_63
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_60

    if-eqz v1, :cond_69

    goto :goto_5c

    :cond_69
    :goto_69
    return-object v0

    :goto_6a
    if-eqz v1, :cond_6f

    .line 359
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_6f
    throw p0
.end method

.method public deleteApplicationIcon(Ljava/lang/String;I)Z
    .registers 14

    const-string v0, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    const-string/jumbo v1, "nameowner"

    const-string v2, " = "

    const-string v3, "\' AND "

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 138
    :try_start_b
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_12

    return v4

    .line 147
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-virtual {p0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_31} :catch_eb
    .catchall {:try_start_b .. :try_end_31} :catchall_e9

    if-eqz v6, :cond_45

    .line 153
    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_37} :catch_41
    .catchall {:try_start_33 .. :try_end_37} :catchall_3d

    if-nez v7, :cond_3a

    goto :goto_45

    :cond_3a
    move v8, p2

    move-object v7, v1

    goto :goto_70

    :catchall_3d
    move-exception p0

    move-object v5, v6

    goto/16 :goto_f5

    :catch_41
    move-exception p0

    move-object v5, v6

    goto/16 :goto_ec

    :cond_45
    :goto_45
    if-eqz v6, :cond_4a

    .line 158
    :try_start_47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_3d

    :catch_4a
    :cond_4a
    :try_start_4a
    const-string/jumbo v7, "userid"

    .line 164
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 166
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p0, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 173
    :goto_70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_e5

    .line 174
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_83

    if-ne v0, p2, :cond_e5

    :cond_83
    const-string/jumbo p2, "newname"

    .line 179
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8e} :catch_41
    .catchall {:try_start_4a .. :try_end_8e} :catchall_3d

    const-string/jumbo v0, "pkgname = \'"

    const-string v1, "ApplicationIcon"

    if-eqz p2, :cond_c3

    .line 181
    :try_start_95
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "imagedata"

    .line 182
    invoke-virtual {p2, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 183
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p2, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_e5

    :goto_c1
    move v4, v9

    goto :goto_e5

    .line 189
    :cond_c3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_e2} :catch_41
    .catchall {:try_start_95 .. :try_end_e2} :catchall_3d

    if-lez p0, :cond_e5

    goto :goto_c1

    .line 203
    :cond_e5
    :goto_e5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_f4

    :catchall_e9
    move-exception p0

    goto :goto_f5

    :catch_eb
    move-exception p0

    .line 200
    :goto_ec
    :try_start_ec
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_e9

    if-eqz v5, :cond_f4

    .line 203
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f4
    :goto_f4
    return v4

    :goto_f5
    if-eqz v5, :cond_fa

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_fa
    throw p0
.end method

.method public deleteApplicationName(Ljava/lang/String;I)Z
    .registers 14

    const-string v0, " = "

    const-string/jumbo v1, "nameowner"

    const-string v2, "\' AND "

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 266
    :try_start_9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_10

    return v3

    .line 270
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    invoke-virtual {p0, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_31} :catch_a6
    .catchall {:try_start_9 .. :try_end_31} :catchall_a4

    .line 275
    :try_start_31
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_9a

    const-string/jumbo v6, "imagedata"

    .line 276
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6
    :try_end_43
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_43} :catch_a1
    .catchall {:try_start_31 .. :try_end_43} :catchall_9e

    const-string/jumbo v8, "pkgname = \'"

    const-string v9, "ApplicationIcon"

    if-eqz v6, :cond_78

    .line 278
    :try_start_4a
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "newname"

    .line 279
    invoke-virtual {v6, v10}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 280
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, v6, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_9a

    :goto_76
    move v3, v7

    goto :goto_9a

    .line 286
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a .. :try_end_97} :catch_a1
    .catchall {:try_start_4a .. :try_end_97} :catchall_9e

    if-lez p0, :cond_9a

    goto :goto_76

    .line 299
    :cond_9a
    :goto_9a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_af

    :catchall_9e
    move-exception p0

    move-object v4, v5

    goto :goto_b0

    :catch_a1
    move-exception p0

    move-object v4, v5

    goto :goto_a7

    :catchall_a4
    move-exception p0

    goto :goto_b0

    :catch_a6
    move-exception p0

    .line 296
    :goto_a7
    :try_start_a7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_a4

    if-eqz v4, :cond_af

    .line 299
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_af
    :goto_af
    return v3

    :goto_b0
    if-eqz v4, :cond_b5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_b5
    throw p0
.end method

.method public getApplicationIcon(Ljava/lang/String;I)[B
    .registers 6

    const/4 v0, 0x0

    .line 442
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 446
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "userid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_4f
    .catchall {:try_start_1 .. :try_end_30} :catchall_4d

    if-eqz p0, :cond_47

    .line 451
    :try_start_32
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string/jumbo p1, "imagedata"

    .line 452
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_43} :catch_45
    .catchall {:try_start_32 .. :try_end_43} :catchall_6f

    move-object v0, p1

    goto :goto_47

    :catch_45
    move-exception p1

    goto :goto_51

    :cond_47
    :goto_47
    if-eqz p0, :cond_6e

    .line 461
    :goto_49
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_6e

    :catchall_4d
    move-exception p1

    goto :goto_71

    :catch_4f
    move-exception p1

    move-object p0, v0

    :goto_51
    :try_start_51
    const-string p2, "ApplicationIconDb"

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationIcon  : Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_6f

    if-eqz p0, :cond_6e

    goto :goto_49

    :cond_6e
    :goto_6e
    return-object v0

    :catchall_6f
    move-exception p1

    move-object v0, p0

    :goto_71
    if-eqz v0, :cond_76

    .line 461
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 462
    :cond_76
    throw p1
.end method

.method public getApplicationIconChangedMap()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 371
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    const-string v2, "SELECT * FROM ApplicationIcon WHERE imagedata IS NOT NULL"

    .line 375
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 377
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_68

    .line 378
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_68

    const-string/jumbo p0, "imagedata"

    .line 379
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p0

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "userid"

    .line 381
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 382
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 383
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    const-string/jumbo v2, "pkgname"

    .line 385
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_70
    .catchall {:try_start_6 .. :try_end_67} :catchall_6e

    goto :goto_1b

    :cond_68
    if-eqz v1, :cond_8e

    .line 396
    :goto_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8e

    :catchall_6e
    move-exception p0

    goto :goto_8f

    :catch_70
    move-exception p0

    :try_start_71
    const-string v2, "ApplicationIconDb"

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationIconChangedMap  : Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_6e

    if-eqz v1, :cond_8e

    goto :goto_6a

    :cond_8e
    :goto_8e
    return-object v0

    :goto_8f
    if-eqz v1, :cond_94

    .line 396
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 397
    :cond_94
    throw p0
.end method

.method public getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 472
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_8

    return-object v0

    .line 477
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "userid"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_4f
    .catchall {:try_start_1 .. :try_end_30} :catchall_4d

    if-eqz p0, :cond_47

    .line 482
    :try_start_32
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string/jumbo p1, "newname"

    .line 483
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_43} :catch_45
    .catchall {:try_start_32 .. :try_end_43} :catchall_6f

    move-object v0, p1

    goto :goto_47

    :catch_45
    move-exception p1

    goto :goto_51

    :cond_47
    :goto_47
    if-eqz p0, :cond_6e

    .line 492
    :goto_49
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_6e

    :catchall_4d
    move-exception p1

    goto :goto_71

    :catch_4f
    move-exception p1

    move-object p0, v0

    :goto_51
    :try_start_51
    const-string p2, "ApplicationIconDb"

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationName  : Exception :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_51 .. :try_end_6b} :catchall_6f

    if-eqz p0, :cond_6e

    goto :goto_49

    :cond_6e
    :goto_6e
    return-object v0

    :catchall_6f
    move-exception p1

    move-object v0, p0

    :goto_71
    if-eqz v0, :cond_76

    .line 492
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_76
    throw p1
.end method

.method public getApplicationNameChangedMap()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 407
    :try_start_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_d

    return-object v0

    :cond_d
    const-string v2, "SELECT * FROM ApplicationIcon WHERE newname IS NOT NULL"

    .line 411
    invoke-virtual {p0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_68

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_68

    .line 414
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_68

    const-string/jumbo p0, "newname"

    .line 415
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    const-string/jumbo p0, "userid"

    .line 417
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 418
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4f

    .line 419
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    const-string/jumbo v2, "pkgname"

    .line 421
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_70
    .catchall {:try_start_6 .. :try_end_67} :catchall_6e

    goto :goto_1b

    :cond_68
    if-eqz v1, :cond_8e

    .line 432
    :goto_6a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8e

    :catchall_6e
    move-exception p0

    goto :goto_8f

    :catch_70
    move-exception p0

    :try_start_71
    const-string v2, "ApplicationIconDb"

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApplicationNameChangedMap  : Exception :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_71 .. :try_end_8b} :catchall_6e

    if-eqz v1, :cond_8e

    goto :goto_6a

    :cond_8e
    :goto_8e
    return-object v0

    :goto_8f
    if-eqz v1, :cond_94

    .line 432
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_94
    throw p0
.end method

.method public final insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11

    const-string p0, "INT"

    const-string v0, "%s %s"

    const-string v1, "ALTER TABLE %s ADD COLUMN %s;"

    const-string v2, "ApplicationIcon"

    .line 558
    invoke-static {p1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const/4 v3, 0x2

    :try_start_f
    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "newname"

    aput-object v7, v6, v5

    const-string v7, "TEXT"

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 563
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    .line 561
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v6, "userid"

    aput-object v6, v4, v5

    aput-object p0, v4, v8

    .line 564
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "%s DEFAULT %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v5

    .line 566
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v8

    .line 565
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v4, v6, v8

    .line 567
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v2, v4, v5

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "nameowner"

    aput-object v3, v2, v5

    aput-object p0, v2, v8

    .line 573
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v8

    .line 571
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_71
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_71} :catch_72

    goto :goto_7d

    :catch_72
    move-exception p0

    const-string p1, "ApplicationIconDb"

    const-string v0, "::insertNewColumns: Exception while table is upgrading "

    .line 575
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    const-string v0, "ApplicationIconDb"

    const-string v1, "ApplicationIcon"

    .line 513
    invoke-static {p1, v1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    :try_start_a
    const-string p0, " (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);"

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create table ApplicationIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "::onCreate: Table is Created "

    .line 523
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_33

    :catch_26
    move-exception p0

    const-string p1, "::onCreate: Exception while table is creating "

    .line 526
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-virtual {p0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_33

    .line 530
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_33
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p2, 0x3

    if-ne p3, p2, :cond_6

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->updateSecureFolderCustomizedInfo(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    return-void
.end method

.method public updateApplicationIcon(Ljava/lang/String;[BI)Z
    .registers 21

    move-object/from16 v0, p1

    const-string v1, "_id"

    const-string/jumbo v2, "nameowner"

    .line 81
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v14, "ApplicationIconDb"

    const/4 v15, 0x0

    if-nez v13, :cond_1b

    const-string/jumbo v0, "updateApplicationIcon(): null db"

    .line 84
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_1b
    :try_start_1b
    const-string v5, "ApplicationIcon"

    .line 88
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "pkgname = ? AND userid= ?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    aput-object v0, v8, v15

    .line 91
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v16, "1"

    move-object v4, v13

    move-object/from16 v12, v16

    .line 88
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3c
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_3c} :catch_e1

    if-nez v4, :cond_4a

    :try_start_3e
    const-string/jumbo v0, "updateApplicationIcon(): null cursor"

    .line 93
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_d3

    if-eqz v4, :cond_49

    .line 127
    :try_start_46
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_49
    .catch Landroid/database/SQLException; {:try_start_46 .. :try_end_49} :catch_e1

    :cond_49
    return v15

    .line 96
    :cond_4a
    :try_start_4a
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "imagedata"

    move-object/from16 v7, p2

    .line 97
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 98
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_d3

    const-wide/16 v7, 0x0

    const-string v9, "ApplicationIcon"

    if-nez v6, :cond_88

    :try_start_68
    const-string/jumbo v1, "userid"

    .line 102
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "pkgname"

    .line 103
    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {v13, v9, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_d3

    cmp-long v0, v0, v7

    if-lez v0, :cond_83

    const/4 v12, 0x1

    goto :goto_84

    :cond_83
    move v12, v15

    .line 127
    :goto_84
    :try_start_84
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_87
    .catch Landroid/database/SQLException; {:try_start_84 .. :try_end_87} :catch_e1

    return v12

    .line 109
    :cond_88
    :try_start_88
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_98

    const-string/jumbo v0, "updateApplicationIcon(): moveToFirst error!"

    .line 110
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_88 .. :try_end_94} :catchall_d3

    .line 127
    :try_start_94
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_97
    .catch Landroid/database/SQLException; {:try_start_94 .. :try_end_97} :catch_e1

    return v15

    .line 113
    :cond_98
    :try_start_98
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 115
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b8

    move/from16 v2, p3

    if-eq v1, v2, :cond_b8

    const-string/jumbo v0, "updateApplicationIcon(): invalid ownerUid"

    .line 120
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_98 .. :try_end_b4} :catchall_d3

    .line 127
    :try_start_b4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_b7
    .catch Landroid/database/SQLException; {:try_start_b4 .. :try_end_b7} :catch_e1

    return v15

    :cond_b8
    :try_start_b8
    const-string v1, "_id = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    .line 125
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v15

    .line 124
    invoke-virtual {v13, v9, v5, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_d3

    int-to-long v0, v0

    cmp-long v0, v0, v7

    if-lez v0, :cond_ce

    move v12, v2

    goto :goto_cf

    :cond_ce
    move v12, v15

    .line 127
    :goto_cf
    :try_start_cf
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d2
    .catch Landroid/database/SQLException; {:try_start_cf .. :try_end_d2} :catch_e1

    return v12

    :catchall_d3
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_e0

    .line 88
    :try_start_d7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_db

    goto :goto_e0

    :catchall_db
    move-exception v0

    move-object v2, v0

    :try_start_dd
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e0
    :goto_e0
    throw v1
    :try_end_e1
    .catch Landroid/database/SQLException; {:try_start_dd .. :try_end_e1} :catch_e1

    :catch_e1
    move-exception v0

    const-string/jumbo v1, "updateApplicationIcon(): SQLException - "

    .line 128
    invoke-static {v14, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v15
.end method

.method public updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16

    const-string v0, " = "

    const-string v1, "\' AND "

    const-string/jumbo v2, "userid"

    .line 212
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 217
    :try_start_d
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_14

    return v4

    .line 221
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-virtual {p0, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_35
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_35} :catch_b8
    .catchall {:try_start_d .. :try_end_35} :catchall_b6

    .line 226
    :try_start_35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_39} :catch_b3
    .catchall {:try_start_35 .. :try_end_39} :catchall_b0

    const/4 v8, 0x1

    const-string v9, "ApplicationIcon"

    const-string/jumbo v10, "newname"

    const-string/jumbo v11, "nameowner"

    if-eqz v7, :cond_85

    .line 227
    :try_start_44
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_50

    if-ne v7, p3, :cond_ac

    .line 232
    :cond_50
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 233
    invoke-virtual {v7, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, v11, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "pkgname = \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v9, v7, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_ac

    :goto_83
    move v4, v8

    goto :goto_ac

    .line 242
    :cond_85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "pkgname"

    .line 243
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    invoke-virtual {p0, v9, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_a5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_44 .. :try_end_a5} :catch_b3
    .catchall {:try_start_44 .. :try_end_a5} :catchall_b0

    const-wide/16 p2, 0x0

    cmp-long p0, p2, p0

    if-gez p0, :cond_ac

    goto :goto_83

    .line 256
    :cond_ac
    :goto_ac
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_c1

    :catchall_b0
    move-exception p0

    move-object v5, v6

    goto :goto_c2

    :catch_b3
    move-exception p0

    move-object v5, v6

    goto :goto_b9

    :catchall_b6
    move-exception p0

    goto :goto_c2

    :catch_b8
    move-exception p0

    .line 253
    :goto_b9
    :try_start_b9
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_b6

    if-eqz v5, :cond_c1

    .line 256
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_c1
    :goto_c1
    return v4

    :goto_c2
    if-eqz v5, :cond_c7

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_c7
    throw p0
.end method

.method public final updateSecureFolderCustomizedInfo(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    :try_start_0
    const-string v0, "com.samsung.knox.securefolder"

    .line 548
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationIconDb;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update ApplicationIcon set nameowner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkgname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'com.samsung.knox.securefolder\' and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nameowner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ApplicationIconDb"

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "securefolder customizedinfo owner updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_55

    goto :goto_59

    :catch_55
    move-exception p0

    .line 553
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_59
    return-void
.end method
