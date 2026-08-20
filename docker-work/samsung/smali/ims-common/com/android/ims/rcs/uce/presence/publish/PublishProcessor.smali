.class public Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;
.super Ljava/lang/Object;
.source "PublishProcessor.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String;

.field private static final blacklist RESPONSE_CALLBACK_WAITING_TIME:J = 0xea60L


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

.field private volatile blacklist mIsDestroyed:Z

.field private final blacklist mLocalLog:Landroid/util/LocalLog;

.field private final blacklist mPendingRequestLock:Ljava/lang/Object;

.field private blacklist mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

.field private final blacklist mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

.field private volatile blacklist mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

.field private final blacklist mSubId:I

.field private final blacklist mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/ims/rcs/uce/util/UceUtils;->getLogPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PublishProcessor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "capabilityInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "publishCtrlCallback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    .line 77
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 78
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 80
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 81
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-direct {v0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 82
    invoke-static {}, Lcom/android/ims/rcs/uce/UceStatsWriter;->getInstance()Lcom/android/ims/rcs/uce/UceStatsWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;ILcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;Lcom/android/ims/rcs/uce/UceStatsWriter;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I
    .param p3, "capabilityInfo"    # Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;
    .param p4, "publishCtrlCallback"    # Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;
    .param p5, "instance"    # Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    .line 88
    iput p2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 89
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    .line 91
    iput-object p4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    .line 92
    new-instance v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-direct {v0, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;-><init>(I)V

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 93
    iput-object p5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    .line 94
    return-void
.end method

.method private blacklist checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z
    .registers 9
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 317
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 318
    const-string v1, "checkRequestRespValid: request response is null"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 319
    return v0

    .line 322
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v1

    if-nez v1, :cond_17

    .line 323
    const-string v1, "checkRequestRespValid: the request is finished"

    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 324
    return v0

    .line 329
    :cond_17
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getCurrentTaskId()J

    move-result-wide v1

    .line 330
    .local v1, "taskId":J
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v3

    .line 331
    .local v3, "responseTaskId":J
    cmp-long v5, v1, v3

    if-eqz v5, :cond_46

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRequestRespValid: invalid taskId! current taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response callback taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 334
    return v0

    .line 337
    :cond_46
    iget-boolean v5, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    if-eqz v5, :cond_61

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkRequestRespValid: is already destroyed! taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 339
    return v0

    .line 341
    :cond_61
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist clearPendingRequest()V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->clearPendingRequest()V

    .line 456
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private blacklist doPublishInternal(I)Z
    .registers 7
    .param p1, "triggerType"    # I

    .line 143
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doPublishInternal: trigger type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isRequestAllowed(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 150
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "doPublishInternal: The request is not allowed."

    invoke-virtual {v0, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 151
    return v1

    .line 155
    :cond_40
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    .line 156
    invoke-virtual {v0, v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->getDeviceCapabilities(ILandroid/content/Context;)Landroid/telephony/ims/RcsContactUceCapability;

    move-result-object v0

    .line 157
    .local v0, "deviceCapability":Landroid/telephony/ims/RcsContactUceCapability;
    if-nez v0, :cond_51

    .line 158
    const-string v2, "doPublishInternal: device capability is null"

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 159
    return v1

    .line 163
    :cond_51
    invoke-static {v0}, Lcom/android/ims/rcs/uce/presence/pidfparser/PidfParser;->convertToPidf(Landroid/telephony/ims/RcsContactUceCapability;)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "pidfXml":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 165
    const-string v3, "doPublishInternal: pidfXml is empty"

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 166
    return v1

    .line 171
    :cond_61
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 172
    .local v3, "featureManager":Lcom/android/ims/RcsFeatureManager;
    if-nez v3, :cond_6e

    .line 173
    const-string v4, "doPublishInternal: RCS is not connected."

    invoke-direct {p0, v4}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setPendingRequest(I)V

    .line 175
    return v1

    .line 178
    :cond_6e
    new-instance v1, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Landroid/telephony/ims/RcsContactUceCapability;)V

    invoke-virtual {v3, v1}, Lcom/android/ims/RcsFeatureManager;->getImsRegistrationTech(Ljava/util/function/Consumer;)V

    .line 186
    invoke-direct {p0, v3, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->publishCapabilities(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist getLogPrefix()Ljava/lang/StringBuilder;
    .registers 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    return-object v0
.end method

.method private blacklist handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 4
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 350
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->increaseRetryCount()V

    .line 353
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->clearPendingRequest()V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 357
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 358
    return-void
.end method

.method private blacklist handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 365
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 368
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 369
    return-void
.end method

.method private blacklist isRequestAllowed(I)Z
    .registers 4
    .param p1, "triggerType"    # I

    .line 195
    iget-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 196
    const-string v0, "isPublishAllowed: This instance is already destroyed"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 197
    return v1

    .line 202
    :cond_b
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->isEabProvisioned()Z

    move-result v0

    if-nez v0, :cond_17

    .line 203
    const-string v0, "isPublishAllowed: NOT provisioned"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 204
    return v1

    .line 209
    :cond_17
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mDeviceCapabilities:Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/DeviceCapabilityInfo;->isImsRegistered()Z

    move-result v0

    if-nez v0, :cond_25

    .line 210
    const-string v0, "isPublishAllowed: IMS is not registered"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 211
    return v1

    .line 216
    :cond_25
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishAllowedAtThisTime()Z

    move-result v0

    if-nez v0, :cond_38

    .line 217
    const-string v0, "isPublishAllowed: Current time is not allowed, resend this request"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 219
    return v1

    .line 221
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 518
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 522
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 526
    sget-object v0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->getLogPrefix()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method private blacklist publishCapabilities(Lcom/android/ims/RcsFeatureManager;Ljava/lang/String;)Z
    .registers 9
    .param p1, "featureManager"    # Lcom/android/ims/RcsFeatureManager;
    .param p2, "pidfXml"    # Ljava/lang/String;

    .line 227
    const/4 v0, 0x0

    .line 230
    .local v0, "requestResponse":Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    :try_start_1
    invoke-direct {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->clearPendingRequest()V

    .line 233
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->generatePublishTaskId()J

    move-result-wide v1

    .line 234
    .local v1, "taskId":J
    new-instance v3, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    iget-object v4, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-direct {v3, v4, v1, v2, p2}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;JLjava/lang/String;)V

    move-object v0, v3

    .line 236
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "publish capabilities: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishCapabilities: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseCallback()Landroid/telephony/ims/aidl/IPublishResponseCallback;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lcom/android/ims/RcsFeatureManager;->requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 243
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    const-wide/32 v4, 0xea60

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->setupRequestCanceledTimer(JJ)V

    .line 246
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->notifyPendingPublishRequest()V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_54} :catch_56

    .line 247
    const/4 v3, 0x1

    return v3

    .line 248
    .end local v1    # "taskId":J
    :catch_56
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publish capability exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishCapabilities: exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 252
    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 254
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 7
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 409
    const-wide/16 v0, -0x1

    .line 410
    .local v0, "taskId":J
    if-eqz p1, :cond_b

    .line 411
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onDestroy()V

    .line 412
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getTaskId()J

    move-result-wide v0

    .line 414
    :cond_b
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 415
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->clearRequestCanceledTimer()V

    .line 417
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set request ended: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequestEnded: taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private blacklist updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 7
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 373
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseTimestamp()Ljava/time/Instant;

    move-result-object v0

    .line 376
    .local v0, "responseTime":Ljava/time/Instant;
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->isRequestSuccess()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 377
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setLastPublishedTime(Ljava/time/Instant;)V

    .line 378
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->resetRetryCount()V

    .line 382
    :cond_14
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPublishState()I

    move-result v1

    .line 383
    .local v1, "publishState":I
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getPidfXml()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "pidfXml":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v3, v1, v0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->updatePublishRequestResult(ILjava/time/Instant;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseSipCode()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 391
    return-void
.end method


# virtual methods
.method public blacklist cancelPublishRequest(J)V
    .registers 6
    .param p1, "taskId"    # J

    .line 398
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel publish request: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPublishRequest: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 400
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 401
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 402
    return-void
.end method

.method public blacklist checkAndSendPendingRequest()V
    .registers 5

    .line 434
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 435
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 436
    :cond_9
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->hasPendingRequest()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 438
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPendingRequestTriggerType()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x2

    .line 439
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 440
    .local v1, "type":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndSendPendingRequest: send pending request, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v2}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->clearPendingRequest()V

    .line 444
    iget-object v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-interface {v2, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->requestPublishFromInternal(I)V

    .line 446
    .end local v1    # "type":I
    :cond_46
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public blacklist doPublish(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 131
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 132
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->doPublishInternal(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 134
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPublishingFlag(Z)V

    .line 136
    :cond_12
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 537
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 538
    .local v0, "pw":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PublishProcessor[subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 541
    const-string v1, "ProcessorState: isPublishing="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 543
    const-string v1, ", hasReachedMaxRetries="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 545
    const-string v1, ", delayTimeToAllowPublish="

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 546
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 548
    const-string v1, "Log:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 550
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 551
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 552
    const-string v1, "---"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 555
    return-void
.end method

.method public blacklist getPublishingDelayTime()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->getPublishingDelayTime()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist isEabProvisioned()Z
    .registers 3

    .line 514
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    invoke-static {v0, v1}, Lcom/android/ims/rcs/uce/util/UceUtils;->isEabProvisioned(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isPublishingNow()Z
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isPublishingNow()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$doPublishInternal$0$com-android-ims-rcs-uce-presence-publish-PublishProcessor(Landroid/telephony/ims/RcsContactUceCapability;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "deviceCapability"    # Landroid/telephony/ims/RcsContactUceCapability;
    .param p2, "tech"    # Ljava/lang/Integer;

    .line 179
    if-nez p2, :cond_4

    .line 180
    const/4 v0, -0x1

    goto :goto_8

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 181
    .local v0, "registrationTech":I
    :goto_8
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    .line 182
    invoke-virtual {p1}, Landroid/telephony/ims/RcsContactUceCapability;->getCapabilityTuples()Ljava/util/List;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setImsRegistrationServiceDescStats(ILjava/util/List;I)V

    .line 183
    return-void
.end method

.method synthetic blacklist lambda$updatePublishStateFromResponse$1$com-android-ims-rcs-uce-presence-publish-PublishProcessor(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;
    .param p2, "sipCode"    # Ljava/lang/Integer;

    .line 388
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getResponseReason()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPublishCtrlCallback:Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishController$PublishControllerCallback;->refreshDeviceState(ILjava/lang/String;)V

    .line 390
    return-void
.end method

.method public blacklist onCommandError(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 10
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 263
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 264
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "Command error callback is invalid"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 265
    const-string v0, "onCommandError: request response is invalid"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 268
    return-void

    .line 271
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive command error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getCmdErrorCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 275
    .local v0, "cmdError":I
    const/4 v1, 0x0

    .line 276
    .local v1, "successful":Z
    const/16 v2, 0xa

    if-ne v0, v2, :cond_6a

    .line 277
    const/4 v1, 0x1

    move v7, v1

    goto :goto_6b

    .line 276
    :cond_6a
    move v7, v1

    .line 279
    .end local v1    # "successful":Z
    .local v7, "successful":Z
    :goto_6b
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    move v4, v7

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 281
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->needRetry()Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v1

    if-nez v1, :cond_88

    .line 282
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_8b

    .line 284
    :cond_88
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 286
    :goto_8b
    return-void
.end method

.method public blacklist onDestroy()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mIsDestroyed:Z

    .line 124
    return-void
.end method

.method public blacklist onNetworkResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 9
    .param p1, "requestResponse"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 293
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkRequestRespValid(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 294
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "Network response callback is invalid"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 295
    const-string v0, "onNetworkResponse: request response is invalid"

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logw(Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->setRequestEnded(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 298
    return-void

    .line 301
    :cond_19
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive network response code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNetworkResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logd(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->getNetworkRespSipCode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 305
    .local v0, "responseCode":I
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mUceStatsWriter:Lcom/android/ims/rcs/uce/UceStatsWriter;

    iget v2, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mSubId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/ims/rcs/uce/UceStatsWriter;->setUceEvent(IIZII)V

    .line 308
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->needRetry()Z

    move-result v1

    if-eqz v1, :cond_7f

    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->isReachMaximumRetries()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 309
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    goto :goto_82

    .line 311
    :cond_7f
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->handleRequestRespWithoutRetry(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 313
    :goto_82
    return-void
.end method

.method public blacklist onRcsConnected(Lcom/android/ims/RcsFeatureManager;)V
    .registers 4
    .param p1, "featureManager"    # Lcom/android/ims/RcsFeatureManager;

    .line 100
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onRcsConnected"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 104
    invoke-virtual {p0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->checkAndSendPendingRequest()V

    .line 105
    return-void
.end method

.method public blacklist onRcsDisconnected()V
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mLocalLog:Landroid/util/LocalLog;

    const-string v1, "onRcsDisconnected"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0, v1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->logi(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mRcsFeatureManager:Lcom/android/ims/RcsFeatureManager;

    .line 114
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->onRcsDisconnected()V

    .line 115
    return-void
.end method

.method public blacklist publishUpdated(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;

    .line 501
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->updatePublishStateFromResponse(Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;)V

    .line 502
    if-eqz p1, :cond_8

    .line 503
    invoke-virtual {p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishRequestResponse;->onDestroy()V

    .line 505
    :cond_8
    return-void
.end method

.method public blacklist resetState()V
    .registers 2

    .line 494
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->resetState()V

    .line 495
    return-void
.end method

.method public blacklist setPendingRequest(I)V
    .registers 4
    .param p1, "triggerType"    # I

    .line 425
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mPendingRequestLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v1, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->setPendingRequest(I)V

    .line 427
    monitor-exit v0

    .line 428
    return-void

    .line 427
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist setProcessorState(Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;)V
    .registers 2
    .param p1, "processorState"    # Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 509
    iput-object p1, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    .line 510
    return-void
.end method

.method public blacklist updatePublishThrottle(I)V
    .registers 3
    .param p1, "publishThrottle"    # I

    .line 480
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->updatePublishThrottle(I)V

    .line 481
    return-void
.end method

.method public blacklist updatePublishingAllowedTime(I)V
    .registers 3
    .param p1, "triggerType"    # I

    .line 465
    iget-object v0, p0, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessor;->mProcessorState:Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;

    invoke-virtual {v0, p1}, Lcom/android/ims/rcs/uce/presence/publish/PublishProcessorState;->updatePublishingAllowedTime(I)V

    .line 466
    return-void
.end method
