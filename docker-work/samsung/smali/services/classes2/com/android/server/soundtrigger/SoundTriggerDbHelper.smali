.class public Lcom/android/server/soundtrigger/SoundTriggerDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SoundTriggerDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger/SoundTriggerDbHelper$GenericSoundModelContract;
    }
.end annotation


# static fields
.field public static final CREATE_TABLE_ST_SOUND_MODEL:Ljava/lang/String; = "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB,model_version INTEGER )"

.field public static final DBG:Z = false

.field public static final NAME:Ljava/lang/String; = "st_sound_model.db"

.field public static final TAG:Ljava/lang/String; = "SoundTriggerDbHelper"

.field public static final VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "st_sound_model.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 61
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteGenericSoundModel(Ljava/util/UUID;)Z
    .registers 6

    .line 136
    monitor-enter p0

    .line 137
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerDbHelper;->getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 139
    monitor-exit p0

    return v0

    .line 142
    :cond_a
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "model_uuid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_41

    :try_start_2c
    const-string/jumbo v2, "st_sound_model"

    const/4 v3, 0x0

    .line 146
    invoke-virtual {v1, v2, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3c

    if-eqz p1, :cond_37

    const/4 v0, 0x1

    .line 148
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return v0

    :catchall_3c
    move-exception p1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 149
    throw p1

    :catchall_41
    move-exception p1

    .line 150
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 14

    .line 154
    monitor-enter p0

    :try_start_1
    const-string v0, "SELECT  * FROM st_sound_model"

    .line 156
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a0

    :try_start_c
    const-string v2, "  Enrolled GenericSoundModels:"

    .line 159
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 161
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 163
    :cond_1b
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1e
    if-ge v5, v3, :cond_87

    aget-object v6, v2, v5

    .line 164
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 165
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

    .line 172
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_43
    const-string v8, "    %s: %s\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 169
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v9

    .line 168
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_53
    const-string v8, "    %s: %f\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 180
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v10, v9

    .line 179
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_67
    const-string v8, "    %s: %d\n"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v4

    .line 176
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v10, v9

    .line 175
    invoke-virtual {p1, v8, v10}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_84

    :cond_7b
    const-string v7, "    %s: null\n"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v6, v8, v4

    .line 183
    invoke-virtual {p1, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    :goto_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 187
    :cond_87
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_8e
    .catchall {:try_start_c .. :try_end_8e} :catchall_98

    if-nez v3, :cond_1b

    .line 191
    :cond_90
    :try_start_90
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 194
    monitor-exit p0

    return-void

    :catchall_98
    move-exception p1

    .line 191
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 193
    throw p1

    :catchall_a0
    move-exception p1

    .line 194
    monitor-exit p0
    :try_end_a2
    .catchall {:try_start_90 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method public getGenericSoundModel(Ljava/util/UUID;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;
    .registers 8

    .line 106
    monitor-enter p0

    .line 109
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT  * FROM st_sound_model WHERE model_uuid= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_66

    .line 115
    :try_start_20
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    const-string v2, "data"

    .line 117
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const-string/jumbo v3, "vendor_uuid"

    .line 120
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 119
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "model_version"

    .line 122
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 121
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 123
    new-instance v5, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-direct {v5, p1, v3, v2, v4}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;-><init>(Ljava/util/UUID;Ljava/util/UUID;[BI)V
    :try_end_4e
    .catchall {:try_start_20 .. :try_end_4e} :catchall_5e

    .line 128
    :try_start_4e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return-object v5

    .line 128
    :cond_56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 131
    monitor-exit p0

    return-object v2

    :catchall_5e
    move-exception p1

    .line 128
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    throw p1

    :catchall_66
    move-exception p1

    .line 131
    monitor-exit p0
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_66

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE st_sound_model(model_uuid TEXT PRIMARY KEY,vendor_uuid TEXT,data BLOB,model_version INTEGER )"

    .line 67
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p0, 0x1

    if-ne p2, p0, :cond_f

    const-string p0, "SoundTriggerDbHelper"

    const-string p2, "Adding model version column"

    .line 74
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ALTER TABLE st_sound_model ADD COLUMN model_version INTEGER DEFAULT -1"

    .line 75
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public updateGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Z
    .registers 7

    .line 86
    monitor-enter p0

    .line 87
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "model_uuid"

    .line 89
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "vendor_uuid"

    .line 91
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data"

    .line 92
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getData()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v2, "model_version"

    .line 93
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;->getVersion()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_57

    :try_start_3b
    const-string/jumbo p1, "st_sound_model"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 96
    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_52

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-eqz p1, :cond_4c

    const/4 p1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    .line 99
    :goto_4d
    :try_start_4d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit p0

    return p1

    :catchall_52
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    throw p1

    :catchall_57
    move-exception p1

    .line 102
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_4d .. :try_end_59} :catchall_57

    throw p1
.end method
