.class public final Lcom/android/server/audio/FadeOutManager;
.super Ljava/lang/Object;
.source "FadeOutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DELAY_FADE_IN_OFFENDERS_MS:J = 0x7d0L

.field public static final FADEABLE_USAGES:[I

.field public static final FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final FADE_OUT_DURATION_MS:J = 0x7d0L

.field public static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field public static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

.field public static final TAG:Ljava/lang/String; = "AudioService.FadeOutManager"

.field public static final UNFADEABLE_CONTENT_TYPES:[I

.field public static final UNFADEABLE_PLAYER_TYPES:[I


# instance fields
.field public final mFadedApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/audio/FadeOutManager$FadedOutApp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetFADEOUT_VSHAPE()Landroid/media/VolumeShaper$Configuration;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPLAY_CREATE_IF_NEEDED()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPLAY_SKIP_RAMP()Landroid/media/VolumeShaper$Operation;
    .registers 1

    sget-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 52
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    const/4 v1, 0x2

    .line 54
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [F

    fill-array-data v3, :array_62

    new-array v2, v2, [F

    fill-array-data v2, :array_6c

    .line 55
    invoke-virtual {v0, v3, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    .line 58
    invoke-virtual {v0, v2, v3}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 60
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    sget-object v2, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    invoke-direct {v0, v2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 62
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    new-array v2, v1, [I

    .line 65
    fill-array-data v2, :array_76

    sput-object v2, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    .line 70
    sput-object v3, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    new-array v1, v1, [I

    .line 74
    fill-array-data v1, :array_7e

    sput-object v1, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    .line 80
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 81
    invoke-virtual {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/FadeOutManager;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    return-void

    :array_62
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data

    :array_76
    .array-data 4
        0xd
        0x3
    .end array-data

    :array_7e
    .array-data 4
        0xe
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    return-void
.end method

.method public static canBeFadedOut(Landroid/media/AudioPlaybackConfiguration;)Z
    .registers 4

    .line 113
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_PLAYER_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    .line 117
    :cond_e
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    .line 118
    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    .line 117
    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 125
    :cond_1f
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_30

    return v1

    :cond_30
    const/4 p0, 0x1

    return p0
.end method

.method public static canCauseFadeOut(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 4

    .line 94
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_d

    return v0

    .line 99
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_16

    return v0

    :cond_16
    return v1
.end method

.method public static getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 4

    .line 135
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->UNFADEABLE_CONTENT_TYPES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_f

    return-wide v1

    .line 138
    :cond_f
    sget-object v0, Lcom/android/server/audio/FadeOutManager;->FADEABLE_USAGES:[I

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_1c

    return-wide v1

    :cond_1c
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized checkFade(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1b

    if-nez v0, :cond_15

    .line 183
    monitor-exit p0

    return-void

    :cond_15
    const/4 v1, 0x1

    .line 185
    :try_start_16
    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_1b

    .line 186
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 4

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 207
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->dump(Ljava/io/PrintWriter;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1d

    goto :goto_b

    .line 209
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fadeOutUid(ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AudioService.FadeOutManager"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 152
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    invoke-direct {v2, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_31
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;

    .line 155
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_41
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioPlaybackConfiguration;

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p1, v0, v1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->addFade(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_54

    goto :goto_41

    .line 158
    :cond_52
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .registers 4

    monitor-enter p0

    .line 193
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v0

    .line 198
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1a

    if-nez v0, :cond_15

    .line 200
    monitor-exit p0

    return-void

    .line 202
    :cond_15
    :try_start_15
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1a

    .line 203
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unfadeOutUid(ILjava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "AudioService.FadeOutManager"

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unfadeOutUid() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager;->mFadedApps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FadeOutManager$FadedOutApp;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_2d

    if-nez p1, :cond_28

    .line 169
    monitor-exit p0

    return-void

    .line 171
    :cond_28
    :try_start_28
    invoke-virtual {p1, p2}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->removeUnfadeAll(Ljava/util/HashMap;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2d

    .line 172
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
