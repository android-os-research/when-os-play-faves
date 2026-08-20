.class public Lcom/samsung/android/server/audio/GoodCatchManager;
.super Ljava/lang/Object;
.source "GoodCatchManager.java"


# static fields
.field public static final AS_MODULE:Ljava/lang/String; = "AudioService"

.field public static final CALL_MODE:I = 0x1

.field public static final MEDIA_VOLUME:I = 0x2

.field public static final RINGER_MODE:I = 0x0

.field public static final SOUND_MODE:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "AS.GoodCatchManager"

.field public static final VIBRATION_MODE:Ljava/lang/String; = "vibration"

.field public static final VS_MODULE:Ljava/lang/String; = "VibratorService"


# instance fields
.field public mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public final mContext:Landroid/content/Context;

.field public mModule:Ljava/lang/String;

.field public mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

.field public mSoundMode:[Z

.field public mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field public mVibrationMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSoundMode(Lcom/samsung/android/server/audio/GoodCatchManager;)[Z
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmVibrationMode(Lcom/samsung/android/server/audio/GoodCatchManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetSOUND_MODE()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ringermode"

    const-string v1, "callmode"

    const-string v2, "mediavolume"

    .line 39
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 42
    fill-array-data v0, :array_4e

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    .line 89
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$1;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 116
    new-instance v0, Lcom/samsung/android/server/audio/GoodCatchManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/GoodCatchManager$2;-><init>(Lcom/samsung/android/server/audio/GoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 77
    iput-object p1, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v0, "AudioService"

    .line 80
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 81
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object v1, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mAudioStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    goto :goto_4c

    :cond_34
    const-string v0, "VibratorService"

    .line 83
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4c

    .line 84
    new-instance p2, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrateStateListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    :cond_4c
    :goto_4c
    return-void

    nop

    :array_4e
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public isCallModeCatchEnabled()Z
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isMediaVolumeCatchEnabled()Z
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    const/4 v0, 0x2

    aget-boolean p0, p0, v0

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isRingerModeCatchEnabled()Z
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSoundMode:[Z

    aget-boolean p0, p0, v1

    return p0

    :cond_10
    return v1
.end method

.method public isVibrateCatchEnabled()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mModule:Ljava/lang/String;

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mVibrationMode:Z

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public updateCallMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateMediaVolume(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p0, v1

    const/4 v3, 0x0

    const-string v4, ""

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateRingerMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    .line 136
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    sget-object p0, Lcom/samsung/android/server/audio/GoodCatchManager;->SOUND_MODE:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v4, ""

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVibrateMode(Ljava/lang/String;)V
    .registers 8

    .line 140
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateVibrateMode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/audio/GoodCatchManager;->mSemGoodCatchManager:Lcom/samsung/android/sepunion/SemGoodCatchManager;

    const-string/jumbo v1, "vibration"

    const/4 v3, 0x0

    const-string v4, ""

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;->update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
