.class public Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;
.super Ljava/lang/Object;
.source "DeviceCapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;,
        Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist REGISTER_IMS_CHANGED_DELAY:J = 0x3a98L


# instance fields
.field private final blacklist mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private final blacklist mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

.field private final blacklist mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

.field private blacklist mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

.field private blacklist mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

.field private blacklist mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

.field private volatile blacklist mInitialized:Z

.field private volatile blacklist mIsDestroyed:Z

.field private volatile blacklist mIsImsCallbackRegistered:Z

.field private volatile blacklist mIsRcsConnected:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mLock:Ljava/lang/Object;

.field public final blacklist mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

.field public final blacklist mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private blacklist mMobileDataObserver:Landroid/database/ContentObserver;

.field public final blacklist mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

.field private blacklist mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

.field private blacklist mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

.field public final blacklist mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field public final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSimInfoContentObserver:Landroid/database/ContentObserver;

.field private final blacklist mSubId:I

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsMmTelManager(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Landroid/telephony/ims/ImsMmTelManager;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsDestroyed(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImsCallbackRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubId(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)I
    .registers 1

    iget p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUceStatsWriter(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)Lcom/android/ims/rcs/uce/UceStatsWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleAirplaneModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleAirplaneModeChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelRegistered(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsMmtelUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsMmtelUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsRegistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleImsRcsUnregistered(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleImsRcsUnregistered()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmTelSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMmtelCapabilitiesStatusChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMobileDataChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMobileDataChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleProvisioningChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleProvisioningChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePublishThrottleChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handlePublishThrottleChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRcsSubscriberAssociatedUriChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;[Landroid/net/Uri;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTtyPreferredModeChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleTtyPreferredModeChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleVtSettingChanged(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleVtSettingChanged(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogw(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterImsProvisionCallback(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DeviceCapListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "info"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "callback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p5, "uceStatsWriter"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    .line 195
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 198
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 201
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$$ExternalSyntheticLambda2;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 205
    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 207
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    .line 388
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 470
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$4;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 507
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$5;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    .line 538
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$6;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    .line 553
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;

    invoke-direct {v0, p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$7;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    .line 211
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    .line 212
    const-string v0, "create"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 214
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    .line 215
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 216
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 218
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 220
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceCapListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    .line 221
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    .line 223
    new-instance v0, Lcom/android/internal/telephony/util/HandlerExecutor;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/util/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    .line 224
    return-void
.end method

.method private blacklist getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 6
    .param p1, "subId"    # I

    .line 450
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 452
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 453
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_13
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsMmTelManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 455
    return-object v0
.end method

.method private blacklist getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 6
    .param p1, "subId"    # I

    .line 461
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/ims/ImsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 463
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    if-nez v1, :cond_e

    goto :goto_12

    :cond_e
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_12} :catch_13

    :goto_12
    return-object v0

    .line 464
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    :catch_13
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImsRcsManager error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 466
    return-object v0
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 763
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    return-object v0
.end method

.method private blacklist getMobileDataObserver()Landroid/database/ContentObserver;
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_19

    .line 411
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$2;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 420
    :cond_19
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMobileDataObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 421
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist getSimInfoContentObserver()Landroid/database/ContentObserver;
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_19

    .line 427
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$3;-><init>(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    .line 444
    :cond_19
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSimInfoContentObserver:Landroid/database/ContentObserver;

    monitor-exit v0

    return-object v1

    .line 445
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private blacklist handleAirplaneModeChanged(Z)V
    .registers 5
    .param p1, "state"    # Z

    .line 582
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateAirplaneMode(Z)Z

    move-result v0

    .line 583
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Airplane mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 587
    if-eqz v0, :cond_30

    if-nez p1, :cond_30

    .line 589
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 592
    :cond_30
    return-void
.end method

.method private blacklist handleImsMmtelRegistered(I)V
    .registers 4
    .param p1, "imsTransportType"    # I

    .line 616
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelRegistered(I)V

    .line 617
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 619
    return-void
.end method

.method private blacklist handleImsMmtelUnregistered()V
    .registers 3

    .line 625
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsMmtelUnregistered()V

    .line 627
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 630
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_17

    .line 631
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 633
    :cond_17
    return-void
.end method

.method private blacklist handleImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V
    .registers 4
    .param p1, "attr"    # Landroid/telephony/ims/ImsRegistrationAttributes;

    .line 666
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 667
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 669
    :cond_f
    return-void
.end method

.method private blacklist handleImsRcsUnregistered()V
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateImsRcsUnregistered()Z

    move-result v0

    .line 677
    .local v0, "hasChanged":Z
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V

    .line 679
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_18

    .line 680
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendImsUnregisteredMessage()V

    .line 682
    :cond_18
    return-void
.end method

.method private blacklist handleMmTelSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .registers 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "triggerPublish"    # Z

    .line 639
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 640
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmTelAssociatedUri([Landroid/net/Uri;)V

    .line 641
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getMmtelAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 643
    .local v1, "currentUri":Landroid/net/Uri;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 644
    .local v2, "hasChanged":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMmTelSubscriberAssociatedUriChanged: triggerPublish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 647
    if-eqz p2, :cond_42

    if-eqz v2, :cond_42

    .line 648
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 651
    :cond_42
    return-void
.end method

.method private blacklist handleMmtelCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 5
    .param p1, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 654
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMmtelCapabilitiesChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Z

    move-result v0

    .line 655
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMTel capabilities status changed: isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 656
    if-eqz v0, :cond_25

    .line 657
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 660
    :cond_25
    return-void
.end method

.method private blacklist handleMobileDataChanged(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .line 595
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateMobileData(Z)Z

    move-result v0

    .line 596
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile data changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 597
    if-eqz v0, :cond_2e

    .line 598
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 601
    :cond_2e
    return-void
.end method

.method private blacklist handleProvisioningChanged()V
    .registers 3

    .line 705
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 707
    return-void
.end method

.method private blacklist handlePublishThrottleChanged(I)V
    .registers 3
    .param p1, "value"    # I

    .line 713
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updatePublishThrottle(I)V

    .line 714
    return-void
.end method

.method private blacklist handleRcsSubscriberAssociatedUriChanged([Landroid/net/Uri;Z)V
    .registers 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "triggerPublish"    # Z

    .line 688
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v0

    .line 689
    .local v0, "originalUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateRcsAssociatedUri([Landroid/net/Uri;)V

    .line 690
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getRcsAssociatedUri()Landroid/net/Uri;

    move-result-object v1

    .line 692
    .local v1, "currentUri":Landroid/net/Uri;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 693
    .local v2, "hasChanged":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRcsSubscriberAssociatedUriChanged: triggerPublish="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasChanged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 696
    if-eqz p2, :cond_42

    if-eqz v2, :cond_42

    .line 697
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 699
    :cond_42
    return-void
.end method

.method private blacklist handleTtyPreferredModeChanged(I)V
    .registers 5
    .param p1, "preferredMode"    # I

    .line 573
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateTtyPreferredMode(I)Z

    move-result v0

    .line 574
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TTY preferred mode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 575
    if-eqz v0, :cond_2e

    .line 576
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 579
    :cond_2e
    return-void
.end method

.method private blacklist handleVtSettingChanged(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .line 604
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->updateVtSetting(Z)Z

    move-result v0

    .line 605
    .local v0, "isChanged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VT setting changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 606
    if-eqz v0, :cond_2e

    .line 607
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendTriggeringPublishMessage(I)V

    .line 610
    :cond_2e
    return-void
.end method

.method static synthetic blacklist lambda$new$2(I)Landroid/telephony/ims/ProvisioningManager;
    .registers 2
    .param p0, "subId"    # I

    .line 202
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 746
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

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

    .line 748
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 751
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

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

    .line 753
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 756
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

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

    .line 758
    return-void
.end method

.method private blacklist registerImsProvisionCallback()V
    .registers 5

    .line 309
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    if-eqz v0, :cond_a

    .line 310
    const-string v0, "registerImsProvisionCallback: already registered."

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 311
    return-void

    .line 314
    :cond_a
    const-string v0, "registerImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 317
    :try_start_f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_23

    .line 318
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 320
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsMmTelManager;->registerMmTelCapabilityCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V

    .line 325
    :cond_23
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_2e

    .line 326
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsRcsManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    .line 331
    :cond_2e
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerExecutor:Lcom/android/internal/telephony/util/HandlerExecutor;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ProvisioningManager;->registerProvisioningChangedCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/ProvisioningManager$Callback;)V

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z
    :try_end_3a
    .catch Landroid/telephony/ims/ImsException; {:try_start_f .. :try_end_3a} :catch_3b

    .line 345
    goto :goto_60

    .line 336
    :catch_3b
    move-exception v0

    .line 337
    .local v0, "e":Landroid/telephony/ims/ImsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerImsProvisionCallback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 342
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    if-eqz v1, :cond_60

    .line 343
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v1, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 346
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_60
    :goto_60
    return-void
.end method

.method private blacklist registerReceivers()V
    .registers 6

    .line 280
    const-string v0, "registerReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 281
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 282
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 287
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3b

    .line 289
    nop

    .line 290
    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 291
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v3

    .line 289
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    sget-object v2, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 294
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v3

    .line 293
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    :cond_3b
    return-void
.end method

.method private blacklist unregisterImsProvisionCallback()V
    .registers 4

    .line 349
    const-string v0, "unregisterImsProvisionCallback"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeRegisterImsContentChangedMessage()V

    .line 355
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    if-eqz v0, :cond_52

    .line 357
    :try_start_e
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_13} :catch_14

    .line 360
    goto :goto_2f

    .line 358
    :catch_14
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel registration error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 362
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_2f
    :try_start_2f
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mMmtelCapabilityCallback:Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsMmTelManager;->unregisterMmTelCapabilityCallback(Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;)V
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_36} :catch_37

    .line 365
    goto :goto_52

    .line 363
    :catch_37
    move-exception v0

    .line 364
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister MMTel capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 369
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    if-eqz v0, :cond_77

    .line 371
    :try_start_56
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mRcsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRcsManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_5b} :catch_5c

    .line 374
    goto :goto_77

    .line 372
    :catch_5c
    move-exception v0

    .line 373
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister rcs capability error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 379
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_77
    :goto_77
    :try_start_77
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisionChangedCallback:Landroid/telephony/ims/ProvisioningManager$Callback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ProvisioningManager;->unregisterProvisioningChangedCallback(Landroid/telephony/ims/ProvisioningManager$Callback;)V
    :try_end_7e
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7e} :catch_7f

    .line 382
    goto :goto_9a

    .line 380
    :catch_7f
    move-exception v0

    .line 381
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister provisioning callback error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 385
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_9a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 386
    return-void
.end method

.method private blacklist unregisterReceivers()V
    .registers 3

    .line 299
    const-string v0, "unregisterReceivers"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logd(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 302
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_22

    .line 303
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getMobileDataObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 304
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getSimInfoContentObserver()Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 768
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 769
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceCapListener[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 772
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mCapabilityInfo:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->dump(Ljava/io/PrintWriter;)V

    .line 774
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 776
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 777
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 778
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 780
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 781
    return-void
.end method

.method public blacklist getHandler()Landroid/os/Handler;
    .registers 2

    .line 722
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    return-object v0
.end method

.method public blacklist initialize()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    if-eqz v1, :cond_e

    .line 232
    const-string v1, "initialize: This instance is already destroyed"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logw(Ljava/lang/String;)V

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_e
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-eqz v1, :cond_14

    monitor-exit v0

    return-void

    .line 237
    :cond_14
    const-string v1, "initialize"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManager:Landroid/telephony/ims/ImsMmTelManager;

    .line 239
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManager:Landroid/telephony/ims/ImsRcsManager;

    .line 240
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mSubId:I

    invoke-interface {v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;->getProvisioningManager(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningManager:Landroid/telephony/ims/ProvisioningManager;

    .line 241
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerReceivers()V

    .line 242
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->registerImsProvisionCallback()V

    .line 244
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method synthetic blacklist lambda$new$0$com-android-ims-rcs-uce-presence-publish-DeviceCapabilityListener(I)Landroid/telephony/ims/ImsMmTelManager;
    .registers 3
    .param p1, "subId"    # I

    .line 195
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$new$1$com-android-ims-rcs-uce-presence-publish-DeviceCapabilityListener(I)Landroid/telephony/ims/ImsRcsManager;
    .registers 3
    .param p1, "subId"    # I

    .line 198
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 264
    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsDestroyed:Z

    .line 266
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_b
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    if-nez v1, :cond_11

    monitor-exit v0

    return-void

    .line 268
    :cond_11
    const-string v1, "turnOffListener"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->logi(Ljava/lang/String;)V

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mInitialized:Z

    .line 270
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterReceivers()V

    .line 271
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->unregisterImsProvisionCallback()V

    .line 272
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 273
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v1
.end method

.method public blacklist onRcsConnected()V
    .registers 4

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 251
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendRegisterImsContentChangedMessage(J)V

    .line 252
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 2

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsRcsConnected:Z

    .line 257
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->sendUnregisterImsCallbackMessage()V

    .line 258
    return-void
.end method

.method public blacklist removeRequestPublishMessage()V
    .registers 2

    .line 717
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mHandler:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$DeviceCapabilityHandler;->removeRequestPublishMessage()V

    .line 718
    return-void
.end method

.method public blacklist setImsCallbackRegistered(Z)V
    .registers 2
    .param p1, "registered"    # Z

    .line 742
    iput-boolean p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mIsImsCallbackRegistered:Z

    .line 743
    return-void
.end method

.method public blacklist setImsMmTelManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 727
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsMmTelManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsMmTelManagerFactory;

    .line 728
    return-void
.end method

.method public blacklist setImsRcsManagerFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 732
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mImsRcsManagerFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ImsRcsManagerFactory;

    .line 733
    return-void
.end method

.method public blacklist setProvisioningMgrFactory(Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;)V
    .registers 2
    .param p1, "factory"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 737
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener;->mProvisioningMgrFactory:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityListener$ProvisioningManagerFactory;

    .line 738
    return-void
.end method
