.class public Lcom/android/ims/rcs/uce/UceController;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/UceController$RcsConnectedState;,
        Lcom/android/ims/rcs/uce/UceController$RequestType;,
        Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;,
        Lcom/android/ims/rcs/uce/UceController$ControllerFactory;,
        Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;,
        Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist RCS_STATE_CONNECTED:I = 0x2

.field private static final blacklist RCS_STATE_CONNECTING:I = 0x1

.field private static final blacklist RCS_STATE_DISCONNECTED:I = 0x0

.field public static final blacklist REQUEST_TYPE_CAPABILITY:I = 0x2

.field public static final blacklist REQUEST_TYPE_DESCRIPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_TYPE_PUBLISH:I = 0x1


# instance fields
.field private final blacklist mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

.field private blacklist mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

.field private blacklist mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

.field private blacklist mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

.field private blacklist mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

.field private volatile blacklist mIsDestroyedFlag:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private volatile blacklist mLooper:Landroid/os/Looper;

.field private blacklist mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

.field private blacklist mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

.field private volatile blacklist mRcsConnectedState:I

.field private blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private blacklist mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

.field private blacklist mRequestManagerFactory:Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

.field private final blacklist mSubId:I

.field private blacklist mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCachedCapabilityEvent(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeviceState(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/UceDeviceState;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEabController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/eab/EabController;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPublishController(Lcom/android/ims/rcs/uce/UceController;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misRcsConnecting(Lcom/android/ims/rcs/uce/UceController;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->isRcsConnecting()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/UceController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/ims/rcs/uce/UceController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestCapabilitiesInternal(Lcom/android/ims/rcs/uce/UceController;Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/UceController;->requestCapabilitiesInternal(Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UceController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/UceController;->LOG_TAG:Ljava/lang/String;

    .line 312
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ims/rcs/uce/UceController;->REQUEST_TYPE_DESCRIPTION:Ljava/util/Map;

    .line 314
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TYPE_PUBLISH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "REQUEST_TYPE_CAPABILITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManagerFactory:Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

    .line 185
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$1;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    .line 337
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

    .line 515
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$2;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 588
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$3;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$3;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 355
    iput p2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    .line 356
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    .line 357
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    .line 359
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initLooper()V

    .line 362
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initControllers()V

    .line 363
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initRequestManager()V

    .line 364
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initUceDeviceState()V

    .line 365
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceDeviceState;Lcom/android/ims/rcs/uce/UceController$ControllerFactory;Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "deviceState"    # Lcom/android/ims/rcs/uce/UceDeviceState;
    .param p4, "controllerFactory"    # Lcom/android/ims/rcs/uce/UceController$ControllerFactory;
    .param p5, "requestManagerFactory"    # Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManagerFactory:Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

    .line 185
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$1;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    .line 337
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

    .line 515
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$2;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$2;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 588
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$3;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/UceController$3;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    .line 370
    iput p2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    .line 371
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    .line 372
    iput-object p3, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    .line 373
    iput-object p4, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    .line 374
    iput-object p5, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManagerFactory:Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

    .line 375
    new-instance v0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    .line 377
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initLooper()V

    .line 378
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initControllers()V

    .line 379
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->initRequestManager()V

    .line 380
    return-void
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 909
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    return-object v0
.end method

.method private blacklist handleCachedCapabilityEvent()V
    .registers 6

    .line 485
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->getRequestPublishEvent()Ljava/util/Optional;

    move-result-object v0

    .line 486
    .local v0, "requestPublishEvent":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 489
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->getUnpublishEvent()Ljava/util/Optional;

    move-result-object v1

    .line 490
    .local v1, "unpublishEvent":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 492
    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->getPublishUpdatedEvent()Ljava/util/Optional;

    move-result-object v2

    .line 493
    .local v2, "publishUpdatedEvent":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/SomeArgs;>;"
    new-instance v3, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 501
    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->getRemoteCapabilityRequestEvent()Ljava/util/Optional;

    move-result-object v3

    .line 502
    .local v3, "remoteRequest":Ljava/util/Optional;, "Ljava/util/Optional<Lcom/android/ims/SomeArgs;>;"
    new-instance v4, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/ims/rcs/uce/UceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/ims/rcs/uce/UceController;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 508
    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceController;->mCachedCapabilityEvent:Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;

    invoke-virtual {v4}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->clear()V

    .line 509
    return-void
.end method

.method private blacklist initControllers()V
    .registers 6

    .line 390
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceController;->mLooper:Landroid/os/Looper;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/UceController$ControllerFactory;->createEabController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/eab/EabController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    .line 392
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceController;->mLooper:Landroid/os/Looper;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/UceController$ControllerFactory;->createPublishController(Landroid/content/Context;ILcom/android/ims/rcs/uce/UceController$UceControllerCallback;Landroid/os/Looper;)Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    .line 394
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/UceController$ControllerFactory;->createSubscribeController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    .line 395
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mControllerFactory:Lcom/android/ims/rcs/uce/UceController$ControllerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    invoke-interface {v0, v1, v2}, Lcom/android/ims/rcs/uce/UceController$ControllerFactory;->createOptionsController(Landroid/content/Context;I)Lcom/android/ims/rcs/uce/options/OptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    .line 396
    return-void
.end method

.method private blacklist initLooper()V
    .registers 3

    .line 384
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UceControllerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 386
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mLooper:Landroid/os/Looper;

    .line 387
    return-void
.end method

.method private blacklist initRequestManager()V
    .registers 6

    .line 399
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManagerFactory:Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceController;->mLooper:Landroid/os/Looper;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/ims/rcs/uce/UceController$RequestManagerFactory;->createRequestManager(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    .line 401
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->setSubscribeController(Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;)V

    .line 402
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->setOptionsController(Lcom/android/ims/rcs/uce/options/OptionsController;)V

    .line 403
    return-void
.end method

.method private blacklist initUceDeviceState()V
    .registers 5

    .line 406
    new-instance v0, Lcom/android/ims/rcs/uce/UceDeviceState;

    iget v1, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    iget-object v2, p0, Lcom/android/ims/rcs/uce/UceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/UceDeviceState;-><init>(ILandroid/content/Context;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    .line 407
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->checkSendResetDeviceStateTimer()V

    .line 408
    return-void
.end method

.method private blacklist isRcsConnected()Z
    .registers 3

    .line 872
    iget v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private blacklist isRcsConnecting()Z
    .registers 3

    .line 868
    iget v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method static synthetic blacklist lambda$new$0(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)Lcom/android/ims/rcs/uce/request/UceRequestManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 155
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;-><init>(Landroid/content/Context;ILandroid/os/Looper;Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 892
    sget-object v0, Lcom/android/ims/rcs/uce/UceController;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

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

    .line 894
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 897
    sget-object v0, Lcom/android/ims/rcs/uce/UceController;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

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

    .line 899
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 902
    sget-object v0, Lcom/android/ims/rcs/uce/UceController;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

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

    .line 904
    return-void
.end method

.method private blacklist requestCapabilitiesInternal(Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 11
    .param p2, "skipFromCache"    # Z
    .param p3, "c"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;Z",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_92

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_92

    if-nez p3, :cond_f

    goto/16 :goto_92

    .line 657
    :cond_f
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceController;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 658
    const-string v3, "requestCapabilities: controller is unavailable"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 659
    invoke-interface {p3, v2, v0, v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 660
    return-void

    .line 664
    :cond_1e
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 665
    .local v0, "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 666
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v1

    .line 667
    .local v1, "deviceState":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v3

    .line 668
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 669
    .local v2, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryAfterMillis()J

    move-result-wide v3

    .line 670
    .local v3, "retryAfterMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestCapabilities: The device is disallowed, deviceState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", retryAfterMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 672
    invoke-interface {p3, v2, v3, v4}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 673
    return-void

    .line 677
    .end local v1    # "deviceState":I
    .end local v2    # "errorCode":I
    .end local v3    # "retryAfterMillis":J
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCapabilities: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendCapabilityRequest(Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 679
    return-void

    .line 650
    .end local v0    # "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    :cond_92
    :goto_92
    const-string v3, "requestCapabilities: parameter is empty"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 651
    if-eqz p3, :cond_9c

    .line 652
    invoke-interface {p3, v2, v0, v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 654
    :cond_9c
    return-void
.end method


# virtual methods
.method public blacklist addRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 790
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->addRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist clearRegistrationOverrideCapabilities()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 810
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->clearRegistrationOverrideCapabilities()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 876
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 877
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UceController[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 880
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 882
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 883
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 884
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 886
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->dump(Ljava/io/PrintWriter;)V

    .line 888
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 889
    return-void
.end method

.method public blacklist getLastPidfXml()Ljava/lang/String;
    .registers 2

    .line 825
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->getLastPidfXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;
    .registers 2

    .line 817
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->getLatestRcsContactUceCapability()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 853
    iget v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubId:I

    return v0
.end method

.method public blacklist getUcePublishState(Z)I
    .registers 3
    .param p1, "isSupportPublishingState"    # Z

    .line 780
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->getUcePublishState(Z)I

    move-result v0

    return v0
.end method

.method public blacklist isUnavailable()Z
    .registers 2

    .line 861
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->isRcsConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/UceController;->mIsDestroyedFlag:Z

    if-eqz v0, :cond_b

    goto :goto_d

    .line 864
    :cond_b
    const/4 v0, 0x0

    return v0

    .line 862
    :cond_d
    :goto_d
    const/4 v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$handleCachedCapabilityEvent$1$com-android-ims-rcs-uce-UceController(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "triggerType"    # Ljava/lang/Integer;

    .line 487
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->onRequestPublishCapabilitiesFromService(I)V

    return-void
.end method

.method synthetic blacklist lambda$handleCachedCapabilityEvent$2$com-android-ims-rcs-uce-UceController(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "unpublish"    # Ljava/lang/Boolean;

    .line 490
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceController;->onUnpublish()V

    return-void
.end method

.method synthetic blacklist lambda$handleCachedCapabilityEvent$3$com-android-ims-rcs-uce-UceController(Lcom/android/ims/SomeArgs;)V
    .registers 6
    .param p1, "args"    # Lcom/android/ims/SomeArgs;

    .line 494
    iget-object v0, p1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 495
    .local v0, "reasonCode":I
    iget-object v1, p1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 496
    .local v1, "reasonPhrase":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 497
    .local v2, "reasonHeaderCause":I
    iget-object v3, p1, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 498
    .local v3, "reasonHeaderText":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/ims/rcs/uce/UceController;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    .line 499
    return-void
.end method

.method synthetic blacklist lambda$handleCachedCapabilityEvent$4$com-android-ims-rcs-uce-UceController(Lcom/android/ims/SomeArgs;)V
    .registers 5
    .param p1, "args"    # Lcom/android/ims/SomeArgs;

    .line 503
    iget-object v0, p1, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 504
    .local v0, "contactUri":Landroid/net/Uri;
    iget-object v1, p1, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 505
    .local v1, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/aidl/IOptionsRequestCallback;

    .line 506
    .local v2, "callback":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/ims/rcs/uce/UceController;->retrieveOptionsCapabilitiesForRemote(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 507
    return-void
.end method

.method public blacklist onCarrierConfigChanged()V
    .registers 2

    .line 478
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/eab/EabController;->onCarrierConfigChanged()V

    .line 479
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onCarrierConfigChanged()V

    .line 480
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;->onCarrierConfigChanged()V

    .line 481
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/options/OptionsController;->onCarrierConfigChanged()V

    .line 482
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 456
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/UceController;->mIsDestroyedFlag:Z

    .line 459
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    if-eqz v0, :cond_14

    .line 460
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/RcsFeatureManager;->removeCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 464
    :cond_14
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->onDestroy()V

    .line 465
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/eab/EabController;->onDestroy()V

    .line 466
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onDestroy()V

    .line 467
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;->onDestroy()V

    .line 468
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/options/OptionsController;->onDestroy()V

    .line 471
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 472
    return-void
.end method

.method public blacklist onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    .line 746
    const-string v0, "onPublishUpdated"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V

    .line 749
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 3
    .param p1, "manager"    # Lcom/android/ims/RcsFeatureManager;

    .line 414
    const-string v0, "onRcsConnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 416
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    .line 419
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 420
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-virtual {p1, v0}, Lcom/android/ims/RcsFeatureManager;->addCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    .line 423
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/eab/EabController;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 424
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 425
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 426
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/options/OptionsController;->onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V

    .line 430
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    .line 431
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/UceController;->handleCachedCapabilityEvent()V

    .line 432
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 3

    .line 438
    const-string v0, "onRcsDisconnected"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 439
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsConnectedState:I

    .line 441
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    if-eqz v0, :cond_14

    .line 442
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mCapabilityEventListener:Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/ims/RcsFeatureManager;->removeCapabilityEventCallback(Lcom/android/ims/RcsFeatureManager$CapabilityExchangeEventCallback;)V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 446
    :cond_14
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mEabController:Lcom/android/ims/rcs/uce/eab/EabController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/eab/EabController;->onRcsDisconnected()V

    .line 447
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onRcsDisconnected()V

    .line 448
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mSubscribeController:Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/subscribe/SubscribeController;->onRcsDisconnected()V

    .line 449
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mOptionsController:Lcom/android/ims/rcs/uce/options/OptionsController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/options/OptionsController;->onRcsDisconnected()V

    .line 450
    return-void
.end method

.method public blacklist onRequestPublishCapabilitiesFromService(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPublishCapabilitiesFromService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetDeviceState()V

    .line 728
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->requestPublishCapabilitiesFromService(I)V

    .line 729
    return-void
.end method

.method public blacklist onUnpublish()V
    .registers 2

    .line 736
    const-string v0, "onUnpublish"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->onUnpublish()V

    .line 738
    return-void
.end method

.method public blacklist registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V
    .registers 4
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    .param p2, "supportPublishingState"    # Z

    .line 766
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->registerPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;Z)V

    .line 767
    return-void
.end method

.method public blacklist removeRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .line 800
    .local p1, "featureTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->removeRegistrationOverrideCapabilities(Ljava/util/Set;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeRequestDisallowedStatus()V
    .registers 2

    .line 834
    const-string v0, "removeRequestDisallowedStatus"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    .line 835
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->resetDeviceState()V

    .line 836
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->resetThrottlingList()V

    .line 837
    return-void
.end method

.method public blacklist requestAvailability(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_76

    if-nez p2, :cond_8

    goto :goto_76

    .line 696
    :cond_8
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/UceController;->isUnavailable()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 697
    const-string v3, "requestAvailability: controller is unavailable"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 698
    invoke-interface {p2, v2, v0, v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 699
    return-void

    .line 703
    :cond_17
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mDeviceState:Lcom/android/ims/rcs/uce/UceDeviceState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState;->getCurrentState()Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;

    move-result-object v0

    .line 704
    .local v0, "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->isRequestForbidden()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 705
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getDeviceState()I

    move-result v1

    .line 706
    .local v1, "deviceState":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getErrorCode()Ljava/util/Optional;

    move-result-object v3

    .line 707
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 708
    .local v2, "errorCode":I
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;->getRequestRetryAfterMillis()J

    move-result-wide v3

    .line 709
    .local v3, "retryAfterMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestAvailability: The device is disallowed, deviceState= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", errorCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", retryAfterMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 711
    invoke-interface {p2, v2, v3, v4}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 712
    return-void

    .line 716
    .end local v1    # "deviceState":I
    .end local v2    # "errorCode":I
    .end local v3    # "retryAfterMillis":J
    :cond_6b
    const-string v1, "requestAvailability"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->sendAvailabilityRequest(Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 718
    return-void

    .line 689
    .end local v0    # "deviceStateResult":Lcom/android/ims/rcs/uce/UceDeviceState$DeviceStateResult;
    :cond_76
    :goto_76
    const-string v3, "requestAvailability: parameter is empty"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/UceController;->logw(Ljava/lang/String;)V

    .line 690
    if-eqz p2, :cond_80

    .line 691
    invoke-interface {p2, v2, v0, v1}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback;->onError(IJ)V

    .line 693
    :cond_80
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V
    .registers 4
    .param p2, "c"    # Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/IRcsUceControllerCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 644
    .local p1, "uriList":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/ims/rcs/uce/UceController;->requestCapabilitiesInternal(Ljava/util/List;ZLandroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 645
    return-void
.end method

.method public blacklist retrieveOptionsCapabilitiesForRemote(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 5
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "c"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 757
    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "retrieveOptionsCapabilitiesForRemote"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logi(Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mRequestManager:Lcom/android/ims/rcs/uce/request/UceRequestManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/rcs/uce/request/UceRequestManager;->retrieveCapabilitiesForRemote(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V

    .line 759
    return-void
.end method

.method public blacklist setCapabilitiesRequestTimeout(J)V
    .registers 5
    .param p1, "timeoutAfterMs"    # J

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapabilitiesRequestTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/UceController;->logd(Ljava/lang/String;)V

    .line 846
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->setCapRequestTimeoutAfterMillis(J)V

    .line 847
    return-void
.end method

.method public blacklist setUceControllerCallback(Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 582
    iput-object p1, p0, Lcom/android/ims/rcs/uce/UceController;->mCtrlCallback:Lcom/android/ims/rcs/uce/UceController$UceControllerCallback;

    .line 583
    return-void
.end method

.method public blacklist unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V
    .registers 3
    .param p1, "c"    # Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    .line 773
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController;->mPublishController:Lcom/android/ims/rcs/uce/presence/publish/PublishController;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController;->unregisterPublishStateCallback(Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 774
    return-void
.end method
