.class public Lcom/android/service/ims/presence/PresencePublication;
.super Lcom/android/service/ims/presence/PresenceBase;
.source "PresencePublication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/service/ims/presence/PresencePublication$PublishRequest;,
        Lcom/android/service/ims/presence/PresencePublication$PublishType;,
        Lcom/android/service/ims/presence/PresencePublication$StackPublishTriggerType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_RETRY_PUBLISH_ALARM:Ljava/lang/String; = "com.android.service.ims.presence.retry.publish"

.field private static final blacklist DOMAIN_SEPARATOR:Ljava/lang/String; = "@"

.field private static final blacklist MESSAGE_DEFAULT_SUBSCRIPTION_CHANGED:I = 0x2

.field private static final blacklist MESSAGE_RCS_PUBLISH_REQUEST:I = 0x1

.field private static final blacklist SIP_SCHEME:Ljava/lang/String; = "sip"

.field private static final blacklist TEL_SCHEME:Ljava/lang/String; = "tel"

.field private static final blacklist TIMEOUT_CHECK_SUBSCRIPTION_READY_MS:I = 0x1388

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_ETAG_EXPIRED:I = 0x0

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_2G:I = 0x6

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_3G:I = 0x5

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_EHRPD:I = 0x3

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_HSPAPLUS:I = 0x4

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_IWLAN:I = 0x8

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED:I = 0x1

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED:I = 0x2

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_MOVE_TO_WLAN:I = 0x7

.field public static final blacklist UCE_PRES_PUBLISH_TRIGGER_UNKNOWN:I = 0x9

.field private static blacklist sPresencePublication:Lcom/android/service/ims/presence/PresencePublication;


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mAssociatedSubscription:I

.field blacklist mCancelRetry:Z

