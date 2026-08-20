.class public Lcom/android/internal/telephony/imsphone/SemImsCallListener;
.super Lcom/android/ims/ImsCall$Listener;
.source "SemImsCallListener.java"


# instance fields
.field private blacklist mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private blacklist mListener:Lcom/android/ims/ImsCall$Listener;

.field private blacklist mListenerType:I

.field private blacklist mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private blacklist mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;


# direct methods
.method public constructor blacklist <init>(Lcom/android/ims/ImsCall$Listener;ILcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 4

    .line 60
    invoke-direct {p0}, Lcom/android/ims/ImsCall$Listener;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    .line 64
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 65
    iget-object p1, p3, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    return-void
.end method

.method private varargs blacklist iLog(Ljava/lang/String;I[Ljava/lang/Object;)V
    .registers 11

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getTelephonyLogger()Lcom/android/internal/telephony/TelephonyLogger;

    move-result-object v1

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    .line 716
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->listenerTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v5, p2

    move-object v6, p3

    .line 715
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/TelephonyLogger;->writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist listenerTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const-string p0, "UnknownListener"

    return-object p0

    :cond_9
    const-string p0, "UssdListener"

    return-object p0

    :cond_c
    const-string p0, "CallListener"

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemImsCallListener"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 677
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallCancelTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 665
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallCancelTransferred(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 336
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3

    .line 323
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3

    .line 404
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V

    return-void
.end method

.method public blacklist onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 454
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 521
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "onCallHandover"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 522
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 9

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 572
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p4, v0, v1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "onCallHandoverFailed"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 573
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/ims/ImsCall$Listener;->onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallHeld"

    const/4 v2, 0x2

    .line 172
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHeld(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 185
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallHoldFailed"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 186
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 197
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onCallHoldReceived"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 198
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallHoldReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallInitiating"

    const/4 v2, 0x2

    .line 78
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallInitiating(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 370
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 276
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallMergeFailed"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 259
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string v2, "onCallMerged"

    invoke-direct {p0, v2, v1, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V

    .line 264
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setImsCallList()V

    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallProgressing"

    const/4 v2, 0x2

    .line 90
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 91
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallProgressing(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 641
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallQualityChanged"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 642
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V

    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 381
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 393
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 222
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallResumeFailed"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 234
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "onCallResumeReceived"

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumeReceived(Lcom/android/ims/ImsCall;)V

    .line 238
    iget v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    if-ne v1, v0, :cond_39

    .line 239
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    const-string v1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    const-string p1, "onCallResumeReceived - Notify SuppServiceNotification for MT conference"

    .line 240
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 241
    new-instance p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 242
    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    const/4 v0, 0x4

    .line 243
    iput v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 244
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    :cond_39
    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallResumed"

    const/4 v2, 0x2

    .line 209
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallResumed(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 629
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallSessionDtmfReceived"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 630
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V

    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 653
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallSessionRtpHeaderExtensionsReceived"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 654
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V

    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 618
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallSessionTransferFailed"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 619
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 612
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onCallSessionTransferred"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 613
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTransferred(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 506
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallSessionTtyModeReceived"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V

    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "onCallStartFailed"

    .line 119
    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 122
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    if-eqz v1, :cond_32

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v4, 0x1f5

    if-eq v1, v4, :cond_32

    .line 123
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    if-eqz v1, :cond_32

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    const-string v2, "onCallStartFailed - Override reasonInfo for TEST"

    .line 126
    invoke-direct {p0, v2, v0, p2}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    move-object p2, v1

    .line 130
    :cond_32
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallStarted"

    const/4 v2, 0x2

    .line 102
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 103
    iget v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    if-ne v0, v2, :cond_1d

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUssdSession()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-eq p1, v0, :cond_1d

    const-string v0, "onCallStarted - ImsCall is not USSD session"

    .line 104
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 107
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStarted(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 466
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .registers 3

    .line 482
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;I)V

    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 494
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onCallSuppServiceReceived"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 495
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "onCallTerminated"

    .line 142
    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 143
    iget v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    if-ne v1, v0, :cond_1f

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUssdSession()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eq p1, v1, :cond_1f

    const-string v1, "onCallTerminated - ImsCall is not USSD session"

    .line 144
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 148
    :cond_1f
    sget-boolean v1, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    if-eqz v1, :cond_56

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    const/16 v4, 0x1f5

    if-eq v1, v4, :cond_56

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemTelephonyTester;->overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    if-eqz v1, :cond_43

    new-array p2, v0, [Ljava/lang/Object;

    aput-object v1, p2, v2

    aput-object p1, p2, v3

    const-string v2, "onCallTerminated - Override reasonInfo for TEST"

    .line 152
    invoke-direct {p0, v2, v0, p2}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    move-object p2, v1

    .line 154
    :cond_43
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mVendorTelephonyTester:Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemTelephonyTester;->isSimulateCallStartFailed()Z

    move-result v0

    if-eqz v0, :cond_56

    const-string v0, "onCallTerminated - Call onCallStartFailed callback for TEST"

    .line 155
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->log(Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void

    .line 161
    :cond_56
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3

    .line 301
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public blacklist onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .registers 2

    .line 311
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdateReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "onCallUpdated"

    const/4 v2, 0x2

    .line 288
    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallUpdated(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 433
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onCallUssdMessageReceived"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 435
    iget v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListenerType:I

    if-ne v0, v2, :cond_26

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/SemPhoneInternal;->setTerminalBasedCallWaitingByDocomoUssdMessage(Ljava/lang/String;)V

    .line 440
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 416
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onConferenceParticipantsStateChanged"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V

    .line 421
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setImsCallList()V

    return-void
.end method

.method public blacklist onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 690
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/ims/ImsCall$Listener;->onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 585
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onMultipartyStateChanged"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {v0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V

    .line 590
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneBase;->setImsCallList()V

    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 601
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onRttAudioIndicatorChanged"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 602
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 557
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onRttMessageReceived"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 558
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 532
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onRttModifyRequestReceived"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V

    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 545
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyLogger;->toSimpleString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "onRttModifyResponseReceived"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->iLog(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 546
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/SemImsCallListener;->mListener:Lcom/android/ims/ImsCall$Listener;

    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V

    return-void
.end method
