.class public Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;
.super Ljava/lang/Object;
.source "MmTelInterfaceAdapter.java"


# static fields
.field protected static final blacklist TAG:Ljava/lang/String; = "MmTelInterfaceAdapter"


# instance fields
.field protected blacklist mBinder:Landroid/os/IBinder;

.field protected blacklist mSlotId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mSlotId:I

    return-void
.end method

.method private blacklist getInterface()Lcom/android/ims/internal/IImsMMTelFeature;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->mBinder:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    .line 131
    :cond_9
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Binder not Available"

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist acknowledgeSms(IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSms(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsReport(IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acknowledgeSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSmsReport(IIII)V

    return-void
.end method

.method public blacklist acknowledgeSmsWithPdu(III[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MmTelInterfaceAdapter"

    const-string v1, "acknowledgeSmsWithPdu"

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/ims/internal/IImsMMTelFeature;->acknowledgeSmsWithPdu(III[B)V

    return-void
.end method

.method public blacklist addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist changeAudioPath(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->changeAudioPath(II)V

    return-void
.end method

.method public blacklist createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

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

    .line 59
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->endSession(I)V

    return-void
.end method

.method public blacklist getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

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

    .line 71
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getFeatureStatus()I

    move-result p0

    return p0
.end method

.method public blacklist getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

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

    .line 95
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSmsFormat(I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSmsFormat["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->getSmsFormat(I)Ljava/lang/String;

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

    .line 199
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getUtInterface()Lcom/android/ims/internal/IImsUt;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->getUtInterface()Lcom/android/ims/internal/IImsUt;

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

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->isCmcEmergencyCallSupported(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isConnected(II)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->isConnected(II)Z

    move-result p0

    return p0
.end method

.method public blacklist isOpened()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->isOpened()Z

    move-result p0

    return p0
.end method

.method public blacklist onSmsReady(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmsReady["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->onSmsReady(I)V

    return-void
.end method

.method public blacklist queryCapabilityConfiguration(III)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/ims/internal/IImsMMTelFeature;->removeRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V

    return-void
.end method

.method public blacklist sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void
.end method

.method public blacklist sendRpSmma(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MmTelInterfaceAdapter"

    const-string v1, "sendRpSmma"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->sendRpSmma(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSms["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MmTelInterfaceAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/android/ims/internal/IImsMMTelFeature;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    return-void
.end method

.method public blacklist setRetryCount(III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRetryCount["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->setRetryCount(III)V

    return-void
.end method

.method public blacklist setSecImsMmTelEventListener(ILcom/android/ims/internal/ISecImsMmTelEventListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSmsListener["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelInterfaceAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    return-void
.end method

.method public blacklist setUiTTYMode(ILandroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setUiTTYMode(ILandroid/os/Message;)V

    return-void
.end method

.method public blacklist setVideoCrtAudio(IZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->setVideoCrtAudio(IZ)V

    return-void
.end method

.method public blacklist startLocalRingBackTone(III)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/ims/internal/IImsMMTelFeature;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public blacklist startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/ims/internal/IImsMMTelFeature;->startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p0

    return p0
.end method

.method public blacklist stopLocalRingBackTone()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public blacklist turnOffIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOffIms()V

    return-void
.end method

.method public blacklist turnOnIms()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/MmTelInterfaceAdapter;->getInterface()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/ims/internal/IImsMMTelFeature;->turnOnIms()V

    return-void
.end method
