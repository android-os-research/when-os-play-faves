.class public Lcom/android/ims/ImsCall$Listener;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/ImsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onCallCancelTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 512
    return-void
.end method

.method public blacklist onCallCancelTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 503
    return-void
.end method

.method public blacklist onCallConferenceExtendFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 290
    return-void
.end method

.method public blacklist onCallConferenceExtendReceived(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 300
    return-void
.end method

.method public blacklist onCallConferenceExtended(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "newCall"    # Lcom/android/ims/ImsCall;

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 278
    return-void
.end method

.method public blacklist onCallConferenceStateUpdated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsConferenceState;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 352
    return-void
.end method

.method public blacklist onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 387
    return-void
.end method

.method public blacklist onCallHandover(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 445
    return-void
.end method

.method public blacklist onCallHandoverFailed(Lcom/android/ims/ImsCall;IILandroid/telephony/ims/ImsReasonInfo;)V
    .registers 5
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "srcAccessTech"    # I
    .param p3, "targetAccessTech"    # I
    .param p4, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 484
    return-void
.end method

.method public blacklist onCallHeld(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 161
    return-void
.end method

.method public blacklist onCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 172
    return-void
.end method

.method public blacklist onCallHoldReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 182
    return-void
.end method

.method public blacklist onCallInitiating(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 107
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 310
    return-void
.end method

.method public blacklist onCallInviteParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 321
    return-void
.end method

.method public blacklist onCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 237
    return-void
.end method

.method public blacklist onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "peerCall"    # Lcom/android/ims/ImsCall;
    .param p3, "swapCalls"    # Z

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 226
    return-void
.end method

.method public blacklist onCallProgressing(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 117
    return-void
.end method

.method public blacklist onCallQualityChanged(Lcom/android/ims/ImsCall;Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;

    .line 560
    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestDelivered(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 331
    return-void
.end method

.method public blacklist onCallRemoveParticipantsRequestFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 342
    return-void
.end method

.method public blacklist onCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 203
    return-void
.end method

.method public blacklist onCallResumeReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 213
    return-void
.end method

.method public blacklist onCallResumed(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 192
    return-void
.end method

.method public blacklist onCallSessionDtmfReceived(Lcom/android/ims/ImsCall;C)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "digit"    # C

    .line 551
    return-void
.end method

.method public blacklist onCallSessionRtpHeaderExtensionsReceived(Lcom/android/ims/ImsCall;Ljava/util/Set;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 569
    .local p2, "rtpHeaderExtensionData":Ljava/util/Set;, "Ljava/util/Set<Landroid/telephony/ims/RtpHeaderExtension;>;"
    return-void
.end method

.method public blacklist onCallSessionTransferFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 543
    return-void
.end method

.method public blacklist onCallSessionTransferred(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 540
    return-void
.end method

.method public blacklist onCallSessionTtyModeReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I

    .line 433
    return-void
.end method

.method public blacklist onCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 138
    return-void
.end method

.method public blacklist onCallStarted(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 127
    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 398
    return-void
.end method

.method public blacklist onCallStateChanged(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "state"    # I

    .line 413
    return-void
.end method

.method public blacklist onCallSuppServiceReceived(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 423
    return-void
.end method

.method public blacklist onCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 151
    return-void
.end method

.method public blacklist onCallUpdateFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 257
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/ImsCall$Listener;->onCallError(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    .line 258
    return-void
.end method

.method public blacklist onCallUpdateReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 267
    return-void
.end method

.method public blacklist onCallUpdated(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "call"    # Lcom/android/ims/ImsCall;

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$Listener;->onCallStateChanged(Lcom/android/ims/ImsCall;)V

    .line 247
    return-void
.end method

.method public blacklist onCallUssdMessageReceived(Lcom/android/ims/ImsCall;ILjava/lang/String;)V
    .registers 4
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .param p2, "mode"    # I
    .param p3, "ussdMessage"    # Ljava/lang/String;

    .line 374
    return-void
.end method

.method public blacklist onConferenceParticipantsStateChanged(Lcom/android/ims/ImsCall;Ljava/util/List;)V
    .registers 3
    .param p1, "call"    # Lcom/android/ims/ImsCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ims/ImsCall;",
            "Ljava/util/List<",
            "Lcom/android/ims/internal/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .line 363
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/android/ims/internal/ConferenceParticipant;>;"
    return-void
.end method

.method public blacklist onImsCallEvent(Lcom/android/ims/ImsCall;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 522
    return-void
.end method

.method public blacklist onMultipartyStateChanged(Lcom/android/ims/ImsCall;Z)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "isMultiParty"    # Z

    .line 494
    return-void
.end method

.method public blacklist onRttAudioIndicatorChanged(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 532
    return-void
.end method

.method public blacklist onRttMessageReceived(Lcom/android/ims/ImsCall;Ljava/lang/String;)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "message"    # Ljava/lang/String;

    .line 472
    return-void
.end method

.method public blacklist onRttModifyRequestReceived(Lcom/android/ims/ImsCall;)V
    .registers 2
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;

    .line 453
    return-void
.end method

.method public blacklist onRttModifyResponseReceived(Lcom/android/ims/ImsCall;I)V
    .registers 3
    .param p1, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p2, "status"    # I

    .line 463
    return-void
.end method
