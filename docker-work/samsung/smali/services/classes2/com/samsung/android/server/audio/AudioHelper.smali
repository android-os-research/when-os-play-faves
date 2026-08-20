.class public Lcom/samsung/android/server/audio/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# static fields
.field public static final DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_EFS_EAR_JACK_COUNT:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field public static final TAG:Ljava/lang/String; = "AS.AudioHelper"

.field public static sIsFactoryMode:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/AudioHelper;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    const/4 v1, 0x4

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 71
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_USB_SET:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 143
    sput-boolean v0, Lcom/samsung/android/server/audio/AudioHelper;->sIsFactoryMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkRunningBackground(Ljava/lang/String;)Z
    .registers 6

    .line 395
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->getVisibleTasks()Ljava/util/List;

    move-result-object v0

    .line 396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_38

    .line 398
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRunningBackground : visible Tasks ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_38
    const/4 p0, 0x1

    return p0
.end method

.method public static getActiveStreamTypeInternal(IZ)I
    .registers 8

    .line 304
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->getActiveStreams()I

    move-result v0

    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_b

    const/16 p0, 0xa

    return p0

    :cond_b
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    return v2

    :cond_11
    and-int/lit16 v1, v0, 0x208

    const/4 v3, 0x3

    const-string v4, "AS.AudioHelper"

    if-nez v1, :cond_5f

    .line 310
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_5f

    :cond_1f
    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x4

    if-eqz v1, :cond_25

    return v2

    :cond_25
    and-int/lit8 v1, v0, 0x20

    const/4 v5, 0x5

    if-eqz v1, :cond_2b

    return v5

    :cond_2b
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_37

    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_ASSISTANT..."

    .line 318
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xb

    return p0

    :cond_37
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4d

    if-eqz p1, :cond_46

    and-int/lit8 p0, v0, 0x4

    if-nez p0, :cond_46

    const-string p0, "getActiveStreamTypeInternal: only adjust media volume"

    .line 323
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_46
    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_RING b/c default"

    .line 326
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 329
    :cond_4d
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz p0, :cond_59

    if-nez p1, :cond_59

    const-string p0, "getActiveStreamTypeInternal: using STREAM_NOTIFICATION as default"

    .line 330
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_59
    const-string p0, "getActiveStreamTypeInternal: using STREAM_MUSIC as default"

    .line 333
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5f
    :goto_5f
    const-string p0, "getActiveStreamTypeInternal: forcing STREAM_MUSIC"

    .line 311
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static getActiveStreams()I
    .registers 3

    :try_start_0
    const-string v0, "l_stream_active"

    .line 278
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "AS.AudioHelper"

    const-string v2, "Can\'t get active stream"

    .line 281
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentUserId()I
    .registers 3

    .line 100
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 102
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 103
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    throw v2

    .line 107
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    return v0
.end method

