.class public abstract Lcom/sec/ims/volte2/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_acceptECTRequest:I = 0x26

.field static final TRANSACTION_cancelTransfer:I = 0x17

.field static final TRANSACTION_extendToConference:I = 0x24

.field static final TRANSACTION_getCallId:I = 0x5

.field static final TRANSACTION_getCallProfile:I = 0x1

.field static final TRANSACTION_getCallStateOrdinal:I = 0x6

.field static final TRANSACTION_getCmcType:I = 0x33

.field static final TRANSACTION_getEndReason:I = 0xa

.field static final TRANSACTION_getIncomingInviteRawSip:I = 0x19

.field static final TRANSACTION_getMediaCallProvider:I = 0x2d

.field static final TRANSACTION_getModifyRequestedProfile:I = 0x2

.field static final TRANSACTION_getPhoneId:I = 0x9

.field static final TRANSACTION_getPrevCallStateOrdinal:I = 0x7

.field static final TRANSACTION_getRegistration:I = 0x1a

.field static final TRANSACTION_getRelayChTerminated:I = 0x36

.field static final TRANSACTION_getSessionId:I = 0x8

.field static final TRANSACTION_getUsingCamera:I = 0x2c

.field static final TRANSACTION_getVideoCrbtSupportType:I = 0x34

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_holdVideo:I = 0x28

.field static final TRANSACTION_info:I = 0x18

.field static final TRANSACTION_inviteGroupParticipant:I = 0x22

.field static final TRANSACTION_inviteParticipants:I = 0x20

.field static final TRANSACTION_merge:I = 0x1e

.field static final TRANSACTION_pulling:I = 0xc

.field static final TRANSACTION_recording:I = 0x15

.field static final TRANSACTION_registerSessionEventListener:I = 0x3

.field static final TRANSACTION_reinvite:I = 0x14

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_rejectECTRequest:I = 0x27

.field static final TRANSACTION_removeGroupParticipant:I = 0x23

.field static final TRANSACTION_removeParticipants:I = 0x21

.field static final TRANSACTION_requestCallDataUsage:I = 0x2e

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_resumeVideo:I = 0x29

.field static final TRANSACTION_sendDtmf:I = 0x2f

.field static final TRANSACTION_sendImsCallEvent:I = 0x1d

.field static final TRANSACTION_sendText:I = 0x32

.field static final TRANSACTION_setEpdgState:I = 0x1b

.field static final TRANSACTION_setEpdgStateNoNotify:I = 0x1c

.field static final TRANSACTION_setMute:I = 0x13

.field static final TRANSACTION_setRelayChTerminated:I = 0x35

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startCameraForProvider:I = 0x2a

.field static final TRANSACTION_startConference:I = 0x1f

.field static final TRANSACTION_startDtmf:I = 0x30

.field static final TRANSACTION_startECT:I = 0x25

.field static final TRANSACTION_stopCameraForProvider:I = 0x2b

.field static final TRANSACTION_stopDtmf:I = 0x31

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_transfer:I = 0x16

.field static final TRANSACTION_unregisterSessionEventListener:I = 0x4

