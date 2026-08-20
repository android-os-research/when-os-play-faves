.class public Lcom/samsung/android/server/audio/AudioSettingsHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AudioSettingsHelper.java"


# static fields
.field public static final APP_VOLUME_TABLE:Ljava/lang/String; = "app_volume"

.field public static final CATEGORY_TABLE:Ljava/lang/String; = "category_packages"

.field public static final DB_NAME:Ljava/lang/String; = "audioservice_sec.db"

.field public static final DB_VERSION:I = 0xc

.field public static final DEVICE_ADDR_TABLE:Ljava/lang/String; = "device_addr"

.field public static final PACKAGE_TABLE:Ljava/lang/String; = "selectedpkg"

.field public static final SETTINGS_TABLE:Ljava/lang/String; = "audio_settings"

.field public static final TAG:Ljava/lang/String; = "AudioService.DB"

.field public static final _ADDR:Ljava/lang/String; = "_addr"

.field public static final _CATEGORY:Ljava/lang/String; = "_category"

.field public static final _ID:Ljava/lang/String; = "_id"

.field public static final _INDEX:Ljava/lang/String; = "_index"

.field public static final _KEY:Ljava/lang/String; = "_key"

.field public static final _PACKAGE:Ljava/lang/String; = "_package"

.field public static final _UID:Ljava/lang/String; = "_uid"

.field public static final _VALUE:Ljava/lang/String; = "_value"

.field public static sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field public mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZjlZ3zTNezAL85WlFzIR6XyETRI(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->lambda$checkAppCategory$0(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "audioservice_sec.db"

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 92
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 95
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static destroy()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 107
    sput-object v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    monitor-enter v0

    .line 99
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    if-nez v1, :cond_e

    .line 100
    new-instance v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 102
    :cond_e
    sget-object p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->sInstance:Lcom/samsung/android/server/audio/AudioSettingsHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic lambda$checkAppCategory$0(Ljava/lang/String;Ljava/lang/String;Landroid/util/Pair;)Z
    .registers 4

    .line 522
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .registers 4

    .line 363
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string p1, "AudioService.DB"

    const-string p2, "DB error"

    .line 365
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    return-void
.end method

.method public checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 521
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/audio/AudioSettingsHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public dumpAppList(Ljava/io/PrintWriter;)V
    .registers 4

    .line 561
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  SCPM App List version = "

    .line 562
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "APP_LIST_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final enableSyncParentSound()V
    .registers 4

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_e

    return-void

    .line 313
    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 314
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "sync_parent_sounds"

    const/4 v2, 0x1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    const-string v0, "AudioService.DB"

    const-string v1, "Enable sync sound error"

    .line 321
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    return-void
.end method

.method public final getAllSoundAppPolicyAllowAppList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start decrypt from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService.DB"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :try_start_23
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "category_packages"

    const-string v0, "_package"

    const-string v4, "_category"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_38} :catch_73

    if-eqz v0, :cond_6d

    .line 495
    :try_start_3a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    :cond_40
    const/4 v2, 0x0

    .line 497
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/audio/AudioCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 498
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_60
    .catchall {:try_start_3a .. :try_end_60} :catchall_63

    if-nez v2, :cond_40

    goto :goto_6d

    :catchall_63
    move-exception v2

    .line 492
    :try_start_64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6c
    throw v2

    :cond_6d
    :goto_6d
    if-eqz v0, :cond_79

    .line 502
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    goto :goto_79

    :catch_73
    move-exception v0

    const-string v2, "DB error"

    .line 503
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_79
    :goto_79
    const-string v0, "end decrypt"

    .line 505
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_7e
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public getAppList()Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getAllSoundAppPolicyAllowAppList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 484
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method public getAppVolume(I)I
    .registers 9

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "_uid"

    const-string v0, "_index"

    .line 427
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "app_volume"

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getBTVolumeIndex(Ljava/lang/String;)I
    .registers 9

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_addr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "_addr"

    const-string v0, "_index"

    .line 414
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "device_addr"

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getBooleanValue(Ljava/lang/String;)Z
    .registers 9

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "_key"

    const-string v0, "_value"

    .line 381
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "audio_settings"

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    if-lez p0, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public final getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_d} :catch_2e

    if-eqz p0, :cond_28

    .line 340
    :try_start_f
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_28

    .line 341
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p5
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1e

    goto :goto_28

    :catchall_1e
    move-exception p1

    .line 339
    :try_start_1f
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p1

    :cond_28
    :goto_28
    if-eqz p0, :cond_32

    .line 344
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 345
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_32
    :goto_32
    return p5
.end method