.field private final blacklist mConfigRcsProvisionErrorOnPublishResponse:[Ljava/lang/String;

.field private final blacklist mConfigVolteProvisionErrorOnPublishResponse:[Ljava/lang/String;

.field private blacklist mDataEnabled:Z

.field private blacklist mDonotRetryUntilPowerCycle:Z

.field private blacklist mGotTriggerFromStack:Z

.field private blacklist mHasCachedTrigger:Z

.field private blacklist mImsRegistered:Z

.field blacklist mIsViWifiAvailable:Z

.field blacklist mIsVoWifiAvailable:Z

.field blacklist mIsVolteAvailable:Z

.field blacklist mIsVtAvailable:Z

.field blacklist mMovedToIWLAN:Z

.field blacklist mMovedToLTE:Z

.field private blacklist mMsgHandler:Landroid/os/Handler;

.field volatile blacklist mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

.field blacklist mPendingRetry:Z

.field private blacklist mPreferredTtyMode:I

.field private blacklist mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

.field volatile blacklist mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

.field volatile blacklist mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

.field private blacklist mRetryAlarmIntent:Landroid/app/PendingIntent;

.field private blacklist mSimLoaded:Z

.field private blacklist mSubscriber:Lcom/android/service/ims/presence/PresenceSubscriber;

.field private final blacklist mSyncObj:Ljava/lang/Object;

.field blacklist mVoPSEnabled:Z

.field private blacklist mVtEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;
    .registers 1

    iget-object p0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSyncObj(Lcom/android/service/ims/presence/PresencePublication;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoPublish(Lcom/android/service/ims/presence/PresencePublication;Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/service/ims/presence/PresencePublication;->doPublish(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misIPVideoSupported(Lcom/android/service/ims/presence/PresencePublication;ZZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/service/ims/presence/PresencePublication;->isIPVideoSupported(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misIPVoiceSupported(Lcom/android/service/ims/presence/PresencePublication;ZZ)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/service/ims/presence/PresencePublication;->isIPVoiceSupported(ZZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrequestPublishIfSubscriptionReady(Lcom/android/service/ims/presence/PresencePublication;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->requestPublishIfSubscriptionReady()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 133
    const/4 v0, 0x0

    sput-object v0, Lcom/android/service/ims/presence/PresencePublication;->sPresencePublication:Lcom/android/service/ims/presence/PresencePublication;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/service/ims/presence/PresencePublisher;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .param p1, "presencePublisher"    # Lcom/android/service/ims/presence/PresencePublisher;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configVolteProvisionErrorOnPublishResponse"    # [Ljava/lang/String;
    .param p4, "configRcsProvisionErrorOnPublishResponse"    # [Ljava/lang/String;

    .line 200
    invoke-direct {p0, p2}, Lcom/android/service/ims/presence/PresenceBase;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    .line 75
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    .line 85
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 86
    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 87
    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 98
    new-instance v3, Lcom/android/service/ims/presence/PresencePublication$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/service/ims/presence/PresencePublication$1;-><init>(Lcom/android/service/ims/presence/PresencePublication;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    .line 132
    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mSubscriber:Lcom/android/service/ims/presence/PresenceSubscriber;

    .line 135
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mGotTriggerFromStack:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSimLoaded:Z

    .line 139
    iput v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    .line 141
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    .line 146
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 1013
    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mRetryAlarmIntent:Landroid/app/PendingIntent;

    .line 1016
    iput-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1017
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mCancelRetry:Z

    .line 1018
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    .line 201
    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v4, "PresencePublication constrcuct"

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 202
    monitor-enter v0

    .line 203
    :try_start_5f
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    .line 204
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_cd

    .line 205
    iput-object p3, p0, Lcom/android/service/ims/presence/PresencePublication;->mConfigVolteProvisionErrorOnPublishResponse:[Ljava/lang/String;

    .line 206
    iput-object p4, p0, Lcom/android/service/ims/presence/PresencePublication;->mConfigRcsProvisionErrorOnPublishResponse:[Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVtEnabledByUser(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    .line 210
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_data"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7d

    move v1, v2

    :cond_7d
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    .line 212
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The current mobile data is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    if-eqz v2, :cond_93

    const-string v2, "enabled"

    goto :goto_95

    :cond_93
    const-string v2, "disabled"

    :goto_95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 215
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v1

    iput v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    .line 216
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The current TTY mode is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 218
    sput-object p0, Lcom/android/service/ims/presence/PresencePublication;->sPresencePublication:Lcom/android/service/ims/presence/PresencePublication;

    .line 219
    return-void

    .line 204
    .end local v0    # "tm":Landroid/telecom/TelecomManager;
    :catchall_cd
    move-exception v1

    :try_start_ce
    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v1
.end method

.method private blacklist doPublish(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V
    .registers 16
    .param p1, "publishRequest"    # Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 820
    if-nez p1, :cond_a

    .line 821
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "publishRequest == null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 822
    return-void

    .line 825
    :cond_a
    const/4 v0, 0x0

    .line 826
    .local v0, "presencePublisher":Lcom/android/service/ims/presence/PresencePublisher;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 827
    :try_start_e
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    move-object v0, v2

    .line 828
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1ca

    .line 830
    if-nez v0, :cond_1c

    .line 831
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "mPresencePublisher == null"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 832
    return-void

    .line 835
    :cond_1c
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    if-nez v1, :cond_28

    .line 836
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "IMS wasn\'t registered"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 837
    return-void

    .line 841
    :cond_28
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 842
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    .line 843
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mRetryAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 847
    :cond_36
    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 848
    :try_start_39
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->refreshPublishContent()V

    .line 849
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_1c7

    .line 851
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 852
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getForceToNetwork()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_a3

    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isPublishedOrPublishing()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 853
    invoke-virtual {p1, v1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->hasSamePublishContent(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    if-nez v1, :cond_a3

    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 855
    invoke-virtual {p1, v1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->hasSamePublishContent(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 856
    :cond_76
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->getPublishState()I

    move-result v1

    if-eq v1, v3, :cond_a3

    .line 857
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t need publish since the capability didn\'t change publishRequest "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getPublishState()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 858
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->getPublishState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 859
    return-void

    .line 863
    :cond_a3
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isPublishedOrPublishing()Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 864
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    if-eqz v1, :cond_b5

    .line 865
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Pending a retry"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 866
    return-void

    .line 869
    :cond_b5
    iget v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v1}, Lcom/android/service/ims/RcsSettingUtils;->getPublishThrottle(I)I

    move-result v1

    int-to-long v4, v1

    .line 870
    .local v4, "publishThreshold":J
    move-wide v6, v4

    .line 871
    .local v6, "passed":J
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    if-eqz v1, :cond_ce

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getTimestamp()J

    move-result-wide v10

    sub-long v6, v8, v10

    goto :goto_de

    .line 873
    :cond_ce
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    if-eqz v1, :cond_de

    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getTimestamp()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 876
    :cond_de
    :goto_de
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-ltz v1, :cond_e6

    move-wide v10, v6

    goto :goto_e7

    :cond_e6
    move-wide v10, v4

    :goto_e7
    move-wide v6, v10

    .line 878
    sub-long v10, v4, v6

    .line 879
    .local v10, "left":J
    const-wide/32 v12, 0x1d4c0

    cmp-long v1, v10, v12

    if-lez v1, :cond_f2

    goto :goto_f3

    :cond_f2
    move-wide v12, v10

    :goto_f3
    move-wide v10, v12

    .line 880
    cmp-long v1, v10, v8

    if-lez v1, :cond_fc

    .line 884
    invoke-direct {p0, v10, v11}, Lcom/android/service/ims/presence/PresencePublication;->scheduleRetryPublish(J)V

    .line 885
    return-void

    .line 891
    .end local v4    # "publishThreshold":J
    .end local v6    # "passed":J
    .end local v10    # "left":J
    :cond_fc
    iget v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v1}, Lcom/android/service/ims/RcsSettingUtils;->isAdvancedCallingEnabledByUser(I)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 892
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->getPublishState()I

    move-result v1

    if-eq v1, v3, :cond_10e

    .line 895
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->reset()V

    .line 896
    return-void

    .line 899
    :cond_10e
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 901
    .local v1, "teleMgr":Landroid/telephony/TelephonyManager;
    iget v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 902
    if-nez v1, :cond_128

    .line 903
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "TelephonyManager not available."

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 904
    return-void

    .line 906
    :cond_128
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->getUriForPublication()Landroid/net/Uri;

    move-result-object v4

    .line 907
    .local v4, "myUri":Landroid/net/Uri;
    if-nez v4, :cond_136

    .line 908
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "doPublish, myUri is null"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 909
    return-void

    .line 912
    :cond_136
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getVolteCapable()Z

    move-result v5

    .line 913
    .local v5, "isVolteCapble":Z
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getVtCapable()Z

    move-result v6

    .line 914
    .local v6, "isVtCapable":Z
    nop

    .line 915
    invoke-direct {p0, v4, v5, v6}, Lcom/android/service/ims/presence/PresencePublication;->getRcsContactUceCapability(Landroid/net/Uri;ZZ)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v7

    .line 917
    .local v7, "presenceInfo":Landroid/telephony/ims/RcsContactUceCapability;
    iget-object v8, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 918
    :try_start_146
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 919
    iget-object v9, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->setTimestamp(J)V

    .line 920
    monitor-exit v8
    :try_end_152
    .catchall {:try_start_146 .. :try_end_152} :catchall_1c4

    .line 922
    invoke-direct {p0, v4}, Lcom/android/service/ims/presence/PresencePublication;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 923
    .local v8, "myNumber":Ljava/lang/String;
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/service/ims/TaskManager;->addPublishTask(Ljava/lang/String;)I

    move-result v9

    .line 924
    .local v9, "taskId":I
    iget-object v10, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doPublish, uri="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", myNumber="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", taskId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v7, v10, v9}, Lcom/android/service/ims/presence/PresencePublisher;->requestPublication(Landroid/telephony/ims/RcsContactUceCapability;Ljava/lang/String;I)I

    move-result v10

    .line 926
    .local v10, "ret":I
    if-eqz v10, :cond_1bd

    .line 927
    iget-object v11, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doPublish, task="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " failed with code="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 928
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/service/ims/TaskManager;->removeTask(I)V

    .line 931
    :cond_1bd
    const/4 v11, -0x3

    if-ne v10, v11, :cond_1c1

    move v2, v3

    :cond_1c1
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 932
    return-void

    .line 920
    .end local v8    # "myNumber":Ljava/lang/String;
    .end local v9    # "taskId":I
    .end local v10    # "ret":I
    :catchall_1c4
    move-exception v2

    :try_start_1c5
    monitor-exit v8
    :try_end_1c6
    .catchall {:try_start_1c5 .. :try_end_1c6} :catchall_1c4

    throw v2

    .line 849
    .end local v1    # "teleMgr":Landroid/telephony/TelephonyManager;
    .end local v4    # "myUri":Landroid/net/Uri;
    .end local v5    # "isVolteCapble":Z
    .end local v6    # "isVtCapable":Z
    .end local v7    # "presenceInfo":Landroid/telephony/ims/RcsContactUceCapability;
    :catchall_1c7
    move-exception v1

    :try_start_1c8
    monitor-exit v3
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    throw v1

    .line 828
    :catchall_1ca
    move-exception v2

    :try_start_1cb
    monitor-exit v1
    :try_end_1cc
    .catchall {:try_start_1cb .. :try_end_1cc} :catchall_1ca

    throw v2
.end method

.method private blacklist getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 956
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 957
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 958
    .local v1, "number":Ljava/lang/String;
    const-string v2, "[@;:]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 960
    .local v2, "numberParts":[Ljava/lang/String;
    array-length v3, v2

    if-nez v3, :cond_2a

    .line 961
    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberFromUri: invalid uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 962
    return-object v0

    .line 964
    :cond_2a
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0
.end method

.method public static blacklist getPresencePublication()Lcom/android/service/ims/presence/PresencePublication;
    .registers 1

    .line 435
    sget-object v0, Lcom/android/service/ims/presence/PresencePublication;->sPresencePublication:Lcom/android/service/ims/presence/PresencePublication;

    return-object v0
.end method

.method private blacklist getRcsContactUceCapability(Landroid/net/Uri;ZZ)Landroid/telephony/ims/RcsContactUceCapability;
    .registers 9
    .param p1, "contact"    # Landroid/net/Uri;
    .param p2, "isVolteCapable"    # Z
    .param p3, "isVtCapable"    # Z

    .line 937
    new-instance v0, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    invoke-direct {v0, p2, p3}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;-><init>(ZZ)V

    .line 939
    .local v0, "servCapsBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;
    const-string v1, "full"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->addSupportedDuplexMode(Ljava/lang/String;)Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;

    .line 941
    new-instance v1, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    const-string v2, "open"

    const-string v3, "org.3gpp.urn:urn-7:3gpp-service.ims.icsi.mmtel"

    const-string v4, "1.0"

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .local v1, "tupleBuilder":Landroid/telephony/ims/RcsContactPresenceTuple$Builder;
    invoke-virtual {v1, p1}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setContactUri(Landroid/net/Uri;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    move-result-object v2

    .line 945
    invoke-virtual {v0}, Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->setServiceCapabilities(Landroid/telephony/ims/RcsContactPresenceTuple$ServiceCapabilities;)Landroid/telephony/ims/RcsContactPresenceTuple$Builder;

    .line 947
    new-instance v2, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v2, p1, v3, v4}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;-><init>(Landroid/net/Uri;II)V

    .line 950
    .local v2, "presenceBuilder":Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;
    invoke-virtual {v1}, Landroid/telephony/ims/RcsContactPresenceTuple$Builder;->build()Landroid/telephony/ims/RcsContactPresenceTuple;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->addCapabilityTuple(Landroid/telephony/ims/RcsContactPresenceTuple;)Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;

    .line 952
    invoke-virtual {v2}, Landroid/telephony/ims/RcsContactUceCapability$PresenceBuilder;->build()Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v3

    return-object v3
.end method

.method private blacklist getUriForPublication()Landroid/net/Uri;
    .registers 12

    .line 968
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 970
    .local v0, "teleMgr":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 971
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "getUriForPublication, teleMgr = null"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 972
    return-object v1

    .line 974
    :cond_15
    iget v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 976
    const/4 v2, 0x0

    .line 977
    .local v2, "myNumUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, "myDomain":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "myDomain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 979
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "sip"

    if-nez v4, :cond_b5

    .line 980
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "impu":[Ljava/lang/String;
    if-eqz v4, :cond_b5

    .line 982
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    array-length v7, v4

    if-ge v6, v7, :cond_b5

    .line 983
    iget-object v7, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "impu["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v10, v4, v6

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 984
    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b2

    .line 985
    aget-object v7, v4, v6

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 986
    .local v7, "impuUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 987
    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 988
    move-object v2, v7

    .line 989
    iget-object v8, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] -> uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_b5

    .line 982
    .end local v7    # "impuUri":Landroid/net/Uri;
    :cond_b2
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 998
    .end local v4    # "impu":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_b5
    :goto_b5
    if-nez v2, :cond_b9

    move-object v4, v1

    goto :goto_bd

    :cond_b9
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "myNumber":Ljava/lang/String;
    :goto_bd
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c4

    .line 1000
    return-object v2

    .line 1004
    :cond_c4
    invoke-static {}, Lcom/android/ims/internal/ContactNumberUtils;->getDefault()Lcom/android/ims/internal/ContactNumberUtils;

    move-result-object v6

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1005
    if-nez v4, :cond_d3

    return-object v1

    .line 1006
    :cond_d3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f5

    .line 1007
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1009
    :cond_f5
    const-string v5, "tel"

    invoke-static {v5, v4, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private blacklist isIPVideoSupported(ZZ)Z
    .registers 7
    .param p1, "vtAvailable"    # Z
    .param p2, "viWifiAvailable"    # Z

    .line 316
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVoLteSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9f

    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 317
    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVtSupported(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_9f

    .line 322
    :cond_13
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVoLteProvisioned(I)Z

    move-result v0

    if-eqz v0, :cond_97

    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 323
    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isLvcProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_97

    .line 328
    :cond_25
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isAdvancedCallingEnabledByUser(I)Z

    move-result v0

    if-eqz v0, :cond_8f

    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    if-nez v0, :cond_32

    goto :goto_8f

    .line 333
    :cond_32
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->isTtyOn()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 334
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "isTtyOn=true, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 335
    return v1

    .line 339
    :cond_40
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isOnIWLAN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_66

    .line 340
    if-nez p1, :cond_4b

    if-eqz p2, :cond_4c

    :cond_4b
    move v1, v2

    :cond_4c
    move v0, v1

    .line 341
    .local v0, "videoSupported":Z
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on IWLAN, videoSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 342
    return v0

    .line 345
    .end local v0    # "videoSupported":Z
    :cond_66
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_74

    .line 346
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "isDataEnabled()=false, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 347
    return v1

    .line 350
    :cond_74
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isOnLTE()Z

    move-result v0

    if-nez v0, :cond_82

    .line 351
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "isOnLTE=false, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 352
    return v1

    .line 355
    :cond_82
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    if-nez v0, :cond_8e

    .line 356
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "mVoPSEnabled=false, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 357
    return v1

    .line 360
    :cond_8e
    return v2

    .line 329
    :cond_8f
    :goto_8f
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "User disabled volte or vt, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 330
    return v1

    .line 324
    :cond_97
    :goto_97
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Not provisioned. videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 325
    return v1

    .line 318
    :cond_9f
    :goto_9f
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Disabled by platform, videoSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 319
    return v1
.end method

.method private blacklist isIPVoiceSupported(ZZ)Z
    .registers 7
    .param p1, "volteAvailable"    # Z
    .param p2, "voWifiAvailable"    # Z

    .line 274
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVoLteSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 275
    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVoWiFiSupported(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 276
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Disabled by platform, voiceSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 277
    return v1

    .line 280
    :cond_19
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVoLteProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 281
    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isVowifiProvisioned(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 282
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Wasn\'t provisioned, voiceSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 283
    return v1

    .line 286
    :cond_31
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isAdvancedCallingEnabledByUser(I)Z

    move-result v0

    if-nez v0, :cond_49

    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 287
    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->isWfcEnabledByUser(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 288
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "User didn\'t enable volte or wfc, voiceSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 289
    return v1

    .line 293
    :cond_49
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isOnIWLAN()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6f

    .line 294
    if-nez p1, :cond_54

    if-eqz p2, :cond_55

    :cond_54
    move v1, v2

    :cond_55
    move v0, v1

    .line 295
    .local v0, "voiceSupported":Z
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on IWLAN, voiceSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 296
    return v0

    .line 300
    .end local v0    # "voiceSupported":Z
    :cond_6f
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isOnLTE()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 301
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "isOnLTE=false, voiceSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 302
    return v1

    .line 305
    :cond_7d
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    if-nez v0, :cond_89

    .line 306
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "mVoPSEnabled=false, voiceSupported=false"

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 307
    return v1

    .line 310
    :cond_89
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "voiceSupported=true"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 311
    return v2
.end method

.method private blacklist isOnIWLAN()Z
    .registers 6

    .line 1216
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1218
    .local v0, "teleMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    .line 1219
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovedToIWLAN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1222
    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    return v2
.end method

.method private blacklist isOnLTE()Z
    .registers 6

    .line 1206
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1208
    .local v0, "teleMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v1

    .line 1209
    .local v1, "networkType":I
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovedToLTE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1212
    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    if-eqz v2, :cond_3a

    if-eqz v1, :cond_3a

    const/4 v2, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    return v2
.end method

.method private blacklist isPublishedOrPublishing()Z
    .registers 11

    .line 475
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Lcom/android/service/ims/RcsSettingUtils;->getPublishThrottle(I)I

    move-result v0

    int-to-long v0, v0

    .line 477
    .local v0, "publishThreshold":J
    const/4 v2, 0x0

    .line 478
    .local v2, "publishing":Z
    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1f

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v3}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getTimestamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v3, v6, v0

    if-gtz v3, :cond_1f

    move v3, v4

    goto :goto_20

    :cond_1f
    move v3, v5

    :goto_20
    move v2, v3

    .line 482
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->getPublishState()I

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_2b

    :cond_2a
    move v4, v5

    :cond_2b
    :goto_2b
    return v4
.end method

.method private blacklist isSimLoaded()Z
    .registers 7

    .line 261
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    .local v0, "teleMgr":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 264
    :cond_e
    iget v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimImpu()[Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "myImpu":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getIsimDomain()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "myDomain":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "line1Number":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    if-eqz v2, :cond_32

    array-length v5, v2

    if-eqz v5, :cond_32

    :cond_31
    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method private static blacklist isTtyEnabled(I)Z
    .registers 2
    .param p0, "mode"    # I

    .line 1139
    if-eqz p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private declared-synchronized blacklist onFeatureCapabilityChangedInternal(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 12
    .param p1, "networkType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    monitor-enter p0

    .line 1155
    :try_start_1
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    .line 1156
    .local v0, "oldIsVolteAvailable":Z
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    .line 1157
    .local v1, "oldIsVtAvailable":Z
    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    .line 1158
    .local v2, "oldIsVoWifiAvailable":Z
    iget-boolean v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    .line 1160
    .local v3, "oldIsViWifiAvailable":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_15

    .line 1161
    invoke-virtual {p2, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_15

    move v6, v5

    goto :goto_16

    .end local p0    # "this":Lcom/android/service/ims/presence/PresencePublication;
    :cond_15
    move v6, v4

    :goto_16
    iput-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    .line 1163
    const/4 v6, 0x2

    if-ne p1, v6, :cond_23

    .line 1164
    invoke-virtual {p2, v5}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v7

    if-eqz v7, :cond_23

    move v7, v5

    goto :goto_24

    :cond_23
    move v7, v4

    :goto_24
    iput-boolean v7, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    .line 1166
    if-ne p1, v5, :cond_30

    .line 1167
    invoke-virtual {p2, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v7

    if-eqz v7, :cond_30

    move v7, v5

    goto :goto_31

    :cond_30
    move v7, v4

    :goto_31
    iput-boolean v7, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    .line 1169
    if-ne p1, v6, :cond_3d

    .line 1170
    invoke-virtual {p2, v6}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    move v6, v5

    goto :goto_3e

    :cond_3d
    move v6, v4

    :goto_3e
    iput-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    .line 1172
    iget-object v6, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsVolteAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsVoWifiAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsVtAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mIsViWifiAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldIsVolteAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldIsVoWifiAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldIsVtAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " oldIsViWifiAvailable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1181
    iget-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    if-ne v0, v6, :cond_b6

    iget-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    if-ne v1, v6, :cond_b6

    iget-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    if-ne v2, v6, :cond_b6

    iget-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    if-eq v3, v6, :cond_e6

    .line 1185
    :cond_b6
    iget-boolean v6, p0, Lcom/android/service/ims/presence/PresencePublication;->mGotTriggerFromStack:Z

    if-eqz v6, :cond_e4

    .line 1186
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d9

    iget-boolean v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    if-nez v4, :cond_d9

    iget-boolean v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    if-nez v4, :cond_d9

    .line 1189
    iget-object v4, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v5, "Airplane mode was on and no vowifi and viwifi. Don\'t need publish. Stack will unpublish"

    invoke-virtual {v4, v5}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V
    :try_end_d7
    .catchall {:try_start_1 .. :try_end_d7} :catchall_e8

    .line 1191
    monitor-exit p0

    return-void

    .line 1194
    :cond_d9
    :try_start_d9
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isOnIWLAN()Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 1196
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    goto :goto_e6

    .line 1200
    :cond_e4
    iput-boolean v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z
    :try_end_e6
    .catchall {:try_start_d9 .. :try_end_e6} :catchall_e8

    .line 1203
    :cond_e6
    :goto_e6
    monitor-exit p0

    return-void

    .line 1154
    .end local v0    # "oldIsVolteAvailable":Z
    .end local v1    # "oldIsVtAvailable":Z
    .end local v2    # "oldIsVoWifiAvailable":Z
    .end local v3    # "oldIsViWifiAvailable":Z
    .end local p1    # "networkType":I
    .end local p2    # "capabilities":Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
    :catchall_e8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist requestLocalPublish(I)V
    .registers 6
    .param p1, "trigger"    # I

    .line 520
    const/4 v0, 0x1

    .line 521
    .local v0, "bForceToNetwork":Z
    packed-switch p1, :pswitch_data_92

    .line 567
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Unknown publish trigger from AP"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    goto :goto_49

    .line 561
    :pswitch_c
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_DEFAULT_SUB_CHANGED"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 562
    const/4 v0, 0x1

    .line 563
    goto :goto_49

    .line 550
    :pswitch_15
    const/4 v0, 0x0

    .line 551
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_FEATURE_AVAILABILITY_CHANGED"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 552
    goto :goto_49

    .line 556
    :pswitch_1e
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_RETRY"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 557
    goto :goto_49

    .line 543
    :pswitch_26
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_TTY_ENABLE_STATUS"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 544
    const/4 v0, 0x1

    .line 546
    goto :goto_49

    .line 538
    :pswitch_2f
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_CACHED_TRIGGER"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 539
    goto :goto_49

    .line 531
    :pswitch_37
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_VTCALL_CHANGED"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 533
    const/4 v0, 0x1

    .line 534
    goto :goto_49

    .line 525
    :pswitch_40
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PRES_PUBLISH_TRIGGER_DATA_CHANGED"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 527
    nop

    .line 571
    :goto_49
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mGotTriggerFromStack:Z

    if-nez v1, :cond_55

    .line 573
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Didn\'t get trigger from stack yet, discard framework trigger."

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_55
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    if-eqz v1, :cond_61

    .line 578
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Don\'t publish until next power cycle"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 579
    return-void

    .line 582
    :cond_61
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSimLoaded:Z

    const/4 v2, 0x1

    if-nez v1, :cond_70

    .line 584
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "invokePublish cache the trigger since the SIM is not ready"

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 585
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 586
    return-void

    .line 590
    :cond_70
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v1, v3}, Lcom/android/service/ims/RcsSettingUtils;->isEabProvisioned(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_84

    .line 591
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "invokePublish cache the trigger, not provision yet"

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 592
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 593
    return-void

    .line 596
    :cond_84
    new-instance v1, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;-><init>(Lcom/android/service/ims/presence/PresencePublication;ZJ)V

    .line 599
    .local v1, "publishRequest":Lcom/android/service/ims/presence/PresencePublication$PublishRequest;
    invoke-direct {p0, v1}, Lcom/android/service/ims/presence/PresencePublication;->requestPublication(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V

    .line 601
    return-void

    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_40
        :pswitch_37
        :pswitch_2f
        :pswitch_26
        :pswitch_1e
        :pswitch_15
        :pswitch_c
    .end packed-switch
.end method

.method private blacklist requestPublication(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V
    .registers 11
    .param p1, "publishRequest"    # Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 791
    if-nez p1, :cond_a

    .line 792
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "Invalid parameter publishRequest == null"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 793
    return-void

    .line 796
    :cond_a
    const-wide/16 v0, 0x7d0

    .line 797
    .local v0, "requestThrottle":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 798
    .local v2, "currentTime":J
    iget-object v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v4

    .line 800
    :try_start_13
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    const/4 v6, 0x1

    if-eqz v5, :cond_49

    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v5}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getTimestamp()J

    move-result-wide v7

    sub-long v7, v2, v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_49

    .line 802
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v7, "A publish is pending, update the pending request and discard this one"

    invoke-virtual {v5, v7}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getForceToNetwork()Z

    move-result v5

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v5}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getForceToNetwork()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 804
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v5, v6}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->setForceToNetwork(Z)V

    .line 806
    :cond_3e
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getTimestamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->setTimestamp(J)V

    .line 807
    monitor-exit v4

    return-void

    .line 810
    :cond_49
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 811
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_5a

    .line 813
    iget-object v4, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 815
    .local v4, "publishMessage":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 816
    return-void

    .line 811
    .end local v4    # "publishMessage":Landroid/os/Message;
    :catchall_5a
    move-exception v5

    :try_start_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v5
.end method

.method private blacklist requestPublishIfSubscriptionReady()V
    .registers 5

    .line 236
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    .line 238
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "subscription changed to invalid, setting to not published"

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->reset()V

    .line 242
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mSimLoaded:Z

    .line 243
    invoke-virtual {p0, v1}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 244
    return-void

    .line 246
    :cond_1a
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 247
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "subscription ready, requesting publish"

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 248
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSimLoaded:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    .line 251
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    goto :goto_41

    .line 253
    :cond_30
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    .line 255
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 254
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    :goto_41
    return-void
.end method

.method private blacklist reset()V
    .registers 3

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    .line 403
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    .line 404
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    .line 405
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    .line 407
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 409
    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 410
    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 411
    monitor-exit v0

    .line 412
    return-void

    .line 411
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist scheduleRetryPublish(J)V
    .registers 9
    .param p1, "timeSpan"    # J

    .line 1021
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timeSpan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPendingRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCancelRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mCancelRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1026
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    if-eqz v0, :cond_3c

    .line 1027
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "There was a retry already"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1028
    return-void

    .line 1030
    :cond_3c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    .line 1031
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mCancelRetry:Z

    .line 1033
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.service.ims.presence.retry.publish"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1035
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mRetryAlarmIntent:Landroid/app/PendingIntent;

    .line 1038
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_6c

    .line 1039
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1042
    :cond_6c
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 1043
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, p1

    iget-object v5, p0, Lcom/android/service/ims/presence/PresencePublication;->mRetryAlarmIntent:Landroid/app/PendingIntent;

    .line 1042
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 1044
    return-void
.end method


# virtual methods
.method public blacklist getPublishState()I
    .registers 4

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, "presencePublisher":Lcom/android/service/ims/presence/PresencePublisher;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_4
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    move-object v0, v2

    .line 492
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_11

    .line 494
    if-eqz v0, :cond_f

    .line 495
    invoke-interface {v0}, Lcom/android/service/ims/presence/PresencePublisher;->getPublisherState()I

    move-result v1

    return v1

    .line 497
    :cond_f
    const/4 v1, 0x1

    return v1

    .line 492
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v2
.end method

.method public blacklist handleAssociatedSubscriptionChanged(I)V
    .registers 4
    .param p1, "newSubId"    # I

    .line 415
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    if-ne v0, p1, :cond_5

    .line 416
    return-void

    .line 418
    :cond_5
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->reset()V

    .line 419
    iput p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    .line 420
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method public blacklist handleProvisioningChanged()V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v0, v1}, Lcom/android/service/ims/RcsSettingUtils;->isEabProvisioned(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 426
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "provisioned, set mDonotRetryUntilPowerCycle to false"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    .line 428
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    if-eqz v0, :cond_1c

    .line 429
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 432
    :cond_1c
    return-void
.end method

.method public blacklist isDataEnabled()Z
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    return v2
.end method

.method public blacklist isTtyOn()Z
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTtyOn settingsTtyMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 388
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->isTtyEnabled(I)Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$onFeatureCapabilityChanged$0$com-android-service-ims-presence-PresencePublication(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 3
    .param p1, "networkType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 1147
    invoke-direct {p0, p1, p2}, Lcom/android/service/ims/presence/PresencePublication;->onFeatureCapabilityChangedInternal(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public blacklist onAirplaneModeChanged(Z)V
    .registers 4
    .param p1, "isAirplaneModeEnabled"    # Z

    .line 379
    if-eqz p1, :cond_10

    .line 380
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "Airplane mode, set to PUBLISH_STATE_NOT_PUBLISHED"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->reset()V

    .line 382
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 384
    :cond_10
    return-void
.end method

.method public blacklist onCommandStatusUpdated(III)V
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "requestId"    # I
    .param p3, "resultCode"    # I

    .line 467
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommandStatusUpdated: resultCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->info(Ljava/lang/String;)V

    .line 468
    invoke-super {p0, p1, p2, p3}, Lcom/android/service/ims/presence/PresenceBase;->onCommandStatusUpdated(III)V

    .line 469
    return-void
.end method

.method public blacklist onFeatureCapabilityChanged(ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .registers 6
    .param p1, "networkType"    # I
    .param p2, "capabilities"    # Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 1144
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFeatureCapabilityChanged networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1147
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/service/ims/presence/PresencePublication$$ExternalSyntheticLambda0;-><init>(Lcom/android/service/ims/presence/PresencePublication;ILandroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    const-string v2, "onFeatureCapabilityChangedInternal thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1150
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1151
    return-void
.end method

.method public blacklist onImsConnected()V
    .registers 2

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 393
    return-void
.end method

.method public blacklist onImsDisconnected()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "reset PUBLISH status for IMS had been disconnected"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 398
    invoke-direct {p0}, Lcom/android/service/ims/presence/PresencePublication;->reset()V

    .line 399
    return-void
.end method

.method public blacklist onMobileDataChanged(Z)V
    .registers 5
    .param p1, "value"    # Z

    .line 448
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMobileDataChanged, mDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 449
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    if-eq v0, p1, :cond_2e

    .line 450
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDataEnabled:Z

    .line 452
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 454
    :cond_2e
    return-void
.end method

.method public blacklist onSipResponse(IILjava/lang/String;)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "responseCode"    # I
    .param p3, "reasonPhrase"    # Ljava/lang/String;

    .line 1060
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Publish response code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Publish response reason phrase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 1064
    :try_start_25
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishedRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 1065
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPublishingRequest:Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 1066
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_122

    .line 1068
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mConfigVolteProvisionErrorOnPublishResponse:[Ljava/lang/String;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/service/ims/presence/PresencePublication;->isInConfigList(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_62

    .line 1070
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volte provision error. sipCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phrase="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1072
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 1073
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    .line 1075
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->notifyDm()V

    .line 1077
    return-void

    .line 1080
    :cond_62
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mConfigRcsProvisionErrorOnPublishResponse:[Ljava/lang/String;

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/service/ims/presence/PresencePublication;->isInConfigList(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 1081
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rcs provision error.sipCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phrase="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1082
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 1083
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    .line 1085
    return-void

    .line 1088
    :cond_93
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_126

    .line 1104
    const/16 v1, 0x64

    if-lt p2, v1, :cond_d1

    const/16 v1, 0x2bb

    if-le p2, v1, :cond_b8

    goto :goto_d1

    .line 1090
    :sswitch_a0
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Publish ignored - No capability change"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1091
    goto :goto_10c

    .line 1100
    :sswitch_a8
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 1101
    goto :goto_10c

    .line 1093
    :sswitch_ad
    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 1094
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSubscriber:Lcom/android/service/ims/presence/PresenceSubscriber;

    if-eqz v1, :cond_10c

    .line 1095
    invoke-virtual {v1}, Lcom/android/service/ims/presence/PresenceSubscriber;->retryToGetAvailability()V

    goto :goto_10c

    .line 1117
    :cond_b8
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "Generic Failure"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1118
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/service/ims/presence/PresencePublication;->setPublishState(I)V

    .line 1120
    const/16 v2, 0x190

    if-lt p2, v2, :cond_10c

    if-gt p2, v1, :cond_10c

    .line 1122
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "No Retry in OEM"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_10c

    .line 1105
    :cond_d1
    :goto_d1
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore internal response code, sipCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1110
    const/16 v1, 0x378

    if-ne p2, v1, :cond_f4

    .line 1112
    const-wide/32 v1, 0x1d4c0

    invoke-direct {p0, v1, v2}, Lcom/android/service/ims/presence/PresencePublication;->scheduleRetryPublish(J)V

    goto :goto_10c

    .line 1114
    :cond_f4
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore internal response code, sipCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 1129
    :cond_10c
    :goto_10c
    invoke-static {}, Lcom/android/service/ims/TaskManager;->getDefault()Lcom/android/service/ims/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/service/ims/TaskManager;->getTaskByRequestId(I)Lcom/android/service/ims/Task;

    move-result-object v1

    .line 1130
    .local v1, "task":Lcom/android/service/ims/Task;
    if-eqz v1, :cond_11a

    .line 1131
    iput p2, v1, Lcom/android/service/ims/Task;->mSipResponseCode:I

    .line 1132
    iput-object p3, v1, Lcom/android/service/ims/Task;->mSipReasonPhrase:Ljava/lang/String;

    .line 1135
    :cond_11a
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication;->getPublishState()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/service/ims/presence/PresencePublication;->handleCallback(Lcom/android/service/ims/Task;IZ)V

    .line 1136
    return-void

    .line 1066
    .end local v1    # "task":Lcom/android/service/ims/Task;
    :catchall_122
    move-exception v1

    :try_start_123
    monitor-exit v0
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_122

    throw v1

    nop

    :sswitch_data_126
    .sparse-switch
        0xc8 -> :sswitch_ad
        0x198 -> :sswitch_a8
        0x3e7 -> :sswitch_a0
    .end sparse-switch
.end method

.method public blacklist onStackAvailable()V
    .registers 2

    .line 717
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    if-eqz v0, :cond_8

    .line 718
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 720
    :cond_8
    return-void
.end method

.method public blacklist onStackPublishRequested(I)V
    .registers 6
    .param p1, "publishTriggerType"    # I

    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mGotTriggerFromStack:Z

    .line 607
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_be

    .line 683
    :pswitch_7
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Unknow Publish Trigger Type"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    goto/16 :goto_82

    .line 638
    :pswitch_10
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "QRCS_PRES_PUBLISH_TRIGGER_MOVE_TO_IWLAN"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 639
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 640
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 641
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 644
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 645
    goto :goto_82

    .line 668
    :pswitch_20
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_2G"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 669
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 670
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 671
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 672
    goto :goto_82

    .line 676
    :pswitch_2e
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_3G"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 677
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 678
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 679
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 680
    goto :goto_82

    .line 660
    :pswitch_3c
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_HSPAPLUS"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 661
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 662
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 663
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 664
    goto :goto_82

    .line 649
    :pswitch_4a
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_EHRPD"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 650
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 651
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 652
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 655
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 656
    goto :goto_82

    .line 627
    :pswitch_5a
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_ENABLED"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 628
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 629
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 630
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 633
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 634
    goto :goto_82

    .line 616
    :pswitch_6a
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "PUBLISH_TRIGGER_MOVE_TO_LTE_VOPS_DISABLED"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 617
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToLTE:Z

    .line 618
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVoPSEnabled:Z

    .line 619
    iput-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mMovedToIWLAN:Z

    .line 622
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mImsRegistered:Z

    .line 623
    goto :goto_82

    .line 611
    :pswitch_7a
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "PUBLISH_TRIGGER_ETAG_EXPIRED"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 612
    nop

    .line 686
    :goto_82
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mDonotRetryUntilPowerCycle:Z

    if-eqz v1, :cond_8e

    .line 687
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v1, "Don\'t publish until next power cycle"

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 688
    return-void

    .line 691
    :cond_8e
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSimLoaded:Z

    if-nez v1, :cond_9c

    .line 693
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "invokePublish cache the trigger since the SIM is not ready"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 694
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 695
    return-void

    .line 699
    :cond_9c
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mAssociatedSubscription:I

    invoke-static {v1, v2}, Lcom/android/service/ims/RcsSettingUtils;->isEabProvisioned(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 700
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "invokePublish cache the trigger, not provision yet"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 701
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mHasCachedTrigger:Z

    .line 702
    return-void

    .line 707
    :cond_b0
    new-instance v1, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;-><init>(Lcom/android/service/ims/presence/PresencePublication;ZJ)V

    move-object v0, v1

    .line 710
    .local v0, "publishRequest":Lcom/android/service/ims/presence/PresencePublication$PublishRequest;
    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestPublication(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)V

    .line 711
    return-void

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_6a
        :pswitch_5a
        :pswitch_4a
        :pswitch_3c
        :pswitch_2e
        :pswitch_20
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist onTtyPreferredModeChanged(I)V
    .registers 8
    .param p1, "newTtyPreferredMode"    # I

    .line 364
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tty mode changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 367
    iget v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    invoke-static {v0}, Lcom/android/service/ims/presence/PresencePublication;->isTtyEnabled(I)Z

    move-result v0

    .line 368
    .local v0, "mIsTtyEnabled":Z
    invoke-static {p1}, Lcom/android/service/ims/presence/PresencePublication;->isTtyEnabled(I)Z

    move-result v1

    .line 369
    .local v1, "isTtyEnabled":Z
    iput p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPreferredTtyMode:I

    .line 370
    if-eq v0, v1, :cond_56

    .line 371
    iget-object v3, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ttyEnabled status changed from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 373
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 376
    :cond_56
    return-void
.end method

.method public blacklist onVtEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 457
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVtEnabled mVtEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 459
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    if-eq v0, p1, :cond_2e

    .line 460
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mVtEnabled:Z

    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 463
    :cond_2e
    return-void
.end method

.method public blacklist removePresencePublisher()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Remove PresencePublisher"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    .line 232
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist retryPublish()V
    .registers 4

    .line 1047
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCancelRetry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mCancelRetry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ims/internal/Logger;->print(Ljava/lang/String;)V

    .line 1048
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mPendingRetry:Z

    .line 1052
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mCancelRetry:Z

    if-eqz v0, :cond_22

    .line 1053
    return-void

    .line 1056
    :cond_22
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/service/ims/presence/PresencePublication;->requestLocalPublish(I)V

    .line 1057
    return-void
.end method

.method public blacklist setPublishState(I)V
    .registers 5
    .param p1, "publishState"    # I

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "presencePublisher":Lcom/android/service/ims/presence/PresencePublisher;
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_4
    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    move-object v0, v2

    .line 507
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_e

    .line 509
    if-eqz v0, :cond_d

    .line 510
    invoke-interface {v0, p1}, Lcom/android/service/ims/presence/PresencePublisher;->updatePublisherState(I)V

    .line 512
    :cond_d
    return-void

    .line 507
    :catchall_e
    move-exception v2

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v2
.end method

.method public blacklist setSubscriber(Lcom/android/service/ims/presence/PresenceSubscriber;)V
    .registers 2
    .param p1, "subscriber"    # Lcom/android/service/ims/presence/PresenceSubscriber;

    .line 439
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mSubscriber:Lcom/android/service/ims/presence/PresenceSubscriber;

    .line 440
    return-void
.end method

.method public blacklist updatePresencePublisher(Lcom/android/service/ims/presence/PresencePublisher;)V
    .registers 5
    .param p1, "presencePublisher"    # Lcom/android/service/ims/presence/PresencePublisher;

    .line 222
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "Update PresencePublisher"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication;->mPresencePublisher:Lcom/android/service/ims/presence/PresencePublisher;

    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
