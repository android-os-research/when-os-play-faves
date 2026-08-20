.class public Lcom/android/server/audio/AudioService$VolumeGroupState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeGroupState"
.end annotation


# instance fields
.field public mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field public final mIndexMap:Landroid/util/SparseIntArray;

.field public mIndexMax:I

.field public mIndexMin:I

.field public mLegacyStreamType:I

.field public mPublicStreamType:I

.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/audio/AudioService$VolumeGroupState;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpersistVolumeGroup(Lcom/android/server/audio/AudioService$VolumeGroupState;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->persistVolumeGroup(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .registers 7

    .line 7858
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7845
    new-instance p1, Landroid/util/SparseIntArray;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 p1, -0x1

    .line 7848
    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    const/4 v0, 0x3

    .line 7849
    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    .line 7850
    invoke-static {}, Landroid/media/audiopolicy/AudioProductStrategy;->getDefaultAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 7859
    iput-object p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 7861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeGroupState for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7864
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioAttributes;

    .line 7865
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 7866
    iput-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 7870
    :cond_54
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object v0

    .line 7871
    array-length v2, v0

    if-eqz v2, :cond_84

    const/4 p2, 0x0

    .line 7873
    aget v1, v0, p2

    iput v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    .line 7874
    array-length v1, v0

    :goto_63
    if-ge p2, v1, :cond_75

    aget v2, v0, p2

    if-eq v2, p1, :cond_72

    .line 7876
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    if-ge v2, v3, :cond_72

    .line 7877
    iput v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    goto :goto_75

    :cond_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_63

    .line 7881
    :cond_75
    :goto_75
    sget-object p1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    iget p2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget p1, p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 7882
    sget-object p1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget p1, p1, p2

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    goto :goto_9e

    .line 7883
    :cond_84
    invoke-virtual {p2}, Landroid/media/audiopolicy/AudioVolumeGroup;->getAudioAttributes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a2

    .line 7884
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    .line 7885
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p1}, Landroid/media/AudioSystem;->getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    .line 7892
    :goto_9e
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->readSettings()V

    return-void

    .line 7887
    :cond_a2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "volume group: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has neither valid attributes nor valid stream types assigned"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;Lcom/android/server/audio/AudioService$VolumeGroupState-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioVolumeGroup;)V

    return-void
.end method


