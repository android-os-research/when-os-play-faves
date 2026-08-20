.class public Lcom/android/server/location/nsflp/NSLocationProviderHelper;
.super Ljava/lang/Object;
.source "NSLocationProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;
    }
.end annotation


# static fields
.field public static final KEY_ACTIVE:Ljava/lang/String; = "isActive"

.field public static final KEY_ALLOWED:Ljava/lang/String; = "isAllowed"

.field public static final KEY_DISTANCE:Ljava/lang/String; = "smallestDisplacement"

.field public static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final KEY_HAS_LOCATION_CAPABILITY:Ljava/lang/String; = "hasLocationCapability"

.field public static final KEY_INTERVAL:Ljava/lang/String; = "interval"

.field public static final KEY_LISTENER_ID:Ljava/lang/String; = "listenerid"

.field public static final KEY_LISTENER_TYPE:Ljava/lang/String; = "listenerType"

.field public static final KEY_MIN_UPDATE_INTERVAL:Ljava/lang/String; = "minUpdateInterval"

.field public static final KEY_NUM_UPDATES:Ljava/lang/String; = "numUpdates"

.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final KEY_PERMISSION_LEVEL:Ljava/lang/String; = "permissionLevel"

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_PROC_STATE:Ljava/lang/String; = "procState"

.field public static final KEY_PROVIDER:Ljava/lang/String; = "provider"

.field public static final KEY_QUALITY:Ljava/lang/String; = "quality"

.field public static final KEY_REASON:Ljava/lang/String; = "reason"

.field public static final KEY_THROWABLE:Ljava/lang/String; = "throwable"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_WORKSOURCE_NAMES:Ljava/lang/String; = "workSourceNames"

.field public static final KEY_WORKSOURCE_SIZE:Ljava/lang/String; = "workSourceSize"

.field public static final KEY_WORKSOURCE_UIDS:Ljava/lang/String; = "workSourceUids"

.field public static final TAG:Ljava/lang/String; = "NSLocationProviderHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mIsAvailableMotionStop:Z

.field public mIsMotionPowerSaveMode:Z

.field public final mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public final mRegistrationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/android/server/location/provider/LocationProviderManager$Registration;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mRegistrationSetLock:Ljava/lang/Object;

