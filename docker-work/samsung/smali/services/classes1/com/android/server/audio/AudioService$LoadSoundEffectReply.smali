.class public final Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadSoundEffectReply"
.end annotation


# static fields
.field public static final SOUND_EFFECTS_ERROR:I = -0x1

.field public static final SOUND_EFFECTS_LOADED:I = 0x0

.field public static final SOUND_EFFECTS_LOADING:I = 0x1

.field public static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388


# instance fields
.field public mStatus:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6034
    iput v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService$LoadSoundEffectReply-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run(Z)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    goto :goto_6

    :cond_5
    const/4 p1, -0x1

    .line 6038
    :goto_6
    :try_start_6
    iput p1, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    .line 6039
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    .line 6040
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForLoaded(I)Z
    .registers 5

    monitor-enter p0

    .line 6043
    :goto_1
    :try_start_1
    iget v0, p0, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_19

    const-wide/16 v0, 0x1388

    .line 6045
    :try_start_c
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_f} :catch_10
    .catchall {:try_start_c .. :try_end_f} :catchall_1f

    goto :goto_17

    :catch_10
    :try_start_10
    const-string p1, "AS.AudioService"

    const-string v0, "Interrupted while waiting sound pool loaded."

    .line 6047
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1f

    :goto_17
    move p1, v2

    goto :goto_1

    :cond_19
    if-nez v0, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 6050
    :goto_1d
    monitor-exit p0

    return v1

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
