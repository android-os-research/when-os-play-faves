.class public Lcom/android/server/audio/AudioSystemAdapter;
.super Ljava/lang/Object;
.source "AudioSystemAdapter.java"

# interfaces
.implements Landroid/media/AudioSystem$RoutingUpdateCallback;
.implements Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;,
        Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;
    }
.end annotation


# static fields
.field public static final DEBUG_CACHE:Z = false

.field public static final ENABLE_GETDEVICES_STATS:Z = false

.field public static final METHOD_GETDEVICESFORATTRIBUTES:I = 0x0

.field public static final NB_MEASUREMENTS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AudioSystemAdapter"

.field public static final USE_CACHE_FOR_GETDEVICES:Z = true

.field public static sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sRoutingListenerLock"
        }
    .end annotation
.end field

.field public static final sRoutingListenerLock:Ljava/lang/Object;

.field public static sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

.field public static sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sVolRangeInitReqListenerLock"
        }
    .end annotation
.end field

.field public static final sVolRangeInitReqListenerLock:Ljava/lang/Object;


# instance fields
.field public mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/util/Pair<",
            "Landroid/media/AudioAttributes;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;>;"
        }
    .end annotation
.end field

.field public mMethodCacheHit:[I

.field public mMethodCallCounter:[I

.field public mMethodNames:[Ljava/lang/String;

.field public mMethodTimeNs:[J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "getDevicesForAttributes"

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodNames:[Ljava/lang/String;

    return-void
.end method

.method public static attrDeviceToDebugString(Landroid/media/AudioAttributes;Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " attrUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getSystemUsage()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {p1}, Landroid/media/AudioSystem;->generateAudioDeviceTypesSet(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->deviceSetToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;
    .registers 4

    const-class v0, Lcom/android/server/audio/AudioSystemAdapter;

    monitor-enter v0

    .line 138
    :try_start_3
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    if-nez v1, :cond_2a

    .line 139
    new-instance v1, Lcom/android/server/audio/AudioSystemAdapter;

    invoke-direct {v1}, Lcom/android/server/audio/AudioSystemAdapter;-><init>()V

    sput-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    .line 140
    invoke-static {v1}, Landroid/media/AudioSystem;->setRoutingCallback(Landroid/media/AudioSystem$RoutingUpdateCallback;)V

    .line 141
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-static {v1}, Landroid/media/AudioSystem;->setVolumeRangeInitRequestCallback(Landroid/media/AudioSystem$VolumeRangeInitRequestCallback;)V

    .line 143
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 145
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    .line 152
    :cond_2a
    sget-object v1, Lcom/android/server/audio/AudioSystemAdapter;->sSingletonDefaultAdapter:Lcom/android/server/audio/AudioSystemAdapter;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit v0

    return-object v1

    :catchall_2e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setRoutingListener(Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;)V
    .registers 2

    .line 103
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 105
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public static setVolRangeInitReqListener(Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;)V
    .registers 2

    .line 127
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    sput-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 129
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method public clearDevicesRoleForCapturePreset(II)I
    .registers 3

    .line 330
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 331
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->clearDevicesRoleForCapturePreset(II)I

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "\nAudioSystemAdapter:"

    .line 491
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mDevicesForAttrCache:"

    .line 492
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_b6

    .line 495
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/AudioAttributes;

    .line 498
    :try_start_2c
    invoke-virtual {v1}, Landroid/media/AudioAttributes;->getVolumeControlStream()I

    move-result v2

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " forVolume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_97} :catch_98

    goto :goto_77

    :catch_98
    move-exception v0

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t dump failed for attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "AudioSystemAdapter"

    const-string v2, "dump failed"

    .line 508
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    :cond_b6
    return-void
.end method

.method public getDeviceConnectionState(ILjava/lang/String;)I
    .registers 3

    .line 255
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioSystemAdapter;->getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getDevicesForAttributesImpl(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 189
    iget-object v1, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 190
    :try_start_c
    iget-object v2, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_54

    .line 194
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->getDevicesForAttributes(Landroid/media/AudioAttributes;Z)Ljava/util/ArrayList;

    move-result-object p2

    .line 195
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_4d

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 196
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioDeviceAttributes;

    invoke-virtual {v2}, Landroid/media/AudioDeviceAttributes;->getInternalType()I

    move-result v2

    if-nez v2, :cond_4d

    const-string p0, "AudioSystemAdapter"

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to get devices for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    monitor-exit v1

    return-object p2

    .line 201
    :cond_4d
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    return-object p2

    .line 209
    :cond_54
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mMethodCacheHit:[I

    aget p1, p0, v4

    add-int/2addr p1, v3

    aput p1, p0, v4

    .line 222
    monitor-exit v1

    return-object v2

    :catchall_5d
    move-exception p0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_c .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getForceUse(I)I
    .registers 2

    .line 427
    invoke-static {p1}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result p0

    return p0
.end method

.method public handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 268
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 269
    invoke-static {p1, p2, p3, p4}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public invalidateRoutingCache()V
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_f

    .line 160
    monitor-enter v0

    .line 161
    :try_start_5
    iget-object p0, p0, Lcom/android/server/audio/AudioSystemAdapter;->mDevicesForAttrCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 162
    monitor-exit v0

    goto :goto_f

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0

    :cond_f
    :goto_f
    return-void
.end method

.method public isMicrophoneMuted()Z
    .registers 1

    .line 349
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result p0

    return p0
.end method

.method public isStreamActive(II)Z
    .registers 3

    .line 376
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result p0

    return p0
.end method

.method public isStreamActiveRemotely(II)Z
    .registers 3

    .line 386
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result p0

    return p0
.end method

.method public muteMicrophone(Z)I
    .registers 2

    .line 361
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    move-result p0

    return p0
.end method

.method public onRoutingUpdated()V
    .registers 2

    .line 88
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 90
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListenerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 91
    :try_start_6
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sRoutingListener:Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;

    .line 92
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_f

    if-eqz v0, :cond_e

    .line 94
    invoke-interface {v0}, Lcom/android/server/audio/AudioSystemAdapter$OnRoutingUpdatedListener;->onRoutingUpdatedFromNative()V

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    .line 92
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onVolumeRangeInitializationRequested()V
    .registers 2

    .line 114
    sget-object p0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListenerLock:Ljava/lang/Object;

    monitor-enter p0

    .line 115
    :try_start_3
    sget-object v0, Lcom/android/server/audio/AudioSystemAdapter;->sVolRangeInitReqListener:Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;

    .line 116
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c

    if-eqz v0, :cond_b

    .line 118
    invoke-interface {v0}, Lcom/android/server/audio/AudioSystemAdapter$OnVolRangeInitRequestListener;->onVolumeRangeInitRequestFromNative()V

    :cond_b
    return-void

    :catchall_c
    move-exception v0

    .line 116
    :try_start_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_c

    throw v0
.end method

.method public registerPolicyMixes(Ljava/util/ArrayList;Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/AudioMix;",
            ">;Z)I"
        }
    .end annotation

    .line 437
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 438
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->registerPolicyMixes(Ljava/util/ArrayList;Z)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 320
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->removeDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public removeDevicesRoleForStrategy(II)I
    .registers 3

    .line 293
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 294
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->removeDevicesRoleForStrategy(II)I

    move-result p0

    return p0
.end method

.method public removeUidDeviceAffinities(I)I
    .registers 2

    .line 459
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 460
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUidDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public removeUserIdDeviceAffinities(I)I
    .registers 2

    .line 482
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 483
    invoke-static {p1}, Landroid/media/AudioSystem;->removeUserIdDeviceAffinities(I)I

    move-result p0

    return p0
.end method

.method public setAllowedCapturePolicy(II)I
    .registers 3

    .line 407
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setAllowedCapturePolicy(II)I

    move-result p0

    return p0
.end method

.method public setCurrentImeUid(I)I
    .registers 2

    .line 369
    invoke-static {p1}, Landroid/media/AudioSystem;->setCurrentImeUid(I)I

    move-result p0

    return p0
.end method

.method public setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I
    .registers 4

    .line 244
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 245
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(Landroid/media/AudioDeviceAttributes;II)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForCapturePreset(IILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 307
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForCapturePreset(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setDevicesRoleForStrategy(IILjava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 283
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setDevicesRoleForStrategy(IILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public setForceUse(II)I
    .registers 3

    .line 417
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 418
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    move-result p0

    return p0
.end method

.method public setParameters(Ljava/lang/String;)I
    .registers 2

    .line 340
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setPhoneState(II)I
    .registers 3

    .line 396
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 397
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setPhoneState(II)I

    move-result p0

    return p0
.end method

.method public setUidDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 4

    .line 449
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 450
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUidDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I
    .registers 4

    .line 472
    invoke-virtual {p0}, Lcom/android/server/audio/AudioSystemAdapter;->invalidateRoutingCache()V

    .line 473
    invoke-static {p1, p2, p3}, Landroid/media/AudioSystem;->setUserIdDeviceAffinities(I[I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
