.class public abstract Lcom/android/ims/FeatureConnection;
.super Ljava/lang/Object;
.source "FeatureConnection.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "FeatureConnection"

.field protected static blacklist sImsSupportedOnDevice:Z


# instance fields
.field protected blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

.field protected blacklist mContext:Landroid/content/Context;

.field protected final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field protected blacklist mFeatureCapabilities:J

.field protected blacklist mFeatureStateCached:Ljava/lang/Integer;

.field protected volatile blacklist mIsAvailable:Z

.field protected final blacklist mLock:Ljava/lang/Object;

.field private blacklist mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

.field private final blacklist mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

.field protected final blacklist mSlotId:I

.field protected final blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/ims/FeatureConnection;->sImsSupportedOnDevice:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IILandroid/telephony/ims/aidl/IImsConfig;Landroid/telephony/ims/aidl/IImsRegistration;Landroid/telephony/ims/aidl/ISipTransport;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I
    .param p3, "subId"    # I
    .param p4, "c"    # Landroid/telephony/ims/aidl/IImsConfig;
    .param p5, "r"    # Landroid/telephony/ims/aidl/IImsRegistration;
    .param p6, "s"    # Landroid/telephony/ims/aidl/ISipTransport;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/ims/FeatureConnection;)V

    iput-object v0, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 63
    iput p2, p0, Lcom/android/ims/FeatureConnection;->mSlotId:I

    .line 64
    iput p3, p0, Lcom/android/ims/FeatureConnection;->mSubId:I

    .line 65
    iput-object p1, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    .line 66
    iput-object p5, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 67
    iput-object p4, p0, Lcom/android/ims/FeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    .line 68
    iput-object p6, p0, Lcom/android/ims/FeatureConnection;->mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

    .line 69
    return-void
.end method


# virtual methods
.method public blacklist checkServiceIsReady()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    sget-boolean v0, Lcom/android/ims/FeatureConnection;->sImsSupportedOnDevice:Z

    if-eqz v0, :cond_13

    .line 168
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderReady()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    return-void

    .line 169
    :cond_b
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "ImsServiceProxy is not ready to accept commands."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_13
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "IMS is not supported on this device."

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mConfigBinder:Landroid/telephony/ims/aidl/IImsConfig;

    return-object v0
.end method

.method public blacklist getFeatureCapabilties()J
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget-wide v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    monitor-exit v0

    return-wide v1

    .line 202
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public blacklist getFeatureState()I
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    if-eqz v1, :cond_13

    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v0

    return v1

    .line 231
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_64

    .line 233
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->retrieveFeatureState()Ljava/lang/Integer;

    move-result-object v1

    .line 234
    .local v1, "state":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    if-nez v1, :cond_20

    .line 236
    const/4 v0, 0x0

    :try_start_1e
    monitor-exit v2

    return v0

    .line 239
    :cond_20
    iput-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 240
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_61

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeatureConnection ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/ims/FeatureConnection;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFeatureState - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/telephony/ims/feature/ImsFeature;->STATE_LOG_MAP:Ljava/util/Map;

    .line 242
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 240
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 231
    .end local v1    # "state":Ljava/lang/Integer;
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method

.method public blacklist getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-eqz v1, :cond_9

    .line 139
    monitor-exit v0

    return-object v1

    .line 141
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 143
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v1

    .line 144
    .local v1, "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_11
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    if-nez v0, :cond_17

    .line 148
    iput-object v1, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    .line 150
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1b

    .line 152
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mRegistrationBinder:Landroid/telephony/ims/aidl/IImsRegistration;

    return-object v0

    .line 150
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0

    .line 141
    .end local v1    # "regBinder":Landroid/telephony/ims/aidl/IImsRegistration;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected abstract blacklist getRegistrationBinder()Landroid/telephony/ims/aidl/IImsRegistration;
.end method

