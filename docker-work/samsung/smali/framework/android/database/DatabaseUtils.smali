.class public Landroid/database/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/DatabaseUtils$InsertHelper;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o DIGITS:[C

.field public static final whitelist STATEMENT_ABORT:I = 0x6

.field public static final whitelist STATEMENT_ATTACH:I = 0x3

.field public static final whitelist STATEMENT_BEGIN:I = 0x4

.field public static final whitelist STATEMENT_COMMIT:I = 0x5

.field public static final whitelist STATEMENT_DDL:I = 0x8

.field public static final whitelist STATEMENT_OTHER:I = 0x63

.field public static final whitelist STATEMENT_PRAGMA:I = 0x7

.field public static final whitelist STATEMENT_SELECT:I = 0x1

.field public static final whitelist STATEMENT_UNPREPARED:I = 0x9

.field public static final whitelist STATEMENT_UPDATE:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DatabaseUtils"

.field private static greylist-max-o mColl:Ljava/text/Collator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 614
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    sput-object v0, Landroid/database/DatabaseUtils;->DIGITS:[C

    .line 649
    const/4 v0, 0x0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    return-void

    nop

    :array_e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .line 513
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 515
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_46

    .line 516
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 517
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 518
    add-int/lit8 v4, v1, -0x1

    if-ne v2, v4, :cond_1b

    .line 519
    goto :goto_43

    .line 521
    :cond_1b
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 523
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 524
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    goto :goto_43

    .line 531
    :cond_34
    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 532
    goto :goto_43

    .line 534
    :cond_3b
    if-ne v3, v0, :cond_40

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    :cond_40
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    .end local v3    # "c":C
    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 539
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 540
    return-void
.end method

.method public static whitelist appendSelectionArgs([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p0, "originalValues"    # [Ljava/lang/String;
    .param p1, "newValues"    # [Ljava/lang/String;

    .line 1625
    if-eqz p0, :cond_16

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_16

    .line 1628
    :cond_6
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    .line 1629
    .local v0, "result":[Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1630
    array-length v1, p0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1631
    return-object v0

    .line 1626
    .end local v0    # "result":[Ljava/lang/String;
    :cond_16
    :goto_16
    return-object p1
.end method

.method public static final whitelist appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .registers 4
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .line 557
    if-nez p1, :cond_8

    .line 558
    const-string v0, "NULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 559
    :cond_8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_21

    .line 560
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 561
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 562
    const/16 v1, 0x31

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_20

    .line 564
    :cond_1b
    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_20
    goto :goto_28

    .line 567
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 569
    :goto_28
    return-void
.end method

.method private static blacklist bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V
    .registers 7
    .param p0, "st"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "bindArgs"    # [Ljava/lang/Object;

    .line 214
    if-nez p1, :cond_3

    return-void

    .line 216
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_5d

    .line 217
    aget-object v1, p1, v0

    .line 218
    .local v1, "bindArg":Ljava/lang/Object;
    invoke-static {v1}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_5e

    .line 233
    :pswitch_10
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_51

    .line 237
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-wide/16 v3, 0x1

    goto :goto_4d

    .line 229
    :pswitch_22
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 230
    goto :goto_5a

    .line 226
    :pswitch_2b
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 227
    goto :goto_5a

    .line 223
    :pswitch_38
    add-int/lit8 v2, v0, 0x1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 224
    goto :goto_5a

    .line 220
    :pswitch_45
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 221
    goto :goto_5a

    .line 237
    :cond_4b
    const-wide/16 v3, 0x0

    :goto_4d
    invoke-virtual {p0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_5a

    .line 239
    :cond_51
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    .end local v1    # "bindArg":Ljava/lang/Object;
    :goto_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 244
    .end local v0    # "i":I
    :cond_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_45
        :pswitch_38
        :pswitch_2b
        :pswitch_10
        :pswitch_22
    .end packed-switch
.end method

.method public static whitelist bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    .registers 6
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 257
    if-nez p2, :cond_6

    .line 258
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_54

    .line 259
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_4a

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_f

    goto :goto_4a

    .line 261
    :cond_f
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_1e

    .line 262
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_54

    .line 263
    :cond_1e
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_37

    .line 264
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    .line 265
    .local v0, "bool":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 266
    const-wide/16 v1, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    goto :goto_36

    .line 268
    :cond_31
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 270
    .end local v0    # "bool":Ljava/lang/Boolean;
    :goto_36
    goto :goto_54

    :cond_37
    instance-of v0, p2, [B

    if-eqz v0, :cond_42

    .line 271
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    goto :goto_54

    .line 273
    :cond_42
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_54

    .line 260
    :cond_4a
    :goto_4a
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 275
    :goto_54
    return-void
.end method

.method public static varargs blacklist bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 15
    .param p0, "selection"    # Ljava/lang/String;
    .param p1, "selectionArgs"    # [Ljava/lang/Object;

    .line 290
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 292
    :cond_4
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p0

    .line 294
    :cond_b
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return-object p0

    .line 298
    :cond_15
    const/16 v1, 0x20

    .line 299
    .local v1, "before":C
    const/16 v2, 0x20

    .line 301
    .local v2, "after":C
    const/4 v3, 0x0

    .line 302
    .local v3, "argIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 303
    .local v4, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 304
    .local v5, "res":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_24
    if-ge v6, v4, :cond_b8

    .line 305
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 306
    .local v6, "c":C
    if-ne v6, v0, :cond_b1

    .line 309
    const/16 v2, 0x20

    .line 313
    move v8, v7

    .line 314
    .local v8, "start":I
    :goto_31
    if-ge v7, v4, :cond_44

    .line 315
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 316
    const/16 v9, 0x30

    if-lt v6, v9, :cond_43

    const/16 v9, 0x39

    if-le v6, v9, :cond_40

    goto :goto_43

    .line 314
    :cond_40
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    .line 317
    :cond_43
    :goto_43
    move v2, v6

    .line 321
    :cond_44
    if-eq v8, v7, :cond_50

    .line 322
    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 327
    :cond_50
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "argIndex":I
    .local v9, "argIndex":I
    aget-object v3, p1, v3

    .line 328
    .local v3, "arg":Ljava/lang/Object;
    const/16 v10, 0x20

    if-eq v1, v10, :cond_5f

    const/16 v11, 0x3d

    if-eq v1, v11, :cond_5f

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 329
    :cond_5f
    invoke-static {v3}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v11

    packed-switch v11, :pswitch_data_be

    .line 343
    :pswitch_66
    instance-of v11, v3, Ljava/lang/Boolean;

    if-eqz v11, :cond_9a

    .line 346
    move-object v11, v3

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_96

    .line 340
    :pswitch_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v10, "Blobs not supported"

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :pswitch_7a
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 338
    goto :goto_a9

    .line 334
    :pswitch_85
    move-object v11, v3

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    goto :goto_a9

    .line 331
    :pswitch_90
    const-string v11, "NULL"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    goto :goto_a9

    .line 346
    :goto_96
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_a9

    .line 348
    :cond_9a
    const/16 v11, 0x27

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    :goto_a9
    if-eq v2, v10, :cond_ae

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    .end local v3    # "arg":Ljava/lang/Object;
    .end local v8    # "start":I
    :cond_ae
    move v6, v7

    move v3, v9

    goto :goto_b6

    .line 356
    .end local v9    # "argIndex":I
    .local v3, "argIndex":I
    :cond_b1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    move v1, v6

    move v6, v7

    .line 359
    .end local v7    # "i":I
    .local v6, "i":I
    :goto_b6
    goto/16 :goto_24

    .line 360
    .end local v6    # "i":I
    :cond_b8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_90
        :pswitch_85
        :pswitch_7a
        :pswitch_66
        :pswitch_72
    .end packed-switch
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1064
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1066
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1068
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1066
    return-object v1

    .line 1068
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1069
    throw v1
.end method

.method public static whitelist blobFileDescriptorForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1080
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .line 575
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 576
    return-object p1

    .line 578
    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 579
    return-object p0

    .line 582
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "sqlStatements"    # Ljava/lang/String;

    .line 1553
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1557
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, ";\n"

    invoke-static {p3, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1558
    .local v2, "statements":[Ljava/lang/String;
    array-length v3, v2

    :goto_d
    if-ge v0, v3, :cond_1e

    aget-object v4, v2, v0

    .line 1559
    .local v4, "statement":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_1b

    .line 1560
    :cond_18
    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1558
    .end local v4    # "statement":Ljava/lang/String;
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1562
    :cond_1e
    invoke-virtual {v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1563
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1564
    return-void
.end method

.method public static whitelist cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 904
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 905
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 906
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1d

    .line 908
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 910
    :goto_1d
    return-void
.end method

.method public static whitelist cursorDoubleToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1174
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1175
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1176
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1178
    :cond_18
    return-void
.end method

.method public static whitelist cursorDoubleToCursorValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 891
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorDoubleToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 892
    return-void
.end method

.method public static greylist-max-o cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V
    .registers 9
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .line 438
    if-ltz p1, :cond_80

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_a

    goto/16 :goto_80

    .line 441
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 442
    .local v0, "oldPos":I
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 443
    .local v1, "numColumns":I
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 444
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 445
    invoke-virtual {p2, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 446
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 448
    :cond_21
    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v2

    if-nez v2, :cond_28

    .line 449
    goto :goto_7c

    .line 451
    :cond_28
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_74

    .line 452
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    .line 454
    .local v3, "type":I
    packed-switch v3, :pswitch_data_82

    .line 476
    :pswitch_32
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_65

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v5

    goto :goto_69

    .line 468
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_3d
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 469
    .local v4, "value":[B
    if-eqz v4, :cond_48

    invoke-virtual {p2, v4, p1, v2}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v5

    goto :goto_4c

    .line 470
    :cond_48
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_4c
    nop

    .line 471
    .local v5, "success":Z
    goto :goto_6b

    .line 464
    .end local v4    # "value":[B
    .end local v5    # "success":Z
    :pswitch_4e
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v5

    .line 465
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 460
    .end local v5    # "success":Z
    :pswitch_57
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5, p1, v2}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v5

    .line 461
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 456
    .end local v5    # "success":Z
    :pswitch_60
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    .line 457
    .restart local v5    # "success":Z
    goto :goto_6b

    .line 478
    .end local v5    # "success":Z
    .local v4, "value":Ljava/lang/String;
    :cond_65
    invoke-virtual {p2, p1, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v5

    :goto_69
    nop

    .line 479
    .restart local v5    # "success":Z
    nop

    .line 482
    .end local v4    # "value":Ljava/lang/String;
    :goto_6b
    if-nez v5, :cond_71

    .line 483
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V

    .line 484
    goto :goto_7c

    .line 451
    .end local v3    # "type":I
    .end local v5    # "success":Z
    :cond_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 487
    .end local v2    # "i":I
    :cond_74
    add-int/lit8 p1, p1, 0x1

    .line 488
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_21

    .line 490
    :cond_7c
    :goto_7c
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 491
    return-void

    .line 439
    .end local v0    # "oldPos":I
    .end local v1    # "numColumns":I
    :cond_80
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_60
        :pswitch_57
        :pswitch_4e
        :pswitch_32
        :pswitch_3d
    .end packed-switch
.end method

.method public static whitelist cursorFloatToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1158
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1159
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1160
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 1162
    :cond_18
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 830
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public static whitelist cursorIntToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 843
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 844
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 845
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1d

    .line 847
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 849
    :goto_1d
    return-void
.end method

.method public static whitelist cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1142
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1143
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1144
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1146
    :cond_18
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 860
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public static whitelist cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 873
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 874
    .local v0, "colIndex":I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 875
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 876
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    .end local v1    # "value":Ljava/lang/Long;
    goto :goto_1d

    .line 878
    :cond_16
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p2, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 880
    :goto_1d
    return-void
.end method

.method public static whitelist cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1110
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1111
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1112
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1114
    :cond_18
    return-void
.end method

.method public static greylist cursorPickFillWindowStartPosition(II)I
    .registers 4
    .param p0, "cursorPosition"    # I
    .param p1, "cursorWindowCapacity"    # I

    .line 954
    div-int/lit8 v0, p1, 0x3

    sub-int v0, p0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 7
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 919
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "columns":[Ljava/lang/String;
    array-length v1, v0

    .line 921
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_25

    .line 922
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_19

    .line 923
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_22

    .line 925
    :cond_19
    aget-object v3, v0, v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 928
    .end local v2    # "i":I
    :cond_25
    return-void
.end method

.method public static whitelist cursorShortToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1126
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1127
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1128
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 1130
    :cond_18
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 793
    invoke-static {p0, p1, p2, p1}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 794
    return-void
.end method

.method public static whitelist cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .line 819
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return-void
.end method

.method public static whitelist cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;

    .line 1094
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1095
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1096
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_14
    return-void
.end method

.method public static whitelist cursorStringToInsertHelper(Landroid/database/Cursor;Ljava/lang/String;Landroid/database/DatabaseUtils$InsertHelper;I)V
    .registers 5
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Landroid/database/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .line 806
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 807
    return-void
.end method

.method public static blacklist deepCopyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .param p0, "args"    # [Ljava/lang/Object;

    .line 370
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 372
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 373
    .local v0, "res":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_33

    .line 374
    aget-object v2, p0, v1

    .line 376
    .local v2, "arg":Ljava/lang/Object;
    if-eqz v2, :cond_2e

    instance-of v3, v2, Ljava/lang/Number;

    if-nez v3, :cond_2e

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_18

    goto :goto_2e

    .line 379
    :cond_18
    instance-of v3, v2, [B

    if-eqz v3, :cond_27

    .line 381
    move-object v3, v2

    check-cast v3, [B

    .line 382
    .local v3, "castArg":[B
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    aput-object v4, v0, v1

    .line 383
    .end local v3    # "castArg":[B
    goto :goto_30

    .line 385
    :cond_27
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_30

    .line 378
    :cond_2e
    :goto_2e
    aput-object v2, v0, v1

    .line 373
    .end local v2    # "arg":Ljava/lang/Object;
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 388
    .end local v1    # "i":I
    :cond_33
    return-object v0
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;)V
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 721
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 722
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 731
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "cols":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 733
    array-length v1, v0

    .line 734
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_56

    .line 737
    :try_start_28
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_2c} :catch_2d

    .line 742
    .local v3, "value":Ljava/lang/String;
    goto :goto_31

    .line 738
    .end local v3    # "value":Ljava/lang/String;
    :catch_2d
    move-exception v3

    .line 741
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 743
    .local v3, "value":Ljava/lang/String;
    :goto_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 734
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 745
    .end local v2    # "i":I
    :cond_56
    const-string/jumbo v2, "}"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public static whitelist dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 755
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "cols":[Ljava/lang/String;
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    array-length v1, v0

    .line 758
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_3c

    .line 761
    :try_start_15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 766
    .local v3, "value":Ljava/lang/String;
    goto :goto_1e

    .line 762
    .end local v3    # "value":Ljava/lang/String;
    :catch_1a
    move-exception v3

    .line 765
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    const-string v4, "<unprintable>"

    move-object v3, v4

    .line 767
    .local v3, "value":Ljava/lang/String;
    :goto_1e
    const-string v4, "   "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 769
    .end local v2    # "i":I
    :cond_3c
    const-string/jumbo v2, "}\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    return-void
.end method

.method public static whitelist dumpCurrentRowToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;)V
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 657
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    .line 658
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/io/PrintStream;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> Dumping cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 669
    if-eqz p0, :cond_2d

    .line 670
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 672
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 673
    :goto_20
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 674
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/io/PrintStream;)V

    goto :goto_20

    .line 676
    :cond_2a
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 678
    .end local v0    # "startPos":I
    :cond_2d
    const-string v0, "<<<<<"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public static whitelist dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 689
    const-string v0, ">>>>> Dumping cursor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    if-eqz p0, :cond_26

    .line 691
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 693
    .local v0, "startPos":I
    const/4 v1, -0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 694
    :goto_19
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 695
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->dumpCurrentRow(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    goto :goto_19

    .line 697
    :cond_23
    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 699
    .end local v0    # "startPos":I
    :cond_26
    const-string v0, "<<<<<\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    return-void
.end method

.method public static whitelist dumpCursorToString(Landroid/database/Cursor;)Ljava/lang/String;
    .registers 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;Ljava/lang/StringBuilder;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o encodeHex([B)[C
    .registers 8
    .param p0, "input"    # [B

    .line 620
    array-length v0, p0

    .line 621
    .local v0, "l":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [C

    .line 624
    .local v1, "out":[C
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    if-ge v2, v0, :cond_24

    .line 625
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    sget-object v5, Landroid/database/DatabaseUtils;->DIGITS:[C

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v6, v5, v6

    aput-char v6, v1, v3

    .line 626
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v2

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    .line 624
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 629
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_24
    return-object v1
.end method

.method public static blacklist escapeForLike(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "arg"    # Ljava/lang/String;

    .line 1654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1655
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1656
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1657
    .local v2, "c":C
    const/16 v3, 0x5c

    sparse-switch v2, :sswitch_data_2a

    goto :goto_1e

    .line 1660
    :sswitch_16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1658
    :sswitch_1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1659
    nop

    .line 1663
    :goto_1e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1655
    .end local v2    # "c":C
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1665
    .end local v1    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_2a
    .sparse-switch
        0x25 -> :sswitch_1a
        0x5f -> :sswitch_16
    .end sparse-switch
.end method

.method public static blacklist executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)J
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 198
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 200
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 199
    :cond_10
    return-wide v1

    .line 197
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v1
.end method

.method public static blacklist executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 206
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 207
    .local v0, "st":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->bindArgs(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    .line 209
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 208
    :cond_10
    return v1

    .line 206
    :catchall_11
    move-exception v1

    if-eqz v0, :cond_1c

    :try_start_14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_18

    goto :goto_1c

    :catchall_18
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    throw v1
.end method

.method public static greylist-max-o findRowIdColumnIndex([Ljava/lang/String;)I
    .registers 5
    .param p0, "columnNames"    # [Ljava/lang/String;

    .line 1639
    array-length v0, p0

    .line 1640
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_12

    .line 1641
    aget-object v2, p0, v1

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1642
    return v1

    .line 1640
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1645
    .end local v1    # "i":I
    :cond_12
    const/4 v1, -0x1

    return v1
.end method

.method public static whitelist getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 591
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 593
    .local v0, "arr":[B
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v3

    const-string v4, "ISO8859_1"

    invoke-direct {v1, v0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    return-object v1

    .line 594
    :catch_11
    move-exception v1

    .line 595
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    return-object v2
.end method

.method private static greylist-max-o getCollationKeyInBytes(Ljava/lang/String;)[B
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 642
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    if-nez v0, :cond_e

    .line 643
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    .line 644
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 646
    :cond_e
    sget-object v0, Landroid/database/DatabaseUtils;->mColl:Ljava/text/Collator;

    invoke-virtual {v0, p0}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/CollationKey;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 605
    invoke-static {p0}, Landroid/database/DatabaseUtils;->getCollationKeyInBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 606
    .local v0, "arr":[B
    invoke-static {v0}, Landroid/database/DatabaseUtils;->encodeHex([B)[C

    move-result-object v1

    .line 607
    .local v1, "keys":[C
    new-instance v2, Ljava/lang/String;

    invoke-static {v0}, Landroid/database/DatabaseUtils;->getKeyLen([B)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method private static greylist-max-o getKeyLen([B)I
    .registers 2
    .param p0, "arr"    # [B

    .line 633
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eqz v0, :cond_9

    .line 634
    array-length v0, p0

    return v0

    .line 637
    :cond_9
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static whitelist getSqlStatementType(Ljava/lang/String;)I
    .registers 6
    .param p0, "sql"    # Ljava/lang/String;

    .line 1581
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1582
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x63

    const/4 v2, 0x3

    if-ge v0, v2, :cond_e

    .line 1583
    return v1

    .line 1585
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "prefixSql":Ljava/lang/String;
    const-string v3, "SEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1587
    const/4 v1, 0x1

    return v1

    .line 1588
    :cond_23
    const-string v3, "INS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 1589
    const-string v3, "UPD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 1590
    const-string v3, "REP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e7

    .line 1591
    const-string v3, "DEL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto/16 :goto_e7

    .line 1593
    :cond_45
    const-string v3, "ATT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1594
    return v2

    .line 1595
    :cond_4e
    const-string v2, "COM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_58

    .line 1596
    return v3

    .line 1597
    :cond_58
    const-string v2, "END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1598
    return v3

    .line 1599
    :cond_61
    const-string v2, "ROL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 1600
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " TO "

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1601
    .local v2, "isRollbackToSavepoint":Z
    if-eqz v2, :cond_a0

    .line 1602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Statement \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' may not work on API levels 16-27, use \';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' instead"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DatabaseUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    return v1

    .line 1606
    :cond_a0
    const/4 v1, 0x6

    return v1

    .line 1607
    .end local v2    # "isRollbackToSavepoint":Z
    :cond_a2
    const-string v2, "BEG"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 1608
    const/4 v1, 0x4

    return v1

    .line 1609
    :cond_ac
    const-string v2, "PRA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 1610
    const/4 v1, 0x7

    return v1

    .line 1611
    :cond_b6
    const-string v2, "CRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    const-string v2, "DRO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e4

    .line 1612
    const-string v2, "ALT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    goto :goto_e4

    .line 1614
    :cond_cf
    const-string v2, "ANA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e1

    const-string v2, "DET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    goto :goto_e1

    .line 1617
    :cond_e0
    return v1

    .line 1615
    :cond_e1
    :goto_e1
    const/16 v1, 0x9

    return v1

    .line 1613
    :cond_e4
    :goto_e4
    const/16 v1, 0x8

    return v1

    .line 1592
    :cond_e7
    :goto_e7
    const/4 v1, 0x2

    return v1
.end method

.method public static greylist-max-p getTypeOfObject(Ljava/lang/Object;)I
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 410
    if-nez p0, :cond_4

    .line 411
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_a

    .line 413
    const/4 v0, 0x4

    return v0

    .line 414
    :cond_a
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_28

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_13

    goto :goto_28

    .line 416
    :cond_13
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_24

    goto :goto_26

    .line 420
    :cond_24
    const/4 v0, 0x3

    return v0

    .line 418
    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0

    .line 415
    :cond_28
    :goto_28
    const/4 v0, 0x2

    return v0
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1017
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1019
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J

    move-result-wide v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1021
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1019
    return-wide v1

    .line 1021
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1022
    throw v1
.end method

.method public static whitelist longForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)J
    .registers 4
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1030
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o queryIsEmpty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "select exists(select 1 from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1009
    .local v0, "isEmpty":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    return v2
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .registers 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .line 964
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;

    .line 977
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 7
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 995
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_1a
    const-string v0, ""

    .line 996
    .local v0, "s":Ljava/lang/String;
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "select count(*) from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public static final whitelist readExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p0, "reply"    # Landroid/os/Parcel;

    .line 139
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 140
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 141
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 143
    return-void
.end method

.method private static final greylist-max-o readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .line 170
    packed-switch p2, :pswitch_data_3e

    .line 190
    :pswitch_3
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->readException(ILjava/lang/String;)V

    .line 192
    return-void

    .line 188
    :pswitch_7
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0, p1}, Landroid/os/OperationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :pswitch_d
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_13
    new-instance v0, Landroid/database/sqlite/SQLiteDiskIOException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDiskIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_19
    new-instance v0, Landroid/database/sqlite/SQLiteFullException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteFullException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :pswitch_1f
    new-instance v0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :pswitch_25
    new-instance v0, Landroid/database/sqlite/SQLiteConstraintException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteConstraintException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :pswitch_2b
    new-instance v0, Landroid/database/sqlite/SQLiteAbortException;

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public static whitelist readExceptionWithFileNotFoundExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 148
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 149
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "msg":Ljava/lang/String;
    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    .line 153
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 155
    return-void

    .line 151
    :cond_12
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist readExceptionWithOperationApplicationExceptionFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p0, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Landroid/os/Parcel;->readExceptionCode()I

    move-result v0

    .line 160
    .local v0, "code":I
    if-nez v0, :cond_7

    return-void

    .line 161
    :cond_7
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "msg":Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v0, v2, :cond_13

    .line 165
    invoke-static {p0, v1, v0}, Landroid/database/DatabaseUtils;->readExceptionFromParcel(Landroid/os/Parcel;Ljava/lang/String;I)V

    .line 167
    return-void

    .line 163
    :cond_13
    new-instance v2, Landroid/content/OperationApplicationException;

    invoke-direct {v2, v1}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v0, "escaper":Ljava/lang/StringBuilder;
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .line 1039
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 1041
    .local v0, "prog":Landroid/database/sqlite/SQLiteStatement;
    :try_start_4
    invoke-static {v0, p2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1043
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1041
    return-object v1

    .line 1043
    :catchall_c
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1044
    throw v1
.end method

.method public static whitelist stringForQuery(Landroid/database/sqlite/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "prog"    # Landroid/database/sqlite/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 1052
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V
    .registers 7
    .param p0, "reply"    # Landroid/os/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "code":I
    const/4 v1, 0x1

    .line 92
    .local v1, "logException":Z
    instance-of v2, p1, Ljava/io/FileNotFoundException;

    const-string v3, "Writing exception to parcel"

    const-string v4, "DatabaseUtils"

    if-eqz v2, :cond_d

    .line 93
    const/4 v0, 0x1

    .line 94
    const/4 v1, 0x0

    goto :goto_4d

    .line 95
    :cond_d
    instance-of v2, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v2, :cond_13

    .line 96
    const/4 v0, 0x2

    goto :goto_4d

    .line 97
    :cond_13
    instance-of v2, p1, Ljava/lang/UnsupportedOperationException;

    if-eqz v2, :cond_19

    .line 98
    const/4 v0, 0x3

    goto :goto_4d

    .line 99
    :cond_19
    instance-of v2, p1, Landroid/database/sqlite/SQLiteAbortException;

    if-eqz v2, :cond_1f

    .line 100
    const/4 v0, 0x4

    goto :goto_4d

    .line 101
    :cond_1f
    instance-of v2, p1, Landroid/database/sqlite/SQLiteConstraintException;

    if-eqz v2, :cond_25

    .line 102
    const/4 v0, 0x5

    goto :goto_4d

    .line 103
    :cond_25
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabaseCorruptException;

    if-eqz v2, :cond_2b

    .line 104
    const/4 v0, 0x6

    goto :goto_4d

    .line 105
    :cond_2b
    instance-of v2, p1, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v2, :cond_31

    .line 106
    const/4 v0, 0x7

    goto :goto_4d

    .line 107
    :cond_31
    instance-of v2, p1, Landroid/database/sqlite/SQLiteDiskIOException;

    if-eqz v2, :cond_38

    .line 108
    const/16 v0, 0x8

    goto :goto_4d

    .line 109
    :cond_38
    instance-of v2, p1, Landroid/database/sqlite/SQLiteException;

    if-eqz v2, :cond_3f

    .line 110
    const/16 v0, 0x9

    goto :goto_4d

    .line 111
    :cond_3f
    instance-of v2, p1, Landroid/content/OperationApplicationException;

    if-eqz v2, :cond_46

    .line 112
    const/16 v0, 0xa

    goto :goto_4d

    .line 113
    :cond_46
    instance-of v2, p1, Landroid/os/OperationCanceledException;

    if-eqz v2, :cond_5d

    .line 114
    const/16 v0, 0xb

    .line 115
    const/4 v1, 0x0

    .line 121
    :goto_4d
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    if-eqz v1, :cond_5c

    .line 125
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :cond_5c
    return-void

    .line 117
    :cond_5d
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    .line 118
    invoke-static {v4, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    return-void
.end method