.field public mSuplAddress:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$J8H7JWwcJzK7hZqOYbRF7ZwsrAI(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->lambda$updateRequestInfo$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/nsflp/NSPermissionHelper;Lcom/android/server/location/nsflp/NSConnectionHelper;)V
    .registers 6

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationSetLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsAvailableMotionStop:Z

    const-string v0, "NSLocationProviderHelper"

    const-string v1, "constructor"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    .line 91
    iput-object p3, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 93
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic lambda$updateRequestInfo$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 99
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addGnssDataListener(Landroid/os/IBinder;Ljava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;IIZZ)V
    .registers 10

    if-nez p1, :cond_a

    const-string p0, "NSLocationProviderHelper"

    const-string p1, "addGnssDataListener, binder is null"

    .line 275
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 279
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 280
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "listenerType"

    .line 281
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p2, "uid"

    .line 282
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "pid"

    .line 283
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "listenerid"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "isAllowed"

    .line 285
    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "foreground"

    .line 286
    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p4, p5}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p1

    const-string/jumbo p2, "permissionLevel"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    invoke-virtual {p0, p4, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 291
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->ADD_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final addListener(Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActiveRequests(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrationSetLock"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationSetLock:Ljava/lang/Object;

    monitor-enter v1

    .line 229
    :try_start_8
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz p0, :cond_fb

    .line 230
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto/16 :goto_fb

    .line 232
    :cond_1b
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 233
    invoke-virtual {v3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    .line 234
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v5

    .line 235
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getQuality()I

    move-result v6

    .line 238
    new-instance v7, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    invoke-direct {v7}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;-><init>()V

    .line 239
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v7

    .line 240
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setUid(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v7

    .line 241
    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setPid(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 242
    invoke-virtual {v4, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setProvider(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 243
    invoke-virtual {v4, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setQuality(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    const/16 v7, 0x64

    if-ne v6, v7, :cond_62

    const/4 v6, 0x1

    goto :goto_63

    :cond_62
    const/4 v6, 0x0

    .line 244
    :goto_63
    invoke-virtual {v4, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setHighPowerRequest(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 245
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setForeground(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 246
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getListenerId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setListenerId(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 247
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setInterval(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 248
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setMinUpdateInterval(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 249
    invoke-virtual {v5}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setMaxWaitTime(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 250
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setListenerType(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setRequestTime(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v4

    .line 252
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->setAllowed(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;

    move-result-object v3

    .line 253
    invoke-virtual {v3}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->build()Lcom/android/server/location/nsflp/LocationRequestInfo;

    move-result-object v3

    const-string v4, "NSLocationProviderHelper"

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActiveRequestSync, added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 258
    :cond_c7
    monitor-exit v1
    :try_end_c8
    .catchall {:try_start_8 .. :try_end_c8} :catchall_fd

    const-string p0, "NSLocationProviderHelper"

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActiveRequestSync, size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_ea

    return-object v2

    .line 265
    :cond_ea
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "provider"

    .line 266
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "activeRequests"

    .line 267
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    .line 230
    :cond_fb
    :goto_fb
    :try_start_fb
    monitor-exit v1

    return-object v2

    :catchall_fd
    move-exception p0

    .line 258
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_fd

    throw p0
.end method

.method public getSuplAddress()Ljava/lang/String;
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mSuplAddress:Ljava/lang/String;

    return-object p0
.end method

.method public isMotionPowerSaveMode()Z
    .registers 1

    .line 417
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    return p0
.end method

.method public final notifyMotionPowerSaveModeChanged(Z)V
    .registers 3

    .line 77
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 79
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsMotionPowerSaveMode:Z

    .line 81
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;

    .line 82
    invoke-interface {v0, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;->onMotionPowerSaveModeChanged(Z)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public onAvailableMotionStop(Z)V
    .registers 4

    .line 421
    iget-boolean v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsAvailableMotionStop:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 422
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mIsAvailableMotionStop:Z

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isAvailableMotionStop"

    .line 425
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->AVAILABLE_MOTION_STOP:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public onGmsApiRequest(Landroid/os/Message;)V
    .registers 7

    .line 334
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_7

    return-void

    .line 337
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const-string/jumbo v1, "interfaceName"

    .line 341
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_75

    const-string v2, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    const-string/jumbo v1, "uid"

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "pid"

    .line 346
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_54

    .line 348
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    if-eqz v2, :cond_54

    const-string/jumbo v3, "permissionLevel"

    .line 351
    iget-object v4, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v4, v1, v2}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 354
    :cond_54
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onMessageUpdated(Landroid/os/Message;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_75

    :catch_5a
    move-exception p0

    .line 357
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update GmsApiRequest, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NSLocationProviderHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    :goto_75
    return-void
.end method

.method public removeGnssDataListener(Landroid/os/IBinder;Landroid/location/LocationConstants$LISTENER_TYPE;II)V
    .registers 7

    if-nez p1, :cond_b

    const-string p0, "NSLocationProviderHelper"

    const-string/jumbo p1, "removeGnssDataListener, binder is null"

    .line 296
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 301
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "listenerid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "listenerType"

    .line 302
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p1, "uid"

    .line 303
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pid"

    .line 304
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    invoke-virtual {p0, p3, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 308
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->REMOVE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final removeListener(Lcom/android/server/location/nsflp/NSLocationProviderHelper$MotionPowerSaveModeChangedListener;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mMotionPowerListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportProviderStatus(Landroid/location/LocationConstants$STATE_TYPE;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_11

    .line 365
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_11
    if-eqz p3, :cond_1d

    .line 369
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string/jumbo p3, "value"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    :cond_1d
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendSettingsIgnoreInfo(Ljava/lang/String;ZLcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 7

    .line 376
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_32

    if-eqz p3, :cond_32

    .line 378
    invoke-virtual {p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_24

    .line 379
    new-instance p3, Ljava/lang/Throwable;

    const-string/jumbo v1, "stack dump"

    invoke-direct {p3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "throwable"

    .line 380
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_32

    .line 382
    :cond_24
    invoke-virtual {p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    :goto_32
    const-string/jumbo p3, "provider"

    .line 385
    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "ignored"

    .line 386
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SETTINGS_IGNORED_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V
    .registers 9

    if-nez p1, :cond_b

    const-string p0, "NSLocationProviderHelper"

    const-string/jumbo p1, "updateGnssDataListener, binder is null"

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 318
    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "isActive"

    .line 319
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p2, "packageName"

    .line 320
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "listenerType"

    .line 321
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo p2, "uid"

    .line 322
    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "pid"

    .line 323
    invoke-virtual {v0, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "listenerid"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, p5, p6}, Lcom/android/server/location/LocationPermissions;->getPermissionLevel(Landroid/content/Context;II)I

    move-result p1

    const-string/jumbo p2, "permissionLevel"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    invoke-virtual {p0, p5, v0}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 329
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->UPDATE_DATA_LISTENER:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateRegistrationAccessStatus(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;Landroid/location/LocationConstants$PAUSED_BY;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrationSetLock"
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 206
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationSetLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_7c

    .line 207
    :try_start_10
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 208
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result p1

    const-string v1, "NSLocationProviderHelper"

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver status was changed, isAllowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2e

    const-string v3, ""

    goto :goto_3f

    .line 210
    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "listenerid"

    .line 213
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getListenerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "isAllowed"

    .line 214
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "reason"

    .line 215
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 217
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getUid()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    const-string/jumbo p1, "permissionLevel"

    .line 218
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_UPDATE:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 222
    :cond_7c
    monitor-exit v0

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_10 .. :try_end_80} :catchall_7e

    throw p0
.end method

.method public updateRemoveInfo(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrationSetLock"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_60

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_60

    .line 164
    :cond_1a
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationSetLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_1d
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_5d

    .line 168
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 171
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "packageName"

    .line 172
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "listenerid"

    .line 173
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getListenerId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "pid"

    .line 174
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uid"

    .line 175
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 179
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REMOVE:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :catchall_5d
    move-exception p0

    .line 166
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0

    :cond_60
    :goto_60
    return-void
.end method

.method public updateRequestInfo(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRegistrationSetLock"
        }
    .end annotation

    .line 98
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getListenerId()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/location/nsflp/NSLocationProviderHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/location/nsflp/NSLocationProviderHelper$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 100
    iget-object v2, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mRegistrationSetLock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_14
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_123

    .line 104
    invoke-virtual {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    .line 105
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v2

    .line 106
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_3a

    const-string/jumbo v5, "passive"

    .line 109
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a

    .line 110
    new-instance v4, Ljava/lang/Throwable;

    const-string/jumbo v5, "stack dump"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 113
    :cond_3a
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "packageName"

    .line 114
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "provider"

    .line 115
    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "listenerid"

    .line 116
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "interval"

    .line 117
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v6

    invoke-virtual {v5, p1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "minUpdateInterval"

    .line 118
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getMinUpdateIntervalMillis()J

    move-result-wide v6

    invoke-virtual {v5, p1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo p1, "quality"

    .line 119
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getQuality()I

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "pid"

    .line 120
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "uid"

    .line 121
    invoke-virtual {v5, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "foreground"

    .line 122
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "throwable"

    .line 123
    invoke-virtual {v5, p1, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo p1, "listenerType"

    .line 124
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isListenerType()Z

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "isAllowed"

    .line 125
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "smallestDisplacement"

    .line 126
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getMinUpdateDistanceMeters()F

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo p1, "numUpdates"

    .line 127
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result v0

    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "permissionLevel"

    .line 128
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result p2

    invoke-virtual {v5, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object p1

    if-eqz p1, :cond_118

    .line 131
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result p2

    if-lez p2, :cond_118

    .line 133
    :try_start_d0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result p2

    .line 134
    new-array v0, p2, [I

    .line 135
    new-array v1, p2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_d9
    if-ge v2, p2, :cond_ea

    .line 137
    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->getUid(I)I

    move-result v4

    aput v4, v0, v2

    .line 138
    invoke-virtual {p1, v2}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d9

    :cond_ea
    const-string/jumbo v2, "workSourceSize"

    .line 141
    invoke-virtual {v5, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p2, "workSourceUids"

    .line 142
    invoke-virtual {v5, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string/jumbo p2, "workSourceNames"

    .line 143
    invoke-virtual {v5, p2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_fc} :catch_fd

    goto :goto_118

    :catch_fd
    const-string p2, "NSLocationProviderHelper"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to put worksource["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_118
    :goto_118
    invoke-virtual {p0, v3, v5}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 150
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->LOCATION_REQUEST:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void

    :catchall_123
    move-exception p0

    .line 102
    :try_start_124
    monitor-exit v2
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw p0
.end method

.method public updateSLocationRequestInfo(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_9

    const/16 p1, 0xc9

    goto :goto_b

    :cond_9
    const/16 p1, 0xca

    .line 185
    :goto_b
    iput p1, v0, Landroid/os/Message;->what:I

    .line 187
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    .line 188
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    .line 189
    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p3, "packageName"

    .line 190
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "listenerid"

    .line 191
    invoke-virtual {p1, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p6, :cond_2f

    move p4, p3

    goto :goto_32

    :cond_2f
    const p4, 0x7fffffff

    :goto_32
    const-string/jumbo p5, "numUpdates"

    .line 192
    invoke-virtual {p1, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-ne p7, p3, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 p3, 0x0

    :goto_3c
    const-string/jumbo p4, "listenerType"

    .line 193
    invoke-virtual {p1, p4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 195
    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateUidProcState(ILandroid/os/Bundle;)V

    .line 197
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onMessageUpdated(Landroid/os/Message;)V

    return-void
.end method

.method public updateSuplAddress(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 394
    :cond_3
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mSuplAddress:Ljava/lang/String;

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "supl_hostname"

    .line 397
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->SUPL_ADDRESS:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public final updateUidProcState(ILandroid/os/Bundle;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    .line 409
    :cond_3
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper;->getUidState(I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 411
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->getProcState()I

    move-result p1

    const-string/jumbo v0, "procState"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;->hasLocationCapability()Z

    move-result p0

    const-string/jumbo p1, "hasLocationCapability"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1f
    return-void
.end method