.method public blacklist getRegistrationTech()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getRegistration()Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v0

    .line 126
    .local v0, "registration":Landroid/telephony/ims/aidl/IImsRegistration;
    if-eqz v0, :cond_b

    .line 127
    invoke-interface {v0}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v1

    return v1

    .line 129
    :cond_b
    const-string v1, "FeatureConnection"

    const-string v2, "getRegistrationTech: ImsRegistration is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getSipTransport()Landroid/telephony/ims/aidl/ISipTransport;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mSipTransportBinder:Landroid/telephony/ims/aidl/ISipTransport;

    return-object v0
.end method

.method public blacklist getSubId()I
    .registers 2

    .line 247
    iget v0, p0, Lcom/android/ims/FeatureConnection;->mSubId:I

    return v0
.end method

.method protected blacklist getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public blacklist isBinderAlive()Z
    .registers 2

    .line 190
    iget-boolean v0, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist isBinderReady()Z
    .registers 3

    .line 183
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getFeatureState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public blacklist isCapable(J)Z
    .registers 7
    .param p1, "capabilities"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 219
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->getFeatureCapabilties()J

    move-result-wide v0

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0

    .line 217
    :cond_15
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "isCapable: ImsService is not alive"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic blacklist lambda$new$0$com-android-ims-FeatureConnection()V
    .registers 3

    .line 94
    const-string v0, "FeatureConnection"

    const-string v1, "DeathRecipient triggered, binder died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 98
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/ims/FeatureConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/ims/FeatureConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void

    .line 102
    :cond_20
    invoke-virtual {p0}, Lcom/android/ims/FeatureConnection;->onRemovedOrDied()V

    .line 103
    return-void
.end method

.method protected abstract blacklist onFeatureCapabilitiesUpdated(J)V
.end method

.method protected blacklist onRemovedOrDied()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    iget-boolean v1, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z

    if-eqz v1, :cond_1c

    .line 111
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ims/FeatureConnection;->mIsAvailable:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 113
    :try_start_a
    iget-object v2, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    if-eqz v2, :cond_13

    .line 114
    iget-object v3, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v2, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_13} :catch_14
    .catchall {:try_start_a .. :try_end_13} :catchall_1e

    .line 118
    :cond_13
    goto :goto_1c

    .line 116
    :catch_14
    move-exception v1

    .line 117
    .local v1, "e":Ljava/util/NoSuchElementException;
    :try_start_15
    const-string v2, "FeatureConnection"

    const-string v3, "onRemovedOrDied: unlinkToDeath called on unlinked Binder."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :cond_1c
    :goto_1c
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method protected abstract blacklist retrieveFeatureState()Ljava/lang/Integer;
.end method

.method public blacklist setBinder(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 80
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 81
    :try_start_3
    iput-object p1, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    .line 83
    if-eqz p1, :cond_1a

    .line 84
    :try_start_7
    iget-object v1, p0, Lcom/android/ims/FeatureConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_d} :catch_e
    .catchall {:try_start_7 .. :try_end_d} :catchall_1d

    goto :goto_1a

    .line 86
    :catch_e
    move-exception v1

    .line 87
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_f
    const-string v2, "FeatureConnection"

    const-string v3, "setBinder: linkToDeath on already dead Binder, setting null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/ims/FeatureConnection;->mBinder:Landroid/os/IBinder;

    goto :goto_1b

    .line 89
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1a
    :goto_1a
    nop

    .line 90
    :goto_1b
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public blacklist updateFeatureCapabilities(J)V
    .registers 6
    .param p1, "caps"    # J

    .line 206
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-wide v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    cmp-long v1, v1, p1

    if-eqz v1, :cond_e

    .line 208
    iput-wide p1, p0, Lcom/android/ims/FeatureConnection;->mFeatureCapabilities:J

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/FeatureConnection;->onFeatureCapabilitiesUpdated(J)V

    .line 211
    :cond_e
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public blacklist updateFeatureState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 194
    iget-object v0, p0, Lcom/android/ims/FeatureConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/FeatureConnection;->mFeatureStateCached:Ljava/lang/Integer;

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