# virtual methods
.method public applyAllVolumes()V
    .registers 11

    .line 7973
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 7976
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isValidLegacyStreamType()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 7978
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 7979
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v3

    goto :goto_1d

    :cond_1b
    move v1, v2

    move v3, v1

    :goto_1d
    move v4, v2

    .line 7983
    :goto_1e
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    if-ge v4, v5, :cond_71

    .line 7984
    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    if-eq v5, v6, :cond_6e

    .line 7986
    iget-object v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-ne v5, v1, :cond_3b

    if-ne v3, v6, :cond_3b

    goto :goto_6e

    :cond_3b
    const-string v7, "AS.AudioService"

    .line 7991
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applyAllVolumes: restore index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for group "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 7992
    invoke-virtual {v9}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7993
    invoke-static {v5}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7991
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7995
    invoke-virtual {p0, v6, v5, v2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    :cond_6e
    :goto_6e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 8000
    :cond_71
    invoke-virtual {p0, v6}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v1

    const-string v3, "AS.AudioService"

    .line 8002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAllVolumes: restore default device index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 8003
    invoke-virtual {v5}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8002
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8005
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->isValidLegacyStreamType()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 8006
    iget-object v3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    aget-object v3, v3, v4

    .line 8007
    invoke-virtual {v3, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    if-ne v3, v1, :cond_b5

    .line 8009
    monitor-exit v0

    return-void

    .line 8012
    :cond_b5
    invoke-virtual {p0, v1, v6, v2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 8013
    monitor-exit v0

    return-void

    :catchall_ba
    move-exception p0

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_ba

    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 8089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- VOLUME GROUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   Min: "

    .line 8090
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8091
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   Max: "

    .line 8092
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8093
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "   Current: "

    .line 8094
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 8095
    :goto_3a
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, ", "

    if-ge v1, v2, :cond_85

    if-lez v1, :cond_49

    .line 8097
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8099
    :cond_49
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 8100
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_5d

    const-string v2, "default"

    goto :goto_61

    .line 8102
    :cond_5d
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v2

    .line 8103
    :goto_61
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, " ("

    .line 8104
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8105
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ")"

    .line 8106
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_74
    const-string v2, ": "

    .line 8108
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8109
    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 8111
    :cond_85
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "   Devices: "

    .line 8112
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8114
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result p0

    .line 8115
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_97
    :goto_97
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int v4, p0, v2

    if-ne v4, v2, :cond_97

    add-int/lit8 v4, v0, 0x1

    if-lez v0, :cond_b2

    .line 8118
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8120
    :cond_b2
    invoke-static {v2}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v4

    goto :goto_97

    :cond_bb
    return-void
.end method

.method public final getDeviceForVolume()I
    .registers 2

    .line 7855
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    invoke-virtual {v0, p0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p0

    return p0
.end method

.method public getIndex(I)I
    .registers 5

    .line 7946
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 7947
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-eq p1, v2, :cond_d

    goto :goto_15

    .line 7949
    :cond_d
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    :goto_15
    monitor-exit v0

    return p1

    :catchall_17
    move-exception p0

    .line 7950
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getLegacyStreamTypes()[I
    .registers 1

    .line 7896
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->getLegacyStreamTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getMaxIndex()I
    .registers 1

    .line 7960
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return p0
.end method

.method public getMinIndex()I
    .registers 1

    .line 7964
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    return p0
.end method

.method public getSettingNameForDevice(I)Ljava/lang/String;
    .registers 3

    .line 8081
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v0

    .line 8082
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 8083
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8085
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getValidIndex(I)I
    .registers 3

    .line 8072
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMin:I

    if-ge p1, v0, :cond_5

    return v0

    .line 8074
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    if-le p1, v0, :cond_12

    goto :goto_13

    :cond_12
    return p1

    .line 8075
    :cond_13
    :goto_13
    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    return p0
.end method

.method public getVolumeIndex()I
    .registers 2

    .line 7904
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result p0

    return p0
.end method

.method public hasIndexForDevice(I)Z
    .registers 4

    .line 7954
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 7955
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 7956
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final isValidLegacyStreamType()Z
    .registers 3

    .line 7968
    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mLegacyStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p0

    array-length p0, p0

    if-ge v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 1

    .line 7900
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final persistVolumeGroup(I)V
    .registers 7

    .line 8017
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 8021
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persistVolumeGroup: storing index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for group "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 8022
    invoke-virtual {v1}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8023
    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8024
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.AudioService"

    .line 8021
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8026
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 8027
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v3

    .line 8028
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getIndex(I)I

    move-result p1

    const/4 v4, -0x2

    .line 8026
    invoke-virtual {v0, v2, v3, p1, v4}, Lcom/android/server/audio/SettingsAdapter;->putSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    if-nez p1, :cond_80

    .line 8031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "persistVolumeGroup failed for group "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    invoke-virtual {p0}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80
    return-void
.end method

.method public readSettings()V
    .registers 11

    .line 8036
    const-class v0, Lcom/android/server/audio/AudioService$VolumeGroupState;

    monitor-enter v0

    .line 8038
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 8040
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1b

    .line 8041
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    iget p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    invoke-virtual {v1, v2, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 8042
    monitor-exit v0

    return-void

    .line 8044
    :cond_1b
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SET:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v2, :cond_3b

    .line 8049
    sget-object v5, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    iget v6, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget v5, v5, v6

    goto :goto_3c

    :cond_3b
    move v5, v4

    .line 8051
    :goto_3c
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getSettingNameForDevice(I)Ljava/lang/String;

    move-result-object v6

    .line 8052
    iget-object v7, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v7}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettings(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SettingsAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v8}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v6, v5, v9}, Lcom/android/server/audio/SettingsAdapter;->getSystemIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v4, :cond_54

    goto :goto_21

    .line 8057
    :cond_54
    iget v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 v7, 0x7

    if-ne v4, v7, :cond_63

    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmCameraSoundForced(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 8059
    iget v5, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMax:I

    :cond_63
    const-string v4, "AS.AudioService"

    .line 8062
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readSettings: found stored index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioVolumeGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 8063
    invoke-virtual {v8}, Landroid/media/audiopolicy/AudioVolumeGroup;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", User="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8064
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 8062
    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8066
    iget-object v4, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v5}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getValidIndex(I)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_21

    .line 8068
    :cond_ab
    monitor-exit v0

    return-void

    :catchall_ad
    move-exception p0

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_3 .. :try_end_af} :catchall_ad

    throw p0
.end method

.method public setVolumeIndex(II)V
    .registers 4

    .line 7908
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmUseFixedVolume(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 7911
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeGroupState;->getDeviceForVolume()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndex(III)V

    return-void
.end method

.method public final setVolumeIndex(III)V
    .registers 11

    .line 7916
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$VolumeGroupState;->setVolumeIndexInt(III)V

    .line 7919
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mIndexMap:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 7922
    iget-object p1, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/16 v6, 0x1f4

    move v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method public final setVolumeIndexInt(III)V
    .registers 5

    .line 7936
    iget-object p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p3}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmStreamStates(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;

    move-result-object p3

    iget v0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    aget-object p3, p3, v0

    invoke-virtual {p3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->isFullyMuted()Z

    move-result p3

    if-eqz p3, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 7938
    :cond_12
    iget p3, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mPublicStreamType:I

    const/4 v0, 0x6

    if-ne p3, v0, :cond_1a

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    .line 7942
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$VolumeGroupState;->mAudioAttributes:Landroid/media/AudioAttributes;

    invoke-static {p0, p1, p2}, Landroid/media/AudioSystem;->setVolumeIndexForAttributes(Landroid/media/AudioAttributes;II)I

    return-void
.end method
