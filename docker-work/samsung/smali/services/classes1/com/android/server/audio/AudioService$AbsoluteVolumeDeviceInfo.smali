.class public final Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AbsoluteVolumeDeviceInfo"
.end annotation


# instance fields
.field public final mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mHandlesVolumeAdjustment:Z

.field public final mVolumeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7djSsMZcRnHAJMYvpB4ManzNzOc(II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->lambda$getMatchingVolumeInfoForStream$0(II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/IAudioDeviceVolumeDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Landroid/media/AudioDeviceAttributes;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlesVolumeAdjustment(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetMatchingVolumeInfoForStream(Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;I)Landroid/media/VolumeInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;",
            "Landroid/media/IAudioDeviceVolumeDispatcher;",
            "Z)V"
        }
    .end annotation

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    .line 747
    iput-object p2, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    .line 748
    iput-object p3, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mCallback:Landroid/media/IAudioDeviceVolumeDispatcher;

    .line 749
    iput-boolean p4, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mHandlesVolumeAdjustment:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;ZLcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;-><init>(Landroid/media/AudioDeviceAttributes;Ljava/util/List;Landroid/media/IAudioDeviceVolumeDispatcher;Z)V

    return-void
.end method

.method public static synthetic lambda$getMatchingVolumeInfoForStream$0(II)Z
    .registers 2

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method


# virtual methods
.method public final getMatchingVolumeInfoForStream(I)Landroid/media/VolumeInfo;
    .registers 8

    .line 757
    iget-object p0, p0, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo;->mVolumeInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeInfo;

    .line 758
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasStreamType()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_22

    .line 759
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getStreamType()I

    move-result v1

    if-ne v1, p1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    .line 760
    :goto_23
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->hasVolumeGroup()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 761
    invoke-virtual {v0}, Landroid/media/VolumeInfo;->getVolumeGroup()Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/audio/AudioService$AbsoluteVolumeDeviceInfo$$ExternalSyntheticLambda0;-><init>(I)V

    .line 762
    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    if-nez v1, :cond_46

    if-eqz v2, :cond_6

    :cond_46
    return-object v0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method
