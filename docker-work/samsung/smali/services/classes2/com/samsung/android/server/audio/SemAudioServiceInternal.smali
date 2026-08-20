.class public Lcom/samsung/android/server/audio/SemAudioServiceInternal;
.super Ljava/lang/Object;
.source "SemAudioServiceInternal.java"


# instance fields
.field public mAudioService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/audio/AudioService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getAppDevice(I)I
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioService;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 96
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result p0

    return p0
.end method

.method public getUidListUsingAudio()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/AudioService;

    if-nez p0, :cond_f

    .line 50
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 53
    :cond_f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getActivePlaybackConfigurationsInternal()Ljava/util/List;

    move-result-object v1

    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x2710

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 59
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v4

    if-le v4, v3, :cond_1c

    .line 61
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3d

    .line 62
    invoke-virtual {v2}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 65
    :cond_3d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 70
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getActiveRecordingConfigurationsInternal()Ljava/util/List;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4d
    :goto_4d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 73
    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v2

    if-le v2, v3, :cond_4d

    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 79
    :cond_67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    :cond_6b
    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v3, 0x186a0

    .line 82
    rem-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isUsingAudio(I)Z

    move-result v2

    if-nez v2, :cond_6b

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6b

    .line 87
    :cond_89
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
