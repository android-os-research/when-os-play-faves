.class public Lcom/android/ims/RcsFeatureConnection;
.super Lcom/android/ims/FeatureConnection;
.source "RcsFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;,
        Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RcsFeatureConnection"


# instance fields
.field public blacklist mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

.field public blacklist mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogi(Lcom/android/ims/RcsFeatureConnection;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCapabilityCallback(Lcom/android/ims/RcsFeatureConnection;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsRcsFeature;Landroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "feature"    # Landroid/telephony/ims/aidl/IImsRcsFeature;
    .param p5, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p6, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p7, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 125
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/ims/FeatureConnection;-><init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V

    .line 126
    if-eqz p4, :cond_11

    invoke-interface {p4}, Landroid/telephony/ims/aidl/IImsRcsFeature;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->setBinder(Landroid/os/IBinder;)V

    .line 127
    new-instance v0, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    .line 128
    new-instance v0, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;-><init>(Lcom/android/ims/RcsFeatureConnection;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    .line 129
    return-void
.end method

.method private blacklist addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 204
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method private blacklist checkServiceIsAlive()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    sget-boolean v0, Lcom/android/ims/RcsFeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_13

    .line 164
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 167
    return-void

    .line 165
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not alive."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_13
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RcsFeatureConnection ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private blacklist removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 212
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public blacklist addCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 185
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallback(Landroid/os/IInterface;)V

    .line 186
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 177
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 178
    return-void
.end method

.method public blacklist addCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 181
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->addCallbackForSubscription(Landroid/os/IInterface;I)V

    .line 182
    return-void
.end method

.method public blacklist changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 5
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 228
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist close()V
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->removeCapabilityExchangeEventListener()V

    .line 133
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->close()V

    .line 134
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->close()V

    .line 135
    return-void
.end method

.method protected blacklist getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 4

    .line 295
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 296
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_e

    iget v1, p0, Lcom/android/ims/RcsFeatureConnection;->mSlotId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method

.method public blacklist getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;
    .registers 3
    .param p1, "b"    # Landroid/os/IBinder;

    .line 278
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsFeature$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onFeatureCapabilitiesUpdated(J)V
    .registers 3
    .param p1, "capabilities"    # J

    .line 274
    return-void
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 1

    .line 139
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->close()V

    .line 140
    invoke-super {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 141
    return-void
.end method

.method public blacklist queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 6
    .param p1, "capability"    # I
    .param p2, "radioTech"    # I
    .param p3, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 220
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 221
    monitor-exit v0

    .line 222
    return-void

    .line 221
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist queryCapabilityStatus()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 172
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->queryCapabilityStatus()I

    move-result v1

    monitor-exit v0

    return v1

    .line 173
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public blacklist removeCallback(Landroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 3
    .param p1, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 197
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 198
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    .line 189
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mAvailabilityCallbackManager:Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$AvailabilityCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 190
    return-void
.end method

.method public blacklist removeCallbackForSubscription(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .registers 4
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    .line 193
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mRegistrationCallbackManager:Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;

    invoke-virtual {v0, p2}, Lcom/android/ims/RcsFeatureConnection$RegistrationCallbackManager;->removeCallback(Landroid/os/IInterface;)V

    .line 194
    return-void
.end method

.method public blacklist removeCapabilityExchangeEventListener()V
    .registers 2

    .line 154
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 157
    goto :goto_6

    .line 155
    :catch_5
    move-exception v0

    .line 158
    :goto_6
    return-void
.end method

.method public blacklist requestCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V
    .registers 5
    .param p2, "c"    # Landroid/telephony/ims/aidl/ISubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/aidl/ISubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 244
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->subscribeForCapabilities(Ljava/util/List;Landroid/telephony/ims/aidl/ISubscribeResponseCallback;)V

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist requestPublication(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V
    .registers 5
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "responseCallback"    # Landroid/telephony/ims/aidl/IPublishResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 236
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/telephony/ims/aidl/IImsRcsFeature;->publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/aidl/IPublishResponseCallback;)V

    .line 237
    monitor-exit v0

    .line 238
    return-void

    .line 237
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist retrieveFeatureState()Ljava/lang/Integer;
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_14

    .line 262
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRcsFeature;->getFeatureState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_12} :catch_13

    return-object v0

    .line 263
    :catch_13
    move-exception v0

    .line 267
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    .local p2, "myCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsReady()V

    .line 252
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/ims/aidl/IImsRcsFeature;->sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsResponseCallback;)V

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/ims/RcsFeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-direct {p0}, Lcom/android/ims/RcsFeatureConnection;->checkServiceIsAlive()V

    .line 148
    iget-object v1, p0, Lcom/android/ims/RcsFeatureConnection;->mBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v1}, Lcom/android/ims/RcsFeatureConnection;->getServiceInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsFeature;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/telephony/ims/aidl/IImsRcsFeature;->setCapabilityExchangeEventListener(Landroid/telephony/ims/aidl/ICapabilityExchangeEventListener;)V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
