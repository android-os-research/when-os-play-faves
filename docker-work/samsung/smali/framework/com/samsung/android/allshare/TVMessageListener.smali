.class Lcom/samsung/android/allshare/TVMessageListener;
.super Ljava/lang/Thread;
.source "IAppControlAPI.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TVMessageListener"


# instance fields
.field blacklist mBuf:Ljava/nio/ByteBuffer;

.field blacklist mCbuf:Ljava/nio/CharBuffer;

.field blacklist mContext:Landroid/content/Context;

.field private blacklist mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

.field blacklist mInput:Ljava/nio/channels/ReadableByteChannel;

.field blacklist mProtocol:I

.field blacklist mRebuf:[B

.field public blacklist mRunThread:Z

.field blacklist mSender:Lcom/samsung/android/allshare/TVMessageSender;

.field blacklist mSocket:Ljava/net/Socket;

.field blacklist mStrCamera:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/allshare/TVMessageSender;)V
    .registers 5
    .param p1, "sender"    # Lcom/samsung/android/allshare/TVMessageSender;

    .line 524
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 493
    const/16 v1, 0x200

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mRebuf:[B

    .line 499
    const-string v2, "live_camera.jpg"

    iput-object v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mStrCamera:Ljava/lang/String;

    .line 501
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mProtocol:I

    .line 503
    iput-boolean v2, p0, Lcom/samsung/android/allshare/TVMessageListener;->mRunThread:Z

    .line 505
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 511
    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 526
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    .line 527
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mCbuf:Ljava/nio/CharBuffer;

    .line 531
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mProtocol:I

    .line 533
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSender:Lcom/samsung/android/allshare/TVMessageSender;

    .line 535
    if-eqz p1, :cond_32

    .line 536
    iget-object v0, p1, Lcom/samsung/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    iput-object v0, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    .line 538
    :cond_32
    return-void
.end method


# virtual methods
.method public blacklist deliverMsgData(III)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 547
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 549
    .local v0, "isc":Lcom/samsung/android/allshare/EventSync;
    iput p1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 550
    iput p2, v0, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    .line 551
    iput p3, v0, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    .line 561
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_13

    .line 562
    invoke-interface {v1, v0}, Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/samsung/android/allshare/EventSync;)V

    goto :goto_1a

    .line 564
    :cond_13
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :goto_1a
    return-void
.end method

.method public blacklist deliverMsgData(IIILjava/lang/String;)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "str"    # Ljava/lang/String;

    .line 572
    new-instance v0, Lcom/samsung/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/samsung/android/allshare/EventSync;-><init>()V

    .line 573
    .local v0, "isc":Lcom/samsung/android/allshare/EventSync;
    iput p1, v0, Lcom/samsung/android/allshare/EventSync;->mWhat:I

    .line 574
    iput p2, v0, Lcom/samsung/android/allshare/EventSync;->mArg1:I

    .line 575
    iput p3, v0, Lcom/samsung/android/allshare/EventSync;->mArg2:I

    .line 576
    iput-object p4, v0, Lcom/samsung/android/allshare/EventSync;->mStr:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_15

    .line 586
    invoke-interface {v1, v0}, Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/samsung/android/allshare/EventSync;)V

    goto :goto_1c

    .line 588
    :cond_15
    const-string v1, "TVMessageListener"

    const-string v2, "EventListener is null !!!"

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :goto_1c
    return-void
.end method