.method public static getOneUIVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x15f90

    sub-int v1, v0, v1

    div-int/lit16 v1, v1, 0x2710

    .line 201
    rem-int/lit16 v0, v0, 0x2710

    div-int/lit8 v0, v0, 0x64

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "core"

    goto :goto_1e

    :cond_1c
    const-string p0, ""

    .line 204
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlatformType(Landroid/content/Context;)I
    .registers 2

    .line 229
    invoke-static {p0}, Lcom/samsung/android/server/audio/AudioHelper;->hasCmcFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 232
    :cond_8
    invoke-static {p0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getUidForPackage(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 91
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 92
    invoke-static {}, Lcom/samsung/android/server/audio/AudioHelper;->getCurrentUserId()I

    move-result v1

    .line 91
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 93
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_f

    :catch_f
    return v0
.end method

.method public static getVisibleTasks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 386
    :try_start_4
    new-instance v2, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    .line 387
    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw v2
.end method

.method public static getWiredDeviceIdFromSysFile()I
    .registers 6

    const/4 v0, -0x1

    .line 128
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/class/switch/h2w/state"

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_34

    .line 129
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->ready()Z

    move-result v2

    if-eqz v2, :cond_26

    const/16 v2, 0x400

    new-array v3, v2, [C

    const/4 v4, 0x0

    .line 131
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v2

    .line 132
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_2a

    .line 135
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_34

    goto :goto_38

    :catchall_2a
    move-exception v2

    .line 128
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2f

    goto :goto_33

    :catchall_2f
    move-exception v1

    :try_start_30
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_33
    throw v2
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_34

    :catch_34
    move-exception v1

    .line 136
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_38
    return v0
.end method

.method public static hasCmcFeature(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cmc_own_settings_menu_supported"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    goto :goto_3e

    .line 216
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.android.mdecservice"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 218
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\."

    .line 219
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 221
    array-length v1, p0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_35

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_36

    const/4 v1, 0x2

    if-lt p0, v1, :cond_35

    move v0, v2

    :cond_35
    return v0

    :catch_36
    move-exception p0

    const-string v1, "AS.AudioHelper"

    const-string v2, "hasCmcFeature error"

    .line 223
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    :goto_3e
    return v0
.end method

.method public static increaseEarJackCounter()V
    .registers 5

    const-string v0, "/efs/FactoryApp/earjack_count"

    .line 157
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_b} :catch_3d

    const-string v3, "1"

    if-nez v2, :cond_19

    .line 159
    :try_start_f
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 160
    invoke-static {v0, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 163
    :cond_19
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 165
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 166
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    .line 168
    :cond_39
    invoke-static {v0, v3}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3c} :catch_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_3c} :catch_3d

    goto :goto_58

    :catch_3d
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in increaseEarJackCounter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    return-void
.end method

.method public static intToBytes(I)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static isBudsWearingOff(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x206

    .line 419
    :try_start_6
    invoke-static {v1}, Lcom/samsung/android/server/audio/AudioHelper;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object v1

    const/16 v2, 0x207

    .line 420
    invoke-static {v2}, Lcom/samsung/android/server/audio/AudioHelper;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothDevice;->semGetMetadata([B)[B

    move-result-object p0

    const/4 v2, 0x1

    if-eqz v1, :cond_3f

    if-eqz p0, :cond_3f

    const/4 v3, 0x3

    .line 421
    aget-byte v1, v1, v3

    if-eq v1, v2, :cond_3f

    aget-byte p0, p0, v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_28

    if-eq p0, v2, :cond_3f

    move v0, v2

    goto :goto_3f

    :catch_28
    move-exception p0

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to get buds wearing status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AS.AudioHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return v0
.end method

.method public static isFactoryMode()Z
    .registers 1

    .line 152
    sget-boolean v0, Lcom/samsung/android/server/audio/AudioHelper;->sIsFactoryMode:Z

    return v0
.end method

.method public static isRestrictedHeadphone(Landroid/content/Context;)Z
    .registers 7

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p0, "content://com.sec.knox.provider/RestrictionPolicy"

    .line 180
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo p0, "true"

    .line 182
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v3, "isHeadPhoneEnabled"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 185
    :try_start_1b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "isHeadPhoneEnabled"

    .line 186
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4b

    const-string v1, "false"

    .line 188
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "AS.AudioHelper"

    const-string v1, "Headset disabled"

    .line 189
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_41

    const/4 v0, 0x1

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_41
    move-exception v0

    .line 182
    :try_start_42
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_4a

    :catchall_46
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4a
    throw v0

    :cond_4b
    if-eqz p0, :cond_50

    .line 193
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_50
    const/4 p0, 0x0

    return p0
.end method

.method public static isUsingAudioForUid(I)Z
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_multi_sound_active_track_uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isUsingAudioUponDevice(I)Z
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_multi_sound_active_track_device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWiredDevicePluggedIn()Z
    .registers 2

    const-string v0, "l_device_current_output"

    .line 117
    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public static isWiredDeviceType(I)Z
    .registers 2

    .line 113
    sget-object v0, Lcom/samsung/android/server/audio/AudioHelper;->DEVICE_OUT_WIRED_DEVICE_SET:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static sendBroadcastToUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    :try_start_4
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw p0
.end method

.method public static setBtGameLatencyList(Ljava/util/Hashtable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "l_bt_game_latency"

    .line 347
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 348
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 352
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "bt_game_latency_deny"

    .line 353
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 359
    :cond_3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AS.AudioHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public static setDirectPowerMode(I)V
    .registers 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_direct_power_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p0, v1, :cond_11

    const-string/jumbo p0, "true"

    goto :goto_13

    :cond_11
    const-string p0, "false"

    .line 261
    :goto_13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 259
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public static setFactoryMode(Landroid/content/Context;)V
    .registers 2

    const-string/jumbo v0, "phone"

    .line 146
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 148
    invoke-static {p0, v0}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/server/audio/AudioHelper;->sIsFactoryMode:Z

    return-void
.end method

.method public static setNbQualityMode(I)V
    .registers 1

    if-lez p0, :cond_8

    const-string p0, "l_call_nb_quality_enable=true"

    .line 248
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_d

    :cond_8
    const-string p0, "l_call_nb_quality_enable=false"

    .line 251
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public static wakeUpDeviceByWiredHeadset(Landroid/content/Context;I)V
    .registers 5

    .line 366
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SCREEN_OFF_MUSIC:Z

    if-eqz v0, :cond_12

    .line 367
    invoke-static {p0}, Lcom/samsung/android/server/audio/SamsungMusicHelper;->isScreenOffMusicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "AS.AudioHelper"

    const-string p1, "Screen on is handled by samsung music"

    .line 368
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_12
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string/jumbo p1, "power"

    .line 373
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 p1, 0x3

    const-string v2, "WAKE_REASON_PLUGGED_IN"

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/os/PowerManager;->semWakeUp(JILjava/lang/String;)V

    :cond_2b
    return-void
.end method
