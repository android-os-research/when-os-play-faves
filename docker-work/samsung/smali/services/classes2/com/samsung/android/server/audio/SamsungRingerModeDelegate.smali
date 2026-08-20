.class public Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;
.super Landroid/database/ContentObserver;
.source "SamsungRingerModeDelegate.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# static fields
.field public static final TAG:Ljava/lang/String; = "SamsungRingerModeDelegate"


# instance fields
.field public mAudioManager:Landroid/media/AudioManagerInternal;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mNm:Landroid/app/NotificationManager;

.field public mZenMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "notification"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    .line 50
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;Landroid/os/Handler;)V
    .registers 4

    .line 57
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 59
    iput-object p2, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 2

    or-int/lit16 p0, p1, 0x126

    return p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    .line 65
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "zen_mode"

    .line 68
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .registers 5

    .line 120
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    iget p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mZenMode:I

    if-ne p1, v0, :cond_14

    return-void

    :cond_14
    if-eqz p1, :cond_19

    if-eqz v0, :cond_19

    return-void

    .line 136
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    invoke-virtual {p1}, Landroid/media/AudioManagerInternal;->getRingerModeInternal()I

    move-result p1

    .line 139
    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mAudioManager:Landroid/media/AudioManagerInternal;

    const-string v0, "SamsungRingerModeDelegate"

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioManagerInternal;->setRingerModeInternal(ILjava/lang/String;)V

    return-void
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 6

    return p2
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_7

    const/4 p1, 0x2

    if-eq p2, p1, :cond_7

    goto :goto_10

    .line 88
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/audio/SamsungRingerModeDelegate;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result p0

    if-eqz p0, :cond_10

    const/4 p2, 0x0

    :cond_10
    :goto_10
    return p2
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "SamsungRingerModeDelegate"

    return-object p0
.end method
