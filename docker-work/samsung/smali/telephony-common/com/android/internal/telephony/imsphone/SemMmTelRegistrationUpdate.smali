.class public Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;
.super Ljava/lang/Object;
.source "SemMmTelRegistrationUpdate.java"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;


# instance fields
.field private blacklist mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private blacklist mRegistrationRadioTech:I

.field private blacklist mRegistrationState:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationState:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationRadioTech:I

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mLock:Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-void
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 10

    .line 162
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x3

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyLogger;->writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist isImsOverWifiRegistered(II)Z
    .registers 3

    const/4 p0, 0x2

    if-ne p1, p0, :cond_7

    if-ne p2, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemMmTelRegistrationUpdate"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized blacklist updateRegistrationInfo(II)V
    .registers 8

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_56

    .line 110
    :try_start_4
    iget v1, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationState:I

    .line 111
    iget v2, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationRadioTech:I

    .line 112
    iput p1, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationState:I

    .line 113
    iput p2, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationRadioTech:I

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRegistrationInfo from (state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/telephony/ims/RegistrationManager;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tech: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {v2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") to (state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {p1}, Landroid/telephony/ims/RegistrationManager;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", tech: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->log(Ljava/lang/String;)V

    .line 119
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4 .. :try_end_4e} :catchall_53

    .line 121
    :try_start_4e
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->updateWfcSpn(IIII)V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    .line 122
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    .line 119
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist updateWfcSpn(IIII)V
    .registers 5

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->isImsOverWifiRegistered(II)Z

    move-result p1

    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->isImsOverWifiRegistered(II)Z

    move-result p2

    if-eq p1, p2, :cond_1d

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/16 p1, 0x1f9

    .line 129
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1d
    return-void
.end method


# virtual methods
.method blacklist getImsRegistrationRadioTech()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mRegistrationRadioTech:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public blacklist handleImsRegistered(I)V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 57
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ImsRegistrationUpdate.handleImsRegistered"

    const/4 v4, 0x2

    invoke-direct {p0, v2, v4, v1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v1

    .line 60
    sget-boolean v2, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v2, :cond_32

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateVowifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    if-eq p1, v4, :cond_32

    new-array p1, v0, [Ljava/lang/Object;

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "ImsRegistrationUpdate.handleImsRegistered (Overridden)"

    invoke-direct {p0, v0, v4, p1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    move p1, v4

    .line 66
    :cond_32
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->updateRegistrationInfo(II)V

    .line 68
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistered(I)V

    return-void
.end method

.method public blacklist handleImsRegistering(I)V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {p1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "ImsRegistrationUpdate.handleImsRegistering"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->updateRegistrationInfo(II)V

    .line 80
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsRegistering(I)V

    return-void
.end method

.method public blacklist handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    return-void
.end method

.method public blacklist handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "ImsRegistrationUpdate.handleImsUnregistered"

    const/4 v3, 0x2

    .line 88
    invoke-direct {p0, v2, v3, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 90
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->updateRegistrationInfo(II)V

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->mListener:Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsRegistrationCallbackHelper$ImsRegistrationUpdate;->handleImsUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method blacklist reset()V
    .registers 3

    const-string v0, "reset"

    .line 141
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 142
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/imsphone/SemMmTelRegistrationUpdate;->updateRegistrationInfo(II)V

    return-void
.end method