.method public getIntValue(Ljava/lang/String;I)I
    .registers 10

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string p1, "_key"

    const-string v0, "_value"

    .line 387
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "audio_settings"

    const/4 v5, 0x1

    move-object v1, p0

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInt(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getPackageList()Ljava/util/Hashtable;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 445
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "selectedpkg"

    const-string p0, "_uid"

    const-string v3, "_package"

    filled-new-array {p0, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_4b

    if-eqz p0, :cond_45

    .line 448
    :try_start_1d
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_45

    :cond_23
    const/4 v1, 0x0

    .line 450
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 451
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_3b

    if-nez v1, :cond_23

    goto :goto_45

    :catchall_3b
    move-exception v1

    .line 445
    :try_start_3c
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception p0

    :try_start_41
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_44
    throw v1

    :cond_45
    :goto_45
    if-eqz p0, :cond_53

    .line 455
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p0

    const-string v1, "AudioService.DB"

    const-string v2, "DB error"

    .line 456
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    return-object v0
.end method

.method public final initSystemVibration(Ljava/lang/String;I)V
    .registers 11

    .line 533
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 535
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://settings/system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5b

    .line 538
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5b

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "value"

    .line 539
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v0, "package"

    .line 540
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    .line 542
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    const-string v1, "com.android.providers.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_57} :catch_63
    .catchall {:try_start_8 .. :try_end_57} :catchall_61

    if-nez v0, :cond_5b

    const/4 v0, 0x0

    move v6, v0

    :cond_5b
    if-eqz v7, :cond_6a

    .line 550
    :goto_5d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6a

    :catchall_61
    move-exception p0

    goto :goto_8f

    :catch_63
    move-exception v0

    .line 547
    :try_start_64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    if-eqz v7, :cond_6a

    goto :goto_5d

    :cond_6a
    :goto_6a
    if-eqz v6, :cond_8e

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init >> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioService.DB"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    .line 556
    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_8e
    return-void

    :goto_8f
    if-eqz v7, :cond_94

    .line 550
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_94
    throw p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    :try_start_0
    const-string p0, "CREATE TABLE audio_settings (_id INTEGER PRIMARY KEY AUTOINCREMENT, _key TEXT UNIQUE, _value INTEGER);"

    .line 113
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE device_addr (_id INTEGER PRIMARY KEY AUTOINCREMENT, _addr TEXT UNIQUE, _index INTEGER);"

    .line 121
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE app_volume (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER UNIQUE, _index INTEGER);"

    .line 129
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTERGER, _package TEXT);"

    .line 137
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 144
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string p1, "AudioService.DB"

    const-string v0, "Create DB Create failed"

    .line 152
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 327
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 13

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading settings database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "AudioService.DB"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2d

    const-string p2, "DROP TABLE IF EXISTS category_packages"

    .line 164
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE selectedpkg (_id INTEGER PRIMARY KEY AUTOINCREMENT, _uid INTEGER, _package TEXT);"

    .line 165
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, p3

    :cond_2d
    const/4 v2, 0x3

    if-ne p2, p3, :cond_36

    const-string p2, "CREATE TABLE category_packages (_id INTEGER PRIMARY KEY AUTOINCREMENT, _package TEXT,_category TEXT);"

    .line 176
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v2

    :cond_36
    const/4 v3, 0x4

    if-ne p2, v2, :cond_3f

    const-string p2, "delete from device_addr"

    .line 188
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v3

    :cond_3f
    const/4 v2, 0x5

    if-ne p2, v3, :cond_43

    move p2, v2

    :cond_43
    const/4 v4, 0x6

    const/4 v5, 0x0

    if-ne p2, v2, :cond_61

    .line 198
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "adjust_media_volume_only"

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-static {p2, v2, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v6, :cond_60

    .line 201
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2, v5, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_60
    move p2, v4

    :cond_61
    const/4 v2, 0x7

    if-ne p2, v4, :cond_6b

    const-string/jumbo p2, "update audio_settings set _value = 0 where _key = \'APP_LIST_VERSION\'"

    .line 207
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p2, v2

    :cond_6b
    const/16 p1, 0x8

    if-ne p2, v2, :cond_73

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->enableSyncParentSound()V

    move p2, p1

    :cond_73
    const/16 v2, 0x9

    if-ne p2, p1, :cond_af

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_ae

    .line 216
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 217
    invoke-virtual {p1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result p1

    if-ne p1, v1, :cond_ae

    .line 218
    sget-boolean p1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_HAPTIC_FEEDBACK_ON_DC_MOTOR:Z

    if-eqz p1, :cond_99

    const-string p1, "haptic_feedback_enabled"

    .line 219
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    :cond_99
    const-string/jumbo p1, "sip_key_feedback_vibration"

    .line 221
    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    const-string p1, "dialing_keypad_vibrate"

    .line 222
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    const-string p1, "navigation_gestures_vibrate"

    .line 223
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    const-string p1, "VIB_FEEDBACK_MAGNITUDE"

    .line 224
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->initSystemVibration(Ljava/lang/String;I)V

    :cond_ae
    move p2, v2

    :cond_af
    const/16 p1, 0xa

    if-ne p2, v2, :cond_14d

    .line 229
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v2, "volumelimit_secure_password"

    invoke-static {p2, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14c

    .line 230
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14c

    const-string v4, "encrypt_password"

    .line 233
    :try_start_ca
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v6, "SHA-1"

    .line 234
    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 235
    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    const/16 v6, 0x10

    .line 236
    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    const-string v6, "AES/ECB/PKCS5PADDING"

    .line 238
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 239
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, p3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 240
    new-instance p3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v6, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p3, p2, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p2, "SHA-256"

    .line 242
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p2

    .line 243
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/security/MessageDigest;->update([B)V

    const-string p3, "%064x"

    new-array v4, v1, [Ljava/lang/Object;

    .line 244
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p2

    invoke-direct {v6, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {p3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 245
    iget-object p3, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3, v2, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_12e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_ca .. :try_end_12e} :catch_12f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_ca .. :try_end_12e} :catch_12f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_ca .. :try_end_12e} :catch_12f
    .catch Ljavax/crypto/BadPaddingException; {:try_start_ca .. :try_end_12e} :catch_12f
    .catch Ljava/security/InvalidKeyException; {:try_start_ca .. :try_end_12e} :catch_12f

    goto :goto_14c

    :catch_12f
    move-exception p2

    const-string p3, "Change of volume limiter pin encryption failed. Pin is initialized."

    .line 247
    invoke-static {v0, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, ""

    invoke-static {p2, v2, p3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 249
    iget-object p2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "volumelimit_set_password"

    invoke-static {p2, p3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_14c
    :goto_14c
    move p2, p1

    :cond_14d
    const/16 p3, 0xb

    if-ne p2, p1, :cond_152

    move p2, p3

    :cond_152
    if-ne p2, p3, :cond_1ee

    .line 261
    sget-boolean p1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz p1, :cond_1ee

    new-array p1, v3, [I

    .line 262
    fill-array-data p1, :array_1f0

    const-string/jumbo p2, "ringtone_CONSTANT_PATH"

    const-string/jumbo p3, "ringtone_2_CONSTANT_PATH"

    const-string v1, "notification_sound_CONSTANT_PATH"

    const-string v2, "notification_sound_2_CONSTANT_PATH"

    .line 268
    filled-new-array {p2, p3, v1, v2}, [Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "sync_vibration_with_ringtone"

    const-string/jumbo v1, "sync_vibration_with_ringtone_2"

    const-string/jumbo v2, "sync_vibration_with_notification"

    .line 274
    filled-new-array {p3, v1, v2, v2}, [Ljava/lang/String;

    move-result-object p3

    move v1, v5

    :goto_179
    if-ge v1, v3, :cond_1ee

    .line 282
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    aget v4, p1, v1

    invoke-static {v2, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 283
    invoke-static {v2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_195

    .line 284
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v4, p3, v1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1eb

    .line 289
    :cond_195
    :try_start_195
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v4, p2, v1

    iget-object v6, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 289
    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 291
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v4, "path"

    invoke-virtual {v2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    iget-object v4, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1eb

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p2, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has not haptic channels"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v4, p3, v1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1e4
    .catch Ljava/lang/Exception; {:try_start_195 .. :try_end_1e4} :catch_1e5

    goto :goto_1eb

    :catch_1e5
    move-exception v2

    const-string v4, "Uri error"

    .line 297
    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1eb
    :goto_1eb
    add-int/lit8 v1, v1, 0x1

    goto :goto_179

    :cond_1ee
    return-void

    nop

    :array_1f0
    .array-data 4
        0x1
        0x80
        0x2
        0x100
    .end array-data
.end method

.method public putAppList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 511
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 512
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {p2}, Lcom/samsung/android/server/audio/AudioCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "_category"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "category_packages"

    .line 514
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->add(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public putPackage(ILjava/lang/String;)V
    .registers 6

    .line 462
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_package"

    .line 464
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "selectedpkg"

    .line 466
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public final remove(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 372
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_11

    :catch_8
    move-exception p0

    const-string p1, "AudioService.DB"

    const-string p2, "DB error"

    .line 374
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public removeAppVolume(I)I
    .registers 4

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_volume"

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removePackage(I)V
    .registers 4

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "selectedpkg"

    .line 471
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .registers 4

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_package=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "selectedpkg"

    .line 476
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeValue(Ljava/lang/String;)I
    .registers 4

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio_settings"

    .line 409
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->remove(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public resetAllowedListTable()V
    .registers 3

    .line 526
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from category_packages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 527
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mSoundAppPolicyAllowAppList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public resetTable()V
    .registers 3

    .line 331
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from audio_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from device_addr"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from app_volume"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 334
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "delete from selectedpkg"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 6

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    if-gtz p3, :cond_17

    .line 354
    iget-object p0, p0, Lcom/samsung/android/server/audio/AudioSettingsHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string p1, "AudioService.DB"

    const-string p2, "DB error"

    .line 357
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    :goto_17
    return-void
.end method

.method public setAppVolume(II)V
    .registers 6

    .line 431
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_uid=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "app_volume"

    .line 435
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public setBTVolumeIndex(Ljava/lang/String;I)V
    .registers 5

    .line 418
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_addr"

    .line 419
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_index"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_addr=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "device_addr"

    .line 422
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public setBooleanValue(Ljava/lang/String;Z)V
    .registers 5

    .line 392
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_key"

    .line 393
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio_settings"

    .line 396
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public setIntValue(Ljava/lang/String;I)V
    .registers 5

    .line 400
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_key"

    .line 401
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_key=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio_settings"

    .line 404
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->set(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method
