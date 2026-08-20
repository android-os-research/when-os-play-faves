.class public Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;
.super Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.source "ImsServiceInterfaceAdapter.java"


# instance fields
.field private blacklist SERVICE_ID:I


# direct methods
.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;-><init>(ILandroid/os/IBinder;)V

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    return-void
.end method

.method private blacklist getInterface()Lcom/android/ims/internal/IImsService;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    .line 178
    :cond_9
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Binder not Available"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSms(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSmsReport(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsService;->acknowledgeSmsWithPdu(III[B)V

    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/ims/internal/IImsService;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->changeAudioPath(II)V

    return-void
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/ims/internal/IImsService;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist endSession(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->close(I)V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getEcbmInterface(I)Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFeatureState()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x2

    return p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getMultiEndpointInterface(I)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getRegistration(I)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->getSmsFormat(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->getUtInterface(I)Lcom/android/ims/internal/IImsUt;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isCmcEmergencyCallSupported(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected(II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/ims/internal/IImsService;->isConnected(III)Z

    move-result p0

    return p0
.end method

.method public blacklist isOpened()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->isOpened(I)Z

    move-result p0

    return p0
.end method

.method public blacklist onSmsReady(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsService;->onSmsReady(I)V

    return-void
.end method

.method public blacklist queryCapabilityConfiguration(III)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->queryCapabilityConfiguration(III)Z

    move-result p0

    return p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public blacklist sendRpSmma(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->sendRpSmma(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/ims/internal/IImsService;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method public blacklist setRetryCount(III)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->setRetryCount(III)V

    return-void
.end method

.method public blacklist setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V

    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    invoke-interface {v0, p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setUiTTYMode(IILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsService;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsService;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/android/ims/internal/IImsService;->open(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->SERVICE_ID:I

    return p1
.end method

.method public blacklist stopLocalRingBackTone()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsService;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public blacklist turnOffIms()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    return-void
.end method

.method public blacklist turnOnIms()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsService;

    move-result-object v0

    iget p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    invoke-interface {v0, p0}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    return-void
.end method
