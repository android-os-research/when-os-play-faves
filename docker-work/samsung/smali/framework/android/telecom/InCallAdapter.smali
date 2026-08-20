.class public final Landroid/telecom/InCallAdapter;
.super Ljava/lang/Object;
.source "InCallAdapter.java"


# instance fields
.field private final greylist-max-o mAdapter:Lcom/android/internal/telecom/IInCallAdapter;


# direct methods
.method public constructor greylist-max-o <init>(Lcom/android/internal/telecom/IInCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 323
    .local p2, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 325
    goto :goto_7

    .line 324
    :catch_6
    move-exception v0

    .line 326
    :goto_7
    return-void
.end method

.method public greylist-max-o answerCall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .line 60
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->answerCall(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 62
    goto :goto_7

    .line 61
    :catch_6
    move-exception v0

    .line 63
    :goto_7
    return-void
.end method

.method public greylist-max-o conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 310
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 312
    goto :goto_7

    .line 311
    :catch_6
    move-exception v0

    .line 313
    :goto_7
    return-void
.end method

.method public greylist-max-o deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 75
    goto :goto_7

    .line 74
    :catch_6
    move-exception v0

    .line 76
    :goto_7
    return-void
.end method

.method public greylist-max-o disconnectCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 143
    goto :goto_7

    .line 142
    :catch_6
    move-exception v0

    .line 144
    :goto_7
    return-void
.end method

.method public blacklist enterBackgroundAudioProcessing(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 201
    goto :goto_7

    .line 200
    :catch_6
    move-exception v0

    .line 202
    :goto_7
    return-void
.end method

.method public blacklist exitBackgroundAudioProcessing(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "shouldRing"    # Z

    .line 209
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 211
    goto :goto_7

    .line 210
    :catch_6
    move-exception v0

    .line 212
    :goto_7
    return-void
.end method

.method public greylist-max-o handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "destAcct"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "videoState"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 543
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 545
    goto :goto_7

    .line 544
    :catch_6
    move-exception v0

    .line 546
    :goto_7
    return-void
.end method

.method public greylist-max-o holdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->holdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 155
    goto :goto_7

    .line 154
    :catch_6
    move-exception v0

    .line 156
    :goto_7
    return-void
.end method

.method public greylist-max-o mergeConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 348
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mergeConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 350
    goto :goto_7

    .line 349
    :catch_6
    move-exception v0

    .line 351
    :goto_7
    return-void
.end method

.method public greylist-max-o mute(Z)V
    .registers 3
    .param p1, "shouldMute"    # Z

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 179
    goto :goto_7

    .line 178
    :catch_6
    move-exception v0

    .line 180
    :goto_7
    return-void
.end method

.method public greylist-max-o phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .line 297
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 299
    goto :goto_7

    .line 298
    :catch_6
    move-exception v0

    .line 300
    :goto_7
    return-void
.end method

.method public greylist-max-o playDtmfTone(Ljava/lang/String;C)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 242
    goto :goto_7

    .line 241
    :catch_6
    move-exception v0

    .line 243
    :goto_7
    return-void
.end method

.method public greylist-max-o postDialContinue(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .line 282
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->postDialContinue(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 284
    goto :goto_7

    .line 283
    :catch_6
    move-exception v0

    .line 285
    :goto_7
    return-void
.end method

.method public greylist-max-o pullExternalCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 370
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->pullExternalCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 372
    goto :goto_7

    .line 371
    :catch_6
    move-exception v0

    .line 373
    :goto_7
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 428
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 429
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 432
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 431
    :catch_e
    move-exception v0

    .line 433
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 444
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 445
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 448
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 447
    :catch_e
    move-exception v0

    .line 449
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 412
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    iget-object v1, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 416
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_f

    .line 415
    :catch_e
    move-exception v0

    .line 417
    :goto_f
    return-void
.end method

.method public greylist-max-o putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 398
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 400
    goto :goto_7

    .line 399
    :catch_6
    move-exception v0

    .line 401
    :goto_7
    return-void
.end method

.method public blacklist rejectCall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectReason"    # I

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCallWithReason(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 102
    goto :goto_7

    .line 101
    :catch_6
    move-exception v0

    .line 103
    :goto_7
    return-void
.end method

.method public greylist-max-o rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;

    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 89
    goto :goto_7

    .line 88
    :catch_6
    move-exception v0

    .line 90
    :goto_7
    return-void
.end method

.method public greylist-max-o removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 460
    goto :goto_7

    .line 459
    :catch_6
    move-exception v0

    .line 461
    :goto_7
    return-void
.end method

.method public greylist-max-o requestBluetoothAudio(Ljava/lang/String;)V
    .registers 4
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 224
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 226
    goto :goto_8

    .line 225
    :catch_7
    move-exception v0

    .line 227
    :goto_8
    return-void
.end method

.method public greylist-max-o respondToRttRequest(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "accept"    # Z

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 507
    goto :goto_7

    .line 506
    :catch_6
    move-exception v0

    .line 508
    :goto_7
    return-void
.end method

.method public greylist-max-o sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "targetSdkVer"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 385
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telecom/IInCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 387
    goto :goto_7

    .line 386
    :catch_6
    move-exception v0

    .line 388
    :goto_7
    return-void
.end method

.method public greylist-max-o sendRttRequest(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 492
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->sendRttRequest(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 494
    goto :goto_7

    .line 493
    :catch_6
    move-exception v0

    .line 495
    :goto_7
    return-void
.end method

.method public greylist-max-o setAudioRoute(I)V
    .registers 4
    .param p1, "route"    # I

    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(ILjava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    .line 191
    goto :goto_8

    .line 190
    :catch_7
    move-exception v0

    .line 192
    :goto_8
    return-void
.end method

.method public greylist-max-o setRttMode(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 526
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->setRttMode(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 528
    goto :goto_7

    .line 527
    :catch_6
    move-exception v0

    .line 529
    :goto_7
    return-void
.end method

.method public greylist-max-o splitFromConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 338
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->splitFromConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 340
    goto :goto_7

    .line 339
    :catch_6
    move-exception v0

    .line 341
    :goto_7
    return-void
.end method

.method public greylist-max-o stopDtmfTone(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 256
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 258
    goto :goto_7

    .line 257
    :catch_6
    move-exception v0

    .line 259
    :goto_7
    return-void
.end method

.method public greylist-max-o stopRtt(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 515
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopRtt(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 517
    goto :goto_7

    .line 516
    :catch_6
    move-exception v0

    .line 518
    :goto_7
    return-void
.end method

.method public greylist-max-o swapConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 358
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->swapConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 360
    goto :goto_7

    .line 359
    :catch_6
    move-exception v0

    .line 361
    :goto_7
    return-void
.end method

.method public blacklist transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "targetNumber"    # Landroid/net/Uri;
    .param p3, "isConfirmationRequired"    # Z

    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 118
    goto :goto_7

    .line 117
    :catch_6
    move-exception v0

    .line 119
    :goto_7
    return-void
.end method

.method public blacklist transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .line 129
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->consultativeTransfer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 131
    goto :goto_7

    .line 130
    :catch_6
    move-exception v0

    .line 132
    :goto_7
    return-void
.end method

.method public greylist-max-o turnProximitySensorOff(Z)V
    .registers 3
    .param p1, "screenOnImmediately"    # Z

    .line 482
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOffProximitySensor(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 484
    goto :goto_7

    .line 483
    :catch_6
    move-exception v0

    .line 485
    :goto_7
    return-void
.end method

.method public greylist-max-o turnProximitySensorOn()V
    .registers 2

    .line 468
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/IInCallAdapter;->turnOnProximitySensor()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 470
    goto :goto_7

    .line 469
    :catch_6
    move-exception v0

    .line 471
    :goto_7
    return-void
.end method

.method public greylist-max-o unholdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/telecom/InCallAdapter;->mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->unholdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 167
    goto :goto_7

    .line 166
    :catch_6
    move-exception v0

    .line 168
    :goto_7
    return-void
.end method
