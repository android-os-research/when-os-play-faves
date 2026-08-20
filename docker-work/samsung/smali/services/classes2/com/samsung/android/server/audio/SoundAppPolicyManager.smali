.class public Lcom/samsung/android/server/audio/SoundAppPolicyManager;
.super Ljava/lang/Object;
.source "SoundAppPolicyManager.java"


# static fields
.field public static final BT_GAME_LATENCY_DENY:Ljava/lang/String; = "bt_game_latency_deny"

.field public static final DEBUG:Z = true

.field public static final DELAY_LOSS_AUDIO_FOCUS:Ljava/lang/String; = "delay_loss_audio_focus"

.field public static final KARAOKE_ALLOW:Ljava/lang/String; = "karaoke_allow"

.field public static final KARAOKE_LISTENBACK_ALLOW:Ljava/lang/String; = "karaoke_listenback_allow"

.field public static final MEDIA_BUTTON_DENY:Ljava/lang/String; = "media_button_deny"

.field public static final PACKAGE_LIST_VERSION:I = 0x788659ac

.field public static final SEPARATOR:Ljava/lang/String; = ","

.field public static final TAG:Ljava/lang/String; = "SoundAppPolicyManager"

.field public static final VIRTUAL_VIBRATION_SOUND_ALLOWANCE:Ljava/lang/String; = "virtual_vibration_sound_allowance"

.field public static sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/audio/Data;",
            ">;"
        }
    .end annotation
.end field

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mToken:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public static synthetic $r8$lambda$3EZwlW_OgTbuRkhnMtCzJT1mkoA(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->lambda$init$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    const/4 v1, 0x0

    .line 67
    iput v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 68
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    iput-object p2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 76
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;
    .registers 3

    .line 81
    sget-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;)V

    sput-object v0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    .line 84
    :cond_b
    sget-object p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->sInstance:Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    return-object p0
.end method

.method private synthetic lambda$init$0(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "SoundAppPolicyManager"

    const-string v0, "init SCPMv2"

    .line 92
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateAppList()V

    :cond_16
    return-void
.end method


# virtual methods
.method public final callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5

    .line 161
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "android"

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public checkAndUpdateAppList()V
    .registers 8

    const-string v0, "APP_LIST_VERSION"

    const-string v1, "SoundAppPolicyManager"

    const-string v2, "checkAndUpdateAppList"

    .line 210
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 213
    :try_start_a
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getData()V

    .line 214
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getIntValue(Ljava/lang/String;I)I

    move-result v3

    .line 215
    iget v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    if-ge v3, v4, :cond_9f

    iget-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    if-eqz v4, :cond_9f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9f

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateAppList update app list version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 219
    iget-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/audio/Data;

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " categoryName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iget-object v6, v4, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    iget-object v4, v4, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_43

    .line 225
    :cond_7a
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 226
    sget-object v0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdateAppList : Success to update version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    goto :goto_bd

    .line 229
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App list is already latest version. Local version = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " SCPM version = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a .. :try_end_bd} :catchall_c0

    .line 233
    :goto_bd
    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    return-void

    :catchall_c0
    move-exception v0

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    .line 234
    throw v0
.end method

.method public final getData()V
    .registers 10

    const-string v0, "SoundAppPolicyManager"

    const-string v1, "getData"

    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->register()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 170
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "getData : Fail to register, token is null"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-void

    :cond_1a
    :try_start_1a
    const-string v1, "Audio"

    .line 175
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-nez v1, :cond_28

    if-eqz v1, :cond_27

    .line 203
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_27} :catch_a3

    :cond_27
    return-void

    .line 178
    :cond_28
    :try_start_28
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_99

    if-eqz v2, :cond_95

    .line 180
    :try_start_2e
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_38} :catch_91
    .catchall {:try_start_2e .. :try_end_38} :catchall_99

    .line 182
    :try_start_38
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    const/4 v2, 0x0

    move v4, v2

    .line 184
    :goto_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_83

    const-string v6, ","

    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v4, :cond_63

    .line 187
    new-instance v7, Lcom/samsung/android/server/audio/Data;

    invoke-direct {v7}, Lcom/samsung/android/server/audio/Data;-><init>()V

    .line 188
    aget-object v8, v5, v2

    iput-object v8, v7, Lcom/samsung/android/server/audio/Data;->packageName:Ljava/lang/String;

    .line 189
    aget-object v5, v5, v6

    iput-object v5, v7, Lcom/samsung/android/server/audio/Data;->categoryName:Ljava/lang/String;

    .line 190
    iget-object v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->appList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 192
    :cond_63
    aget-object v4, v5, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVersion = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_38 .. :try_end_81} :catchall_87

    move v4, v6

    goto :goto_41

    .line 199
    :cond_83
    :try_start_83
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_91
    .catchall {:try_start_83 .. :try_end_86} :catchall_99

    goto :goto_95

    :catchall_87
    move-exception p0

    .line 180
    :try_start_88
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception v0

    :try_start_8d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_90
    throw p0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_91} :catch_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_99

    :catch_91
    move-exception p0

    .line 200
    :try_start_92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_99

    .line 203
    :cond_95
    :goto_95
    :try_start_95
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_a3

    goto :goto_a7

    :catchall_99
    move-exception p0

    .line 175
    :try_start_9a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a2

    :catchall_9e
    move-exception v0

    :try_start_9f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a2
    throw p0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a3} :catch_a3

    :catch_a3
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a7
    return-void