.field static final TRANSACTION_update:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 207
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 208
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSession;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 216
    if-nez p0, :cond_4

    .line 217
    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_4
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 220
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v1, :cond_14

    .line 221
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    return-object v1

    .line 223
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 227
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const-string v0, "com.sec.ims.volte2.IImsCallSession"

    .line 232
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 233
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    :cond_d
    packed-switch p1, :pswitch_data_342

    .line 243
    packed-switch p1, :pswitch_data_348

    .line 707
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 239
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    return v1

    .line 700
    :pswitch_1c
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getRelayChTerminated()Z

    move-result v2

    .line 701
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 703
    goto/16 :goto_341

    .line 692
    .end local v2    # "_result":Z
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 693
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 694
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->setRelayChTerminated(Z)V

    .line 695
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    goto/16 :goto_341

    .line 684
    .end local v2    # "_arg0":Z
    :pswitch_37
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getVideoCrbtSupportType()I

    move-result v2

    .line 685
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    goto/16 :goto_341

    .line 677
    .end local v2    # "_result":I
    :pswitch_43
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCmcType()I

    move-result v2

    .line 678
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    goto/16 :goto_341

    .line 667
    .end local v2    # "_result":I
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 670
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 671
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->sendText(Ljava/lang/String;I)V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    goto/16 :goto_341

    .line 660
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_62
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->stopDtmf()V

    .line 661
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    goto/16 :goto_341

    .line 652
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 653
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startDtmf(I)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    goto/16 :goto_341

    .line 639
    .end local v2    # "_arg0":I
    :pswitch_79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 641
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 643
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    .line 644
    .local v4, "_arg2":Landroid/os/Message;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->sendDtmf(IILandroid/os/Message;)V

    .line 646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_341

    .line 632
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Message;
    :pswitch_94
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->requestCallDataUsage()V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    goto/16 :goto_341

    .line 625
    :pswitch_9c
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getMediaCallProvider()Lcom/sec/ims/volte2/IImsMediaCallProvider;

    move-result-object v2

    .line 626
    .local v2, "_result":Lcom/sec/ims/volte2/IImsMediaCallProvider;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 628
    goto/16 :goto_341

    .line 618
    .end local v2    # "_result":Lcom/sec/ims/volte2/IImsMediaCallProvider;
    :pswitch_a8
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getUsingCamera()Z

    move-result v2

    .line 619
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 620
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 621
    goto/16 :goto_341

    .line 610
    .end local v2    # "_result":Z
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 611
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 612
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->stopCameraForProvider(Z)V

    .line 613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 614
    goto/16 :goto_341

    .line 601
    .end local v2    # "_arg0":Z
    :pswitch_c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 602
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startCameraForProvider(I)V

    .line 604
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    goto/16 :goto_341

    .line 594
    .end local v2    # "_arg0":I
    :pswitch_d2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->resumeVideo()V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    goto/16 :goto_341

    .line 588
    :pswitch_da
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->holdVideo()V

    .line 589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    goto/16 :goto_341

    .line 581
    :pswitch_e2
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->rejectECTRequest()I

    move-result v2

    .line 582
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    goto/16 :goto_341

    .line 574
    .end local v2    # "_result":I
    :pswitch_ee
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->acceptECTRequest()I

    move-result v2

    .line 575
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    goto/16 :goto_341

    .line 563
    .end local v2    # "_result":I
    :pswitch_fa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 565
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startECT(ILjava/lang/String;)I

    move-result v4

    .line 568
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    goto/16 :goto_341

    .line 554
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 556
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 558
    goto/16 :goto_341

    .line 545
    .end local v2    # "_arg0":[Ljava/lang/String;
    :pswitch_120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->removeGroupParticipant(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_341

    .line 536
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_12f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->inviteGroupParticipant(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    goto/16 :goto_341

    .line 527
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_13e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 528
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->removeParticipants(I)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    goto/16 :goto_341

    .line 518
    .end local v2    # "_arg0":I
    :pswitch_14d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 519
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->inviteParticipants(I)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    goto/16 :goto_341

    .line 507
    .end local v2    # "_arg0":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, "_arg0":[Ljava/lang/String;
    sget-object v3, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/data/CallProfile;

    .line 510
    .local v3, "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 513
    goto/16 :goto_341

    .line 496
    .end local v2    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 498
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 499
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->merge(II)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_341

    .line 485
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_186
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 488
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    goto/16 :goto_341

    .line 476
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_19d
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 477
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->setEpdgStateNoNotify(Z)V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    goto/16 :goto_341

    .line 467
    .end local v2    # "_arg0":Z
    :pswitch_1ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 468
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->setEpdgState(Z)V

    .line 470
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_341

    .line 459
    .end local v2    # "_arg0":Z
    :pswitch_1bb
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 460
    .local v2, "_result":Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    goto/16 :goto_341

    .line 452
    .end local v2    # "_result":Lcom/sec/ims/ImsRegistration;
    :pswitch_1c7
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 454
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 455
    goto/16 :goto_341

    .line 442
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->info(ILjava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    goto/16 :goto_341

    .line 435
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1e6
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->cancelTransfer()V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    goto/16 :goto_341

    .line 427
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 428
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->transfer(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    goto/16 :goto_341

    .line 416
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 418
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 419
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->recording(ILjava/lang/String;)V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_341

    .line 409
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_210
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->reinvite()V

    .line 410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    goto/16 :goto_341

    .line 401
    :pswitch_218
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 402
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->setMute(Z)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    goto/16 :goto_341

    .line 388
    .end local v2    # "_arg0":Z
    :pswitch_227
    sget-object v2, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/CallProfile;

    .line 390
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 392
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->update(Lcom/sec/ims/volte2/data/CallProfile;ILjava/lang/String;)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    goto/16 :goto_341

    .line 381
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_242
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->resume()V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    goto/16 :goto_341

    .line 373
    :pswitch_24a
    sget-object v2, Lcom/sec/ims/volte2/data/MediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/MediaProfile;

    .line 374
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/MediaProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    goto/16 :goto_341

    .line 364
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/MediaProfile;
    :pswitch_25d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 365
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->terminate(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    goto/16 :goto_341

    .line 355
    .end local v2    # "_arg0":I
    :pswitch_26c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 356
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->reject(I)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_341

    .line 346
    .end local v2    # "_arg0":I
    :pswitch_27b
    sget-object v2, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/CallProfile;

    .line 347
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 348
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_341

    .line 334
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_28e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/ims/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/Dialog;

    .line 337
    .local v3, "_arg1":Lcom/sec/ims/Dialog;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 338
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I

    move-result v4

    .line 339
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    goto/16 :goto_341

    .line 322
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/ims/Dialog;
    .end local v4    # "_result":I
    :pswitch_2a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .restart local v2    # "_arg0":Ljava/lang/String;
    sget-object v3, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/volte2/data/CallProfile;

    .line 325
    .local v3, "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v4

    .line 327
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto/16 :goto_341

    .line 314
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v4    # "_result":I
    :pswitch_2c4
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getEndReason()I

    move-result v2

    .line 315
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    goto/16 :goto_341

    .line 307
    .end local v2    # "_result":I
    :pswitch_2d0
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getPhoneId()I

    move-result v2

    .line 308
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    goto :goto_341

    .line 300
    .end local v2    # "_result":I
    :pswitch_2db
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getSessionId()I

    move-result v2

    .line 301
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    goto :goto_341

    .line 293
    .end local v2    # "_result":I
    :pswitch_2e6
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getPrevCallStateOrdinal()I

    move-result v2

    .line 294
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    goto :goto_341

    .line 286
    .end local v2    # "_result":I
    :pswitch_2f1
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallStateOrdinal()I

    move-result v2

    .line 287
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    goto :goto_341

    .line 279
    .end local v2    # "_result":I
    :pswitch_2fc
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallId()I

    move-result v2

    .line 280
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    goto :goto_341

    .line 271
    .end local v2    # "_result":I
    :pswitch_307
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v2

    .line 272
    .local v2, "_arg0":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    goto :goto_341

    .line 262
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :pswitch_319
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v2

    .line 263
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto :goto_341

    .line 254
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallSessionEventListener;
    :pswitch_32b
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getModifyRequestedProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 255
    .local v2, "_result":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 257
    goto :goto_341

    .line 247
    .end local v2    # "_result":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_336
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IImsCallSession$Stub;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 248
    .restart local v2    # "_result":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    nop

    .line 710
    .end local v2    # "_result":Lcom/sec/ims/volte2/data/CallProfile;
    :goto_341
    return v1

    :pswitch_data_342
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_348
    .packed-switch 0x1
        :pswitch_336
        :pswitch_32b
        :pswitch_319
        :pswitch_307
        :pswitch_2fc
        :pswitch_2f1
        :pswitch_2e6
        :pswitch_2db
        :pswitch_2d0
        :pswitch_2c4
        :pswitch_2a9
        :pswitch_28e
        :pswitch_27b
        :pswitch_26c
        :pswitch_25d
        :pswitch_24a
        :pswitch_242
        :pswitch_227
        :pswitch_218
        :pswitch_210
        :pswitch_1fd
        :pswitch_1ee
        :pswitch_1e6
        :pswitch_1d3
        :pswitch_1c7
        :pswitch_1bb
        :pswitch_1ac
        :pswitch_19d
        :pswitch_186
        :pswitch_173
        :pswitch_15c
        :pswitch_14d
        :pswitch_13e
        :pswitch_12f
        :pswitch_120
        :pswitch_111
        :pswitch_fa
        :pswitch_ee
        :pswitch_e2
        :pswitch_da
        :pswitch_d2
        :pswitch_c3
        :pswitch_b4
        :pswitch_a8
        :pswitch_9c
        :pswitch_94
        :pswitch_79
        :pswitch_6a
        :pswitch_62
        :pswitch_4f
        :pswitch_43
        :pswitch_37
        :pswitch_28
        :pswitch_1c
    .end packed-switch
.end method
