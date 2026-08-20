.class public Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;
.super Ljava/lang/Object;
.source "PublishControllerImpl.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/presence/publish/PublishController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCapabilityType:I

.field private final blacklist mContext:Landroid/content/Context;

.field public blacklist mCurrentPublishState:I

.field private blacklist mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

.field private blacklist mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

.field private blacklist mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private volatile blacklist mIsDestroyedFlag:Z

.field public blacklist mLastPublishState:I

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private blacklist mPidfXml:Ljava/lang/String;

.field private final blacklist mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private blacklist mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

.field private blacklist mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

.field private blacklist mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

.field private blacklist mPublishStateCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPublishStateLock:Ljava/lang/Object;

.field private blacklist mPublishStateUpdatedTime:Ljava/time/Instant;

.field private final blacklist mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

.field private volatile blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private volatile blacklist mReceivePublishFromService:Z

.field private final blacklist mSubId:I

.field private final blacklist mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDestroyedFlag(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishHandler(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceCtrlCallback(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCarrierConfigChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleCarrierConfigChangedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroyedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleDestroyedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNotifyCurrentPublishStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishSentMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishSentMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishStateChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishUpdatedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishUpdatedMessage(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsCapabilitiesChangedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsCapabilitiesChangedMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsConnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Lcom/android/ims/RcsFeatureManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsConnectedMessage(Lcom/android/ims/RcsFeatureManager;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsDisconnectedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRcsDisconnectedMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestCanceledMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRequestCanceledMessage(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRequestPublishMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleRequestPublishMessage(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleResetDeviceStateMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleResetDeviceStateMessage()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleUnpublishedMessage(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;ILjava/time/Instant;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handleUnpublishedMessage(ILjava/time/Instant;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misPresencePublishEnabled(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPresencePublishEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 107
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 125
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 130
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 379
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 149
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    .line 150
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    .line 151
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 152
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 153
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishController(Landroid/os/Looper;)V

    .line 155
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "c"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    .param p4, "looper"    # Landroid/os/Looper;
    .param p5, "deviceCapFactory"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;
    .param p6, "processorFactory"    # Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;
    .param p7, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    .line 107
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 125
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 130
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 379
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 161
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    .line 162
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    .line 163
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 164
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    .line 165
    iput-object p6, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    .line 166
    iput-object p7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 167
    invoke-direct {p0, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishController(Landroid/os/Looper;)V

    .line 168
    return-void
.end method

.method private blacklist clearPublishStateCallbacks()V
    .registers 6

    .line 341
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_3
    const-string v1, "clearPublishStateCallbacks"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 344
    .local v1, "lastIndex":I
    move v2, v1

    .local v2, "index":I
    :goto_11
    if-ltz v2, :cond_24

    .line 345
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 346
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 347
    .local v3, "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 344
    nop

    .end local v3    # "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 349
    .end local v1    # "lastIndex":I
    .end local v2    # "index":I
    :cond_24
    monitor-exit v0

    .line 350
    return-void

    .line 349
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private blacklist getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;
    .registers 4

    .line 1023
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1024
    .local v0, "manager":Landroid/telephony/CarrierConfigManager;
    if-eqz v0, :cond_13

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    goto :goto_17

    .line 1025
    :cond_13
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    :goto_17
    nop

    .line 1026
    .local v1, "bundle":Landroid/os/PersistableBundle;
    const-string v2, "ims.publish_service_desc_feature_tag_map_override_string_array"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getInitialPublishState(I)I
    .registers 3
    .param p1, "capabilityType"    # I

    .line 198
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 199
    return v0

    .line 200
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 201
    return v0

    .line 203
    :cond_8
    const/4 v0, 0x6

    return v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1255
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    return-object v0
.end method

.method private blacklist handleCarrierConfigChangedMessage()V
    .registers 4

    .line 980
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 982
    :cond_5
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->updateCapabilityTypeAndPublishStateIfNeeded()V

    .line 984
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;

    move-result-object v0

    .line 985
    .local v0, "newMap":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateCapabilityRegistrationTrackerMap([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 986
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 989
    :cond_1b
    return-void
.end method

.method private blacklist handleDestroyedMessage()V
    .registers 3

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    .line 940
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 941
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->unregisterRcsAvailabilityChanged()V

    .line 942
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onDestroy()V

    .line 943
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->onDestroy()V

    .line 944
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onDestroy()V

    .line 945
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 946
    :try_start_1e
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->clearPublishStateCallbacks()V

    .line 947
    monitor-exit v0

    .line 948
    return-void

    .line 947
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    throw v1
.end method

.method private blacklist handleNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 6
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 1085
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-nez v0, :cond_27

    if-nez p1, :cond_7

    goto :goto_27

    .line 1087
    :cond_7
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getUcePublishState(Z)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishStateChanged(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    .line 1090
    goto :goto_26

    .line 1088
    :catch_f
    move-exception v0

    .line 1089
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCurrentPublishStateUpdateMessage exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1091
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_26
    return-void

    .line 1085
    :cond_27
    :goto_27
    return-void
.end method

.method private blacklist handlePublishSentMessage()V
    .registers 11

    .line 1158
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 1160
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1161
    .local v1, "lastIndex":I
    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1162
    .local v3, "tempPublishState":I
    move v4, v1

    .local v4, "index":I
    :goto_14
    if-ltz v4, :cond_63

    .line 1163
    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1164
    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_65

    .line 1165
    .local v5, "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    const/4 v6, 0x0

    .line 1167
    .local v6, "isSupportPublishingState":Z
    :try_start_1f
    iget-object v7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCookie(I)Ljava/lang/Object;

    move-result-object v7

    .line 1168
    .local v7, "object":Ljava/lang/Object;
    if-eqz v7, :cond_2f

    .line 1169
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2e} :catch_30
    .catchall {:try_start_1f .. :try_end_2e} :catchall_65

    move v6, v8

    .line 1173
    .end local v7    # "object":Ljava/lang/Object;
    :cond_2f
    goto :goto_31

    .line 1171
    :catch_30
    move-exception v7

    .line 1175
    :goto_31
    const/4 v7, 0x7

    :try_start_32
    iput v7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1176
    if-eqz v6, :cond_3c

    .line 1177
    if-eqz v5, :cond_48

    .line 1178
    invoke-interface {v5, v7}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishStateChanged(I)V

    goto :goto_48

    .line 1185
    :cond_3c
    if-eq v3, v2, :cond_48

    const/4 v7, 0x2

    if-eq v3, v7, :cond_48

    .line 1189
    iput v7, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1190
    if-eqz v5, :cond_48

    .line 1191
    invoke-interface {v5, v7}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishStateChanged(I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_48} :catch_49
    .catchall {:try_start_32 .. :try_end_48} :catchall_65

    .line 1197
    :cond_48
    :goto_48
    goto :goto_60

    .line 1195
    :catch_49
    move-exception v7

    .line 1196
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Notify publish state changed error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1162
    .end local v5    # "callback":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .end local v6    # "isSupportPublishingState":Z
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_60
    add-int/lit8 v4, v4, -0x1

    goto :goto_14

    .line 1199
    .end local v1    # "lastIndex":I
    .end local v3    # "tempPublishState":I
    .end local v4    # "index":I
    :cond_63
    monitor-exit v0

    .line 1200
    return-void

    .line 1199
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_65

    throw v1
.end method

.method private blacklist handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V
    .registers 7
    .param p1, "newPublishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;
    .param p3, "pidfXml"    # Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1049
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 1051
    :cond_9
    if-eqz p2, :cond_81

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {p2, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_81

    .line 1057
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publish state changes from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1059
    iput-object p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    .line 1060
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    .line 1063
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    if-ne v1, p1, :cond_4a

    monitor-exit v0

    return-void

    .line 1064
    :cond_4a
    iput v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1065
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1066
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_af

    .line 1067
    const/4 v0, 0x2

    if-ne p1, v0, :cond_59

    .line 1068
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUnPublish(I)V

    .line 1072
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify publish state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 1080
    const-string v0, "Notify publish state changed: completed"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1081
    return-void

    .line 1052
    :cond_81
    :goto_81
    :try_start_81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePublishStateChangedMessage: updatedTimestamp is not allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publishState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1055
    monitor-exit v0

    return-void

    .line 1066
    :catchall_af
    move-exception v1

    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_81 .. :try_end_b1} :catchall_af

    throw v1
.end method

.method private blacklist handlePublishUpdatedMessage(ILjava/lang/String;ILjava/lang/String;)V
    .registers 12
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 1204
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 1205
    :cond_5
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLastPidfXml()Ljava/lang/String;

    move-result-object v2

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1207
    .local v0, "updatedPublish":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->publishUpdated(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 1208
    return-void
.end method

.method private blacklist handleRcsCapabilitiesChangedMessage(I)V
    .registers 5
    .param p1, "capabilities"    # I

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRcsCapabilitiesChangedMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1032
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_1b

    return-void

    .line 1033
    :cond_1b
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-direct {v0, p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 1034
    .local v0, "RcsImsCapabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v2, 0x2

    .line 1035
    invoke-virtual {v0, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v2

    .line 1034
    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 1037
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1038
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 1040
    :cond_37
    return-void
.end method

.method private blacklist handleRcsConnectedMessage(Lcom/android/ims/RcsFeatureManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 910
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 911
    :cond_5
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 912
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onRcsConnected()V

    .line 913
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->registerRcsAvailabilityChanged(Lcom/android/ims/RcsFeatureManager;)V

    .line 915
    return-void
.end method

.method private blacklist handleRcsDisconnectedMessage()V
    .registers 4

    .line 921
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 922
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 923
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updatePresenceCapable(Z)V

    .line 924
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->onRcsDisconnected()V

    .line 925
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->onRcsDisconnected()V

    .line 929
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPresencePublishEnabled()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 930
    const/4 v1, 0x2

    .line 931
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    .line 930
    invoke-direct {p0, v1, v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V

    .line 933
    :cond_26
    return-void
.end method

.method private blacklist handleRequestCanceledMessage(J)V
    .registers 4
    .param p1, "taskId"    # J

    .line 1141
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 1142
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->cancelPublishRequest(J)V

    .line 1143
    return-void
.end method

.method private blacklist handleRequestPublishMessage(I)V
    .registers 7
    .param p1, "type"    # I

    .line 1094
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 1096
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestPublishMessage: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1100
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    .line 1102
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    if-nez v1, :cond_24

    .line 1103
    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    .line 1106
    :cond_24
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 1107
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isPublishRequestBlocked()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1108
    :cond_36
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v1}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->resetDeviceState()V

    .line 1113
    .end local v0    # "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    :cond_3b
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->isPublishRequestAllowed()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestPublishMessage: SKIP. The request is not allowed. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1115
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 1116
    return-void

    .line 1120
    :cond_5d
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishingAllowedTime(I)V

    .line 1125
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v0

    .line 1126
    .local v0, "delay":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 1127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestPublishMessage: SKIP. The delay is empty. type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 1129
    return-void

    .line 1132
    :cond_8a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequestPublishMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c4

    .line 1134
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->doPublish(I)V

    goto :goto_d3

    .line 1136
    :cond_c4
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(IJ)V

    .line 1138
    :goto_d3
    return-void
.end method

.method private blacklist handleResetDeviceStateMessage()V
    .registers 2

    .line 1146
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 1147
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->resetDeviceState()V

    .line 1148
    return-void
.end method

.method private blacklist handleUnpublishedMessage(ILjava/time/Instant;)V
    .registers 4
    .param p1, "newPublishState"    # I
    .param p2, "updatedTimestamp"    # Ljava/time/Instant;

    .line 1152
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 1153
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->resetState()V

    .line 1154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private blacklist initDeviceCapabilitiesListener()V
    .registers 7

    .line 213
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListenerFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    iget-object v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    invoke-interface/range {v0 .. v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$DeviceCapListenerFactory;->createDeviceCapListener(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    .line 215
    return-void
.end method

.method private blacklist initPublishController(Landroid/os/Looper;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;

    .line 171
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getCapabilityType(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 172
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 173
    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 174
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 175
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    .line 177
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getCarrierServiceDescriptionFeatureTagMap()[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "serviceDescFeatureTagMap":[Ljava/lang/String;
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-direct {v1, v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;-><init>(I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 180
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initPublishProcessor()V

    .line 181
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->initDeviceCapabilitiesListener()V

    .line 184
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->initialize()V

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPublishController completed: capabilityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", publishState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private blacklist initPublishProcessor()V
    .registers 6

    .line 208
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessorFactory:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishProcessorFactory;->createPublishProcessor(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    .line 210
    return-void
.end method

.method private blacklist isPresencePublishEnabled()Z
    .registers 4

    .line 901
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 902
    :try_start_3
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    .line 903
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private blacklist isPublishRequestAllowed()Z
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 868
    const-string v0, "isPublishRequestAllowed: capability presence uce is not enabled."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 869
    return v1

    .line 873
    :cond_f
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mReceivePublishFromService:Z

    if-nez v0, :cond_19

    .line 874
    const-string v0, "isPublishRequestAllowed: The first PUBLISH request from the server has not been received."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 876
    return v1

    .line 880
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mUceCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;->getDeviceState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 881
    .local v0, "deviceState":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isPublishRequestBlocked()Z

    move-result v2

    if-eqz v2, :cond_2c

    goto :goto_3c

    .line 889
    :cond_2c
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isPublishingNow()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 890
    const-string v2, "isPublishRequestAllowed: There is already a publish request running now."

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 891
    return v1

    .line 893
    :cond_3a
    const/4 v1, 0x1

    return v1

    .line 882
    :cond_3c
    :goto_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPublishRequestAllowed: The device state is disallowed. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 883
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 884
    return v1
.end method

.method static synthetic blacklist lambda$new$0(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 121
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "capInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p4, "uceStatsWriter"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 127
    new-instance v6, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;-><init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V

    return-object v6
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 1238
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[D] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1240
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 1243
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[I] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 1248
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[W] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1250
    return-void
.end method

.method private blacklist registerRcsAvailabilityChanged(Lcom/android/ims/RcsFeatureManager;)V
    .registers 5
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 956
    :try_start_0
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {p1, v0, v1}, Lcom/android/ims/RcsFeatureManager;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_7
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_7} :catch_8

    .line 959
    goto :goto_1f

    .line 957
    :catch_8
    move-exception v0

    .line 958
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRcsAvailabilityChanged exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 960
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :goto_1f
    return-void
.end method

.method private blacklist unregisterRcsAvailabilityChanged()V
    .registers 4

    .line 967
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 968
    .local v0, "manager":Lcom/android/ims/RcsFeatureManager;
    if-nez v0, :cond_5

    return-void

    .line 970
    :cond_5
    :try_start_5
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/RcsFeatureManager;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    .line 973
    goto :goto_e

    .line 971
    :catch_d
    move-exception v1

    .line 974
    :goto_e
    return-void
.end method

.method private blacklist updateCapabilityTypeAndPublishStateIfNeeded()V
    .registers 6

    .line 998
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_3
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 1000
    .local v1, "originalMechanism":I
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->getCapabilityType(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 1003
    if-ne v1, v2, :cond_2b

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCapTypeAndPublishStateIfNeeded: The capability type is not changed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1006
    monitor-exit v0

    return-void

    .line 1010
    :cond_2b
    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v2

    .line 1012
    .local v2, "updatedPublishState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCapTypeAndPublishStateIfNeeded from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new publish state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 1018
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->handlePublishStateChangedMessage(ILjava/time/Instant;Ljava/lang/String;)V

    .line 1019
    .end local v1    # "originalMechanism":I
    .end local v2    # "updatedPublishState":I
    monitor-exit v0

    .line 1020
    return-void

    .line 1019
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_65

    throw v1
.end method


# virtual methods
.method public blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 262
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->addRegistrationOverrideCapabilities(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 263
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 265
    :cond_f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearRegistrationOverrideCapabilities()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->clearRegistrationOverrideCapabilities()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 281
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 283
    :cond_f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearResetDeviceStateTimer()V
    .registers 2

    .line 335
    const-string v0, "clearResetDeviceStateTimer"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->clearResetDeviceStateTimer()V

    .line 337
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 1261
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1262
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublishControllerImpl[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1265
    const-string v1, "isPresenceCapable="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isPresenceCapable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 1267
    const-string v1, "mCurrentPublishState="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1268
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1269
    const-string v1, "mLastPublishState="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1270
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1271
    const-string v1, " at time "

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateUpdatedTime:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1273
    const-string v1, "Last PIDF XML:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1275
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_66

    .line 1276
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_84

    .line 1277
    :cond_66
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v2, "null"

    if-eqz v1, :cond_7b

    .line 1278
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    if-nez v1, :cond_71

    goto :goto_72

    :cond_71
    move-object v2, v1

    :goto_72
    move-object v1, v2

    .line 1279
    .local v1, "pidfXml":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishUtils;->removeNumbersFromUris(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    .end local v1    # "pidfXml":Ljava/lang/String;
    goto :goto_84

    .line 1281
    :cond_7b
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    if-eqz v1, :cond_81

    const-string v2, "***"

    :cond_81
    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    :goto_84
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1285
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishProcessor:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;

    if-eqz v1, :cond_8f

    .line 1286
    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->dump(Ljava/io/PrintWriter;)V

    goto :goto_94

    .line 1288
    :cond_8f
    const-string v1, "mPublishProcessor is null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    :goto_94
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1292
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->dump(Ljava/io/PrintWriter;)V

    .line 1294
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1296
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 1297
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1298
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1301
    return-void
.end method

.method public blacklist getDeviceCapabilities(I)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4
    .param p1, "mechanism"    # I

    .line 375
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLastPidfXml()Ljava/lang/String;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPidfXml:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 4

    .line 289
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPublishControllerCallback()Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .registers 2

    .line 1234
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishControllerCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    return-object v0
.end method

.method public blacklist getPublishHandler()Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;
    .registers 2

    .line 1224
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    return-object v0
.end method

.method public blacklist getRcsCapabilitiesCallback()Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .registers 2

    .line 1229
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mRcsCapabilitiesCallback:Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    return-object v0
.end method

.method public blacklist getUcePublishState(Z)I
    .registers 5
    .param p1, "isSupportPublishingState"    # Z

    .line 243
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_a

    .line 245
    const/4 v1, 0x6

    monitor-exit v0

    return v1

    .line 247
    :cond_a
    if-eqz p1, :cond_10

    .line 250
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    monitor-exit v0

    return v1

    .line 252
    :cond_10
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_19

    .line 253
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    monitor-exit v0

    return v1

    .line 255
    :cond_19
    monitor-exit v0

    return v1

    .line 257
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method synthetic blacklist lambda$handlePublishStateChangedMessage$2$com-android-ims-rcs-uce-presence-publish-PublishControllerImpl(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 1075
    :try_start_0
    iget v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;->onPublishStateChanged(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1078
    goto :goto_1d

    .line 1076
    :catch_6
    move-exception v0

    .line 1077
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify publish state changed error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logw(Ljava/lang/String;)V

    .line 1079
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1d
    return-void
.end method

.method public blacklist onCarrierConfigChanged()V
    .registers 2

    .line 237
    const-string v0, "onCarrierConfigChanged"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendCarrierConfigChangedMsg()V

    .line 239
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 2

    .line 231
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendDestroyedMsg()V

    .line 233
    return-void
.end method

.method public blacklist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 368
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_5

    return-void

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishUpdatedMessage(ILjava/lang/String;ILjava/lang/String;)V

    .line 371
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 219
    const-string v0, "onRcsConnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRcsConnectedMsg(Lcom/android/ims/RcsFeatureManager;)V

    .line 221
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 2

    .line 225
    const-string v0, "onRcsDisconnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendRcsDisconnectedMsg()V

    .line 227
    return-void
.end method

.method public blacklist onUnpublish()V
    .registers 3

    .line 357
    const-string v0, "onUnpublish"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 358
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_a

    return-void

    .line 359
    :cond_a
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendUnpublishedMessage(I)V

    .line 360
    return-void
.end method

.method public blacklist registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 6
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 304
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 306
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPublishStateCallback: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 308
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 309
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_36

    .line 311
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendNotifyCurrentPublishStateMessage(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 312
    return-void

    .line 309
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 271
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->removeRegistrationOverrideCapabilities(Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 272
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 274
    :cond_f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist requestPublishCapabilitiesFromService(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive the publish request from service: service trigger type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logi(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mDeviceCapListener:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->removeRequestPublishMessage()V

    .line 455
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendPublishMessage(I)V

    .line 456
    return-void
.end method

.method public blacklist setCapabilityType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1212
    iput p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCapabilityType:I

    .line 1213
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->getInitialPublishState(I)I

    move-result v0

    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mCurrentPublishState:I

    .line 1214
    iput v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mLastPublishState:I

    .line 1215
    return-void
.end method

.method public blacklist setPublishStateCallback(Landroid/os/RemoteCallbackList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;",
            ">;)V"
        }
    .end annotation

    .line 1219
    .local p1, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;>;"
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 1220
    return-void
.end method

.method public blacklist setupResetDeviceStateTimer(J)V
    .registers 5
    .param p1, "resetAfterSec"    # J

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupResetDeviceStateTimer: resetAfterSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishHandler:Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl$PublishHandler;->sendResetDeviceStateTimerMessage(J)V

    .line 331
    return-void
.end method

.method public blacklist unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .registers 5
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 319
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mIsDestroyedFlag:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 321
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterPublishStateCallback:mPublishStateCallbacks: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->mPublishStateCallbacks:Landroid/os/RemoteCallbackList;

    .line 323
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishControllerImpl;->logd(Ljava/lang/String;)V

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
