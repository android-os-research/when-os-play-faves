.class public Lcom/android/server/voiceinteraction/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;,
        Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelContract;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

.field public static final DBG:Z = false

.field public static final NAME:Ljava/lang/String; = "sound_model.db"

.field public static final TAG:Ljava/lang/String; = "SoundModelDBHelper"

.field public static final VERSION:I = 0x7


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 85
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static getArrayForCommaSeparatedString(Ljava/lang/String;)[I
    .registers 4

    .line 370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, ","

    .line 373
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 374
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 375
    :goto_12
    array-length v2, p0

    if-ge v1, v2, :cond_20

    .line 376
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    return-object v0
.end method

.method public static getCommaSeparatedString([I)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 359
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 360
    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_1d

    if-eqz v1, :cond_15

    const/16 v2, 0x2c

    .line 362
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_15
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 366
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteKeyphraseSoundModel(IILjava/lang/String;)Z
    .registers 6

    .line 201
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 202
    monitor-enter p0

    .line 203
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_12

    .line 206
    monitor-exit p0

    return p2

    .line 210
    :cond_12
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model_uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_49

    :try_start_34
    const-string/jumbo v0, "sound_model"

    const/4 v1, 0x0

    .line 214
    invoke-virtual {p3, v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_44

    if-eqz p1, :cond_3f

    const/4 p2, 0x1

    .line 216
    :cond_3f
    :try_start_3f
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return p2

    :catchall_44
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 217
    throw p1

    :catchall_49
    move-exception p1

    .line 218
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 14

    .line 478
    monitor-enter p0

    :try_start_1
    const-string v0, "SELECT  * FROM sound_model"

    .line 480
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a0

    :try_start_c
    const-string v2, "  Enrolled KeyphraseSoundModels:"

    .line 483
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 485
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 487
    :cond_1b
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    if-ge v5, v3, :cond_87

    aget-object v6, v2, v5

    .line 488
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 489
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getType(I)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7b

    const/4 v10, 0x2

    if-eq v8, v9, :cond_67

    if-eq v8, v10, :cond_53

    const/4 v11, 0x3

    if-eq v8, v11, :cond_43

    const/4 v7, 0x4

    if-eq v8, v7, :cond_39

    goto :goto_84

    :cond_39
    const-string v7, "    %s: data blob\n"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v4

    .line 496
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_43
    const-string v8, "    %s: %s\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 493
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v9

    .line 492
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_53
    const-string v8, "    %s: %f\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 504
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v9

    .line 503
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_67
    const-string v8, "    %s: %d\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 500
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v9

    .line 499
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_7b
    const-string v7, "    %s: null\n"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v4

    .line 507
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 511
    :cond_87
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 512
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_8e
    .catchall {:try_start_c .. :try_end_8e} :catchall_98

    if-nez v3, :cond_1b

    .line 515
    :cond_90
    :try_start_90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 516
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 518
    monitor-exit p0

    return-void

    :catchall_98
    move-exception p1

    .line 515
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 516
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 517
    throw p1

    :catchall_a0
    move-exception p1

    .line 518
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method public getKeyphraseSoundModel(IILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 6

    .line 230
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 231
    monitor-enter p0

    .line 233
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM sound_model WHERE keyphrase_id= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "locale"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_37
    move-exception p1

    .line 237
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public getKeyphraseSoundModel(Ljava/lang/String;ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 6

    .line 249
    invoke-static {p3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p3

    .line 250
    monitor-enter p0

    .line 252
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM sound_model WHERE hint_text= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "locale"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_37
    move-exception p1

    .line 256
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final getValidKeyphraseSoundModelForUser(Ljava/lang/String;I)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 19

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x0

    move-object/from16 v2, p1

    .line 262
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 268
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e4

    :goto_11
    const-string/jumbo v3, "type"

    .line 270
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_22

    :goto_1e
    move/from16 v13, p2

    goto/16 :goto_b4

    :cond_22
    const-string v3, "model_uuid"

    .line 279
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 278
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_ec

    const-string v4, "SoundModelDBHelper"

    if-nez v3, :cond_36

    :try_start_30
    const-string v3, "Ignoring SoundModel since it doesn\'t specify an ID"

    .line 281
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_36
    const-string/jumbo v5, "vendor_uuid"

    .line 286
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    .line 288
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_46

    :cond_45
    move-object v5, v0

    :goto_46
    const-string v6, "keyphrase_id"

    .line 291
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 290
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v6, "data"

    .line 292
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    const-string/jumbo v7, "recognition_modes"

    .line 294
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 293
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v7, "users"

    .line 296
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 295
    invoke-static {v7}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getArrayForCommaSeparatedString(Ljava/lang/String;)[I

    move-result-object v12

    const-string v7, "locale"

    .line 298
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 297
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v10

    const-string v7, "hint_text"

    .line 300
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 299
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v7, "model_version"

    .line 302
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 301
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-nez v12, :cond_9e

    const-string v3, "Ignoring SoundModel since it doesn\'t specify users"

    .line 307
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 312
    :cond_9e
    array-length v4, v12

    const/4 v7, 0x0

    :goto_a0
    const/4 v15, 0x1

    if-ge v7, v4, :cond_af

    aget v0, v12, v7

    move/from16 v13, p2

    if-ne v13, v0, :cond_ab

    move v0, v15

    goto :goto_b2

    :cond_ab
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    goto :goto_a0

    :cond_af
    move/from16 v13, p2

    const/4 v0, 0x0

    :goto_b2
    if-nez v0, :cond_be

    .line 341
    :goto_b4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_e4

    :cond_bb
    const/4 v0, 0x0

    goto/16 :goto_11

    :cond_be
    new-array v13, v15, [Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 328
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/util/Locale;Ljava/lang/String;[I)V

    const/4 v4, 0x0

    aput-object v0, v13, v4

    if-eqz v5, :cond_d1

    .line 332
    invoke-static {v5}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    move-object v11, v0

    goto :goto_d2

    :cond_d1
    const/4 v11, 0x0

    .line 334
    :goto_d2
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 335
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    move-object v9, v0

    move-object v12, v6

    invoke-direct/range {v9 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[B[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;I)V
    :try_end_dd
    .catchall {:try_start_30 .. :try_end_dd} :catchall_ec

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v0

    .line 348
    :cond_e4
    :goto_e4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v0, 0x0

    return-object v0

    :catchall_ec
    move-exception v0

    .line 348
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 349
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 350
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))"

    .line 91
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11

    const-string p3, "DROP TABLE IF EXISTS sound_model"

    const/4 v0, 0x4

    const-string v1, "SoundModelDBHelper"

    if-ge p2, v0, :cond_e

    .line 98
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1c

    :cond_e
    if-ne p2, v0, :cond_1c

    const-string v0, "Adding vendor UUID column"

    .line 103
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"

    .line 104
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    :cond_1c
    :goto_1c
    const/4 v0, 0x6

    const/4 v2, 0x5

    if-ne p2, v2, :cond_af

    const/4 v3, 0x0

    const-string v4, "SELECT * FROM sound_model"

    .line 115
    invoke-virtual {p1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 116
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 118
    :try_start_2c
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_aa

    if-eqz v5, :cond_47

    .line 121
    :cond_32
    :try_start_32
    new-instance v5, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    invoke-direct {v5, v2, v3}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;-><init>(ILandroid/database/Cursor;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_3a} :catch_3b
    .catchall {:try_start_32 .. :try_end_3a} :catchall_aa

    goto :goto_41

    :catch_3b
    move-exception v5

    :try_start_3c
    const-string v6, "Failed to extract V5 record"

    .line 123
    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_41
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_aa

    if-nez v5, :cond_32

    .line 128
    :cond_47
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 130
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_54
    :goto_54
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 133
    invoke-virtual {p3, v4}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 135
    :try_start_66
    invoke-virtual {p3, v0, p1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_54

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database write failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_8e} :catch_8f

    goto :goto_54

    :catch_8f
    move-exception v2

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update V6 record "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_54

    :cond_a7
    add-int/lit8 p2, p2, 0x1

    goto :goto_af

    :catchall_aa
    move-exception p0

    .line 128
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 129
    throw p0

    :cond_af
    :goto_af
    if-ne p2, v0, :cond_bb

    const-string p0, "Adding model version column"

    .line 149
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ALTER TABLE sound_model ADD COLUMN model_version INTEGER DEFAULT -1"

    .line 150
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_bb
    return-void
.end method

.method public updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Z
    .registers 9

    .line 162
    monitor-enter p0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "model_uuid"

    .line 165
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2b

    const-string/jumbo v2, "vendor_uuid"

    .line 168
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const-string/jumbo v2, "type"

    const/4 v3, 0x0

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "data"

    .line 171
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getData()[B

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "model_version"

    .line 172
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    if-eqz v2, :cond_d1

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d1

    const-string v2, "keyphrase_id"

    .line 176
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 175
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recognition_modes"

    .line 178
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 177
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "users"

    .line 180
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/voiceinteraction/DatabaseHelper;->getCommaSeparatedString([I)Ljava/lang/String;

    move-result-object v5

    .line 179
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "locale"

    .line 182
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hint_text"

    .line 184
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_1 .. :try_end_b7} :catchall_d3

    :try_start_b7
    const-string/jumbo p1, "sound_model"

    const/4 v2, 0x0

    const/4 v5, 0x5

    .line 186
    invoke-virtual {v0, p1, v2, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1
    :try_end_c0
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_cc

    const-wide/16 v5, -0x1

    cmp-long p1, v1, v5

    if-eqz p1, :cond_c7

    move v3, v4

    .line 189
    :cond_c7
    :try_start_c7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return v3

    :catchall_cc
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 190
    throw p1

    .line 192
    :cond_d1
    monitor-exit p0

    return v3

    :catchall_d3
    move-exception p1

    .line 193
    monitor-exit p0
    :try_end_d5
    .catchall {:try_start_c7 .. :try_end_d5} :catchall_d3

    throw p1
.end method