.end method

.method public final getScpmParcelFile(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    .line 135
    :try_start_20
    iget-object v1, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_9a

    if-nez v1, :cond_96

    .line 137
    :try_start_2b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "token"

    .line 138
    iget-object v4, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "getLastError"

    .line 139
    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_52

    .line 141
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v2, "getScpmFileDescriptor : bundle is null"

    invoke-direct {p1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_4c
    .catchall {:try_start_2b .. :try_end_4c} :catchall_8a

    if-eqz v1, :cond_51

    .line 152
    :try_start_4e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_9a

    :cond_51
    return-object v0

    .line 145
    :cond_52
    :try_start_52
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getScpmParcelFile, code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rcode"

    const/4 v5, -0x1

    .line 147
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rmsg"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_8a

    if-eqz v1, :cond_89

    .line 152
    :try_start_86
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_9a

    :cond_89
    return-object v0

    :catchall_8a
    move-exception p0

    if-eqz v1, :cond_95

    .line 135
    :try_start_8d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_91

    goto :goto_95

    :catchall_91
    move-exception p1

    :try_start_92
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_95
    :goto_95
    throw p0

    .line 152
    :cond_96
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_9a

    return-object v1

    :catch_9a
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "getScpmParcelFile : Fail to update"

    invoke-direct {p1, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/SoundAppPolicyManager;Landroid/content/Context;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public final isAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.samsung.android.scpm.policy"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public final register()Z
    .registers 9

    .line 111
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 114
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    const-string v3, "android"

    .line 115
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appId"

    const-string v4, "ifdzefg1lz"

    .line 116
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-object v2, Lcom/samsung/android/server/audio/ScpmConsumerInfo;->VERSION:Ljava/lang/String;

    const-string/jumbo v4, "version"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "receiverPackageName"

    .line 118
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v2, Lcom/samsung/android/server/audio/ScpmApiContract;->URI:Landroid/net/Uri;

    const-string/jumbo v3, "register"

    invoke-virtual {p0, v2, v3, v0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->callScpmApi(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_42

    .line 121
    sget-object p0, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string/jumbo v1, "register : Fail to register, bundle is null"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    return v2

    :cond_42
    const-string/jumbo v3, "token"

    .line 125
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    .line 126
    sget-object v3, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v4, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Register, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    const-string/jumbo v7, "result"

    .line 127
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, -0x1

    const-string/jumbo v7, "rcode"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "rmsg"

    .line 128
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 129
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mToken:Ljava/lang/String;

    if-eqz p0, :cond_92

    goto :goto_93

    :cond_92
    move v1, v2

    :goto_93
    return v1
.end method

.method public setDefaultAllowList()V
    .registers 15

    const-string v0, "SoundAppPolicyManager"

    const-string v1, "SoundAppPolicy setDefaultWhiteList()"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->resetAllowedListTable()V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.miHoYo.GenshinImpact"

    const-string v2, "bt_game_latency_deny"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.miHoYo.Yuanshen"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.riotgames.league.teamfighttactics"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.ncsoft.lineagew"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.plarium.mechlegion"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.netease.cloudmusic"

    const-string v2, "delay_loss_audio_focus"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.ximalaya.ting.android"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "cmccwm.mobilemusic"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.banqu.samsung.music"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.audiocn.kalaok"

    const-string v2, "karaoke_allow"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v3, "com.tencent.karaoke"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v4, "com.tencent.wesing"

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v5, "com.changba"

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v6, "com.app.hero.ui"

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v7, "cn.banshenggua.aichang"

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v8, "com.kibey.echo"

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v9, "cn.kuwo.sing"

    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v10, "com.michong.haochang"

    invoke-virtual {v0, v10, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v11, "com.huuhoo.mystyle"

    invoke-virtual {v0, v11, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v12, "com.sm1.EverySing"

    invoke-virtual {v0, v12, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v12, "com.netease.karaoke"

    invoke-virtual {v0, v12, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v13, "com.ss.android.ugc.aweme"

    invoke-virtual {v0, v13, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v2, "karaoke_listenback_allow"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v12, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v7, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v6, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v9, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v10, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v11, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    invoke-virtual {v0, v13, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.google.android.youtube"

    const-string v2, "media_button_deny"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.google.android.apps.youtube.kids"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.whatsapp"

    const-string/jumbo v2, "virtual_vibration_sound_allowance"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.tencent.mobileqqi"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "com.facebook.orca"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "kr.co.vcnc.android.couple"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v1, "jp.naver.line.android"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->putAppList(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object p0, p0, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v0, "APP_LIST_VERSION"

    const v1, 0x788659ac

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method