.method public whitelist test-api run()V
    .registers 16

    .line 601
    const-string v0, ""

    const-string v1, "TVMessageListener"

    const/4 v2, 0x0

    .line 602
    .local v2, "inStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    if-nez v3, :cond_a

    .line 603
    return-void

    .line 604
    :cond_a
    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    if-nez v3, :cond_11

    .line 605
    return-void

    .line 608
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 609
    invoke-static {v2}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1e} :catch_1f0
    .catchall {:try_start_11 .. :try_end_1e} :catchall_1ee

    .line 615
    if-eqz v2, :cond_29

    .line 617
    :try_start_20
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    .line 620
    :goto_23
    goto :goto_29

    .line 618
    :catch_24
    move-exception v3

    .line 619
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_23

    .line 629
    :cond_29
    :goto_29
    :try_start_29
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2b} :catch_1d4
    .catchall {:try_start_29 .. :try_end_2b} :catchall_1d2

    if-nez v3, :cond_3a

    .line 752
    if-eqz v3, :cond_38

    .line 753
    :try_start_2f
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_38

    .line 755
    :catch_33
    move-exception v3

    .line 756
    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_39

    .line 757
    .end local v3    # "e2":Ljava/io/IOException;
    :cond_38
    :goto_38
    nop

    .line 630
    :goto_39
    return-void

    .line 631
    :cond_3a
    :goto_3a
    :try_start_3a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-ne v3, p0, :cond_1c5

    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    move v4, v3

    .local v4, "nRecv":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c5

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TVMessageListener data received "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 647
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 649
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 650
    .local v3, "tvStatus":B
    iget-object v5, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    .line 652
    .local v5, "targetLen":S
    const/16 v6, 0x200

    new-array v7, v6, [B

    .line 653
    .local v7, "srebuf":[B
    if-le v5, v6, :cond_a3

    .line 654
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "targetLen = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " is larger than MaxSize:512,discard is this pack."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 658
    goto :goto_3a

    .line 660
    :cond_a3
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 664
    iget-object v8, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v8

    .line 665
    .local v8, "dataLen":S
    iget-object v10, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v10

    .line 667
    .local v10, "protocolId":S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tvStatus :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " targetLen :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dataLen :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " protocolId :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sparse-switch v10, :sswitch_data_20a

    goto/16 :goto_1bd

    .line 719
    :sswitch_ef
    const-string v6, "IAPP_EXIT"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 723
    .local v6, "exit":S
    const/16 v11, 0x12c

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 724
    goto/16 :goto_1bd

    .line 692
    .end local v6    # "exit":S
    :sswitch_101
    const-string v6, "IAPP_STATUS"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 694
    .local v6, "statusType":S
    iget-object v9, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v9

    .line 695
    .local v9, "statusVal":S
    const/16 v11, 0xc8

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 696
    goto/16 :goto_1bd

    .line 735
    .end local v6    # "statusType":S
    .end local v9    # "statusVal":S
    :sswitch_119
    const-string v6, "IAPP_AUTHENTICATION_TIMEOUT"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const/16 v6, 0x65

    invoke-virtual {p0, v6, v9, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 737
    goto/16 :goto_1bd

    .line 727
    :sswitch_125
    const-string v6, "IAPP_AUTHENTICATION"

    invoke-static {v1, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 731
    .local v6, "authresponse":S
    const/16 v11, 0x64

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 732
    goto/16 :goto_1bd

    .line 686
    .end local v6    # "authresponse":S
    :sswitch_137
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 687
    .local v6, "remoteType":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IAPP_REMOTE_INPUT_TYPE : remoteType :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/16 v11, 0xa

    invoke-virtual {p0, v11, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 689
    goto :goto_1bd

    .line 699
    .end local v6    # "remoteType":I
    :sswitch_159
    iget-object v11, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v11

    .line 700
    .local v11, "stringLength":S
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IAPP_KEYBOARD_SYNC : stringLength :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v12}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v12, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v7, v9, v11}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 703
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v7, v9, v11}, Ljava/lang/String;-><init>([BII)V

    .line 705
    .local v12, "keySync":Ljava/lang/String;
    const-string v13, "AA=="

    invoke-virtual {v12, v13}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x3

    if-eqz v13, :cond_18c

    .line 706
    invoke-virtual {p0, v14, v11, v9, v0}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    .line 707
    goto :goto_1bd

    .line 710
    :cond_18c
    new-array v6, v6, [B

    .line 711
    .local v6, "sync":[B
    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    move-object v6, v13

    .line 713
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V

    .line 715
    .local v13, "keySync2":Ljava/lang/String;
    invoke-virtual {p0, v14, v11, v9, v13}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(IIILjava/lang/String;)V

    .line 716
    goto :goto_1bd

    .line 672
    .end local v6    # "sync":[B
    .end local v11    # "stringLength":S
    .end local v12    # "keySync":Ljava/lang/String;
    .end local v13    # "keySync2":Ljava/lang/String;
    :sswitch_19d
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v6

    .line 673
    .local v6, "response":S
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IAPP_REMOCON : response :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {p0, v9, v6, v9}, Lcom/samsung/android/allshare/TVMessageListener;->deliverMsgData(III)V

    .line 683
    nop

    .line 744
    .end local v6    # "response":S
    :goto_1bd
    iget-object v6, p0, Lcom/samsung/android/allshare/TVMessageListener;->mBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1c2
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_1c2} :catch_1d4
    .catchall {:try_start_3a .. :try_end_1c2} :catchall_1d2

    .line 746
    nop

    .end local v3    # "tvStatus":B
    .end local v5    # "targetLen":S
    .end local v7    # "srebuf":[B
    .end local v8    # "dataLen":S
    .end local v10    # "protocolId":S
    goto/16 :goto_3a

    .line 752
    .end local v4    # "nRecv":I
    :cond_1c5
    :try_start_1c5
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v3, :cond_1cc

    .line 753
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1cc} :catch_1cd

    .line 757
    :cond_1cc
    :goto_1cc
    goto :goto_1e0

    .line 755
    :catch_1cd
    move-exception v3

    .line 756
    .local v3, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 758
    .end local v3    # "e2":Ljava/io/IOException;
    goto :goto_1e0

    .line 751
    :catchall_1d2
    move-exception v3

    goto :goto_1e1

    .line 747
    :catch_1d4
    move-exception v3

    .line 749
    .local v3, "e":Ljava/io/IOException;
    :try_start_1d5
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d8
    .catchall {:try_start_1d5 .. :try_end_1d8} :catchall_1d2

    .line 752
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_1d8
    iget-object v3, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v3, :cond_1cc

    .line 753
    invoke-interface {v3}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1df} :catch_1cd

    goto :goto_1cc

    .line 761
    :goto_1e0
    return-void

    .line 752
    :goto_1e1
    :try_start_1e1
    iget-object v4, p0, Lcom/samsung/android/allshare/TVMessageListener;->mInput:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v4, :cond_1e8

    .line 753
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e8} :catch_1e9

    .line 757
    :cond_1e8
    goto :goto_1ed

    .line 755
    :catch_1e9
    move-exception v4

    .line 756
    .local v4, "e2":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 758
    .end local v4    # "e2":Ljava/io/IOException;
    :goto_1ed
    throw v3

    .line 615
    :catchall_1ee
    move-exception v3

    goto :goto_1ff

    .line 610
    :catch_1f0
    move-exception v3

    .line 612
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_1f1
    invoke-static {v1, v0, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_1ee

    .line 615
    if-eqz v2, :cond_1fe

    .line 617
    :try_start_1f6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f9
    .catch Ljava/io/IOException; {:try_start_1f6 .. :try_end_1f9} :catch_1fa

    .line 620
    goto :goto_1fe

    .line 618
    :catch_1fa
    move-exception v4

    .line 619
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 613
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1fe
    :goto_1fe
    return-void

    .line 615
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1ff
    if-eqz v2, :cond_209

    .line 617
    :try_start_201
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_201 .. :try_end_204} :catch_205

    .line 620
    goto :goto_209

    .line 618
    :catch_205
    move-exception v4

    .line 619
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 622
    .end local v4    # "e":Ljava/io/IOException;
    :cond_209
    :goto_209
    throw v3

    :sswitch_data_20a
    .sparse-switch
        0x0 -> :sswitch_19d
        0x3 -> :sswitch_159
        0xa -> :sswitch_137
        0x64 -> :sswitch_125
        0x65 -> :sswitch_119
        0xc8 -> :sswitch_101
        0x12c -> :sswitch_ef
    .end sparse-switch
.end method

.method public blacklist setOnEventListener(Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 514
    iput-object p1, p0, Lcom/samsung/android/allshare/TVMessageListener;->mEventListener:Lcom/samsung/android/allshare/IAppControlAPI$IControlEventListener;

    .line 515
    return-void
.end method

.method public blacklist stopThread()V
    .registers 1

    .line 596
    return-void
.end method
