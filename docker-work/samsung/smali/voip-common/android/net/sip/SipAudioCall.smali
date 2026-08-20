.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = true

.field private static final greylist-max-o DONT_RELEASE_SOCKET:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String;

.field private static final greylist-max-o RELEASE_SOCKET:Z = true

.field private static final greylist-max-o SESSION_TIMEOUT:I = 0x5

.field private static final greylist-max-o TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private greylist-max-o mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private greylist-max-o mAudioStream:Landroid/net/rtp/AudioStream;

.field private greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mErrorCode:I

.field private greylist-max-o mErrorMessage:Ljava/lang/String;

.field private greylist-max-o mHold:Z

.field private greylist-max-o mInCall:Z

.field private greylist-max-o mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private greylist-max-o mLocalProfile:Landroid/net/sip/SipProfile;

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mMuted:Z

.field private greylist-max-o mPeerSd:Ljava/lang/String;

.field private greylist-max-o mSessionId:J

.field private greylist-max-o mSipSession:Landroid/net/sip/SipSession;

.field private greylist-max-o mTransferringSession:Landroid/net/sip/SipSession;

.field private greylist-max-o mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private greylist-max-o mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmErrorCode(Landroid/net/sip/SipAudioCall;)I
    .registers 1

    iget p0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHold(Landroid/net/sip/SipAudioCall;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInCall(Landroid/net/sip/SipAudioCall;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/net/sip/SipAudioCall;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerSd(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSipSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransferringSession(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .registers 1

    iget-object p0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmErrorCode(Landroid/net/sip/SipAudioCall;I)V
    .registers 2

    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmErrorMessage(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPeerSd(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransferringSession(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)V
    .registers 2

    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclose(Landroid/net/sip/SipAudioCall;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateAnswer(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateOffer(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;
    .registers 1

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Landroid/net/sip/SipAudioCall;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtransferToNewSession(Landroid/net/sip/SipAudioCall;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->transferToNewSession()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 63
    const-class v0, Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localProfile"    # Landroid/net/sip/SipProfile;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 192
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 193
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 198
    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 208
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 209
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 210
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    .line 211
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method private declared-synchronized greylist-max-o close(Z)V
    .registers 5
    .param p1, "closeRtp"    # Z

    monitor-enter p0

    .line 300
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 302
    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 303
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 305
    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_20

    .line 309
    invoke-virtual {v1, v0}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 310
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_22

    .line 312
    :cond_20
    monitor-exit p0

    return-void

    .line 299
    .end local p1    # "closeRtp":Z
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .registers 18
    .param p1, "offerSd"    # Ljava/lang/String;

    .line 758
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    return-object v1

    .line 759
    :cond_d
    new-instance v1, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 761
    .local v1, "offer":Landroid/net/sip/SimpleSessionDescription;
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v4, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 762
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 763
    .local v3, "answer":Landroid/net/sip/SimpleSessionDescription;
    const/4 v4, 0x0

    .line 764
    .local v4, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_26
    if-ge v8, v6, :cond_fa

    aget-object v9, v5, v8

    .line 765
    .local v9, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v4, :cond_d4

    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v11

    if-lez v11, :cond_d4

    .line 766
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "audio"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 767
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v11

    const-string v13, "RTP/AVP"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d4

    .line 769
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v11

    array-length v14, v11

    const/4 v15, 0x0

    :goto_50
    if-ge v15, v14, :cond_68

    aget v7, v11, v15

    .line 770
    .local v7, "type":I
    invoke-virtual {v9, v7}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v10

    .line 771
    invoke-virtual {v9, v7}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v2

    .line 770
    invoke-static {v7, v10, v2}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v4

    .line 772
    if-eqz v4, :cond_63

    .line 773
    goto :goto_68

    .line 769
    .end local v7    # "type":I
    :cond_63
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto :goto_50

    .line 776
    :cond_68
    :goto_68
    if-eqz v4, :cond_d4

    .line 777
    iget-object v2, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 778
    invoke-virtual {v2}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v2

    .line 777
    const/4 v7, 0x1

    invoke-virtual {v3, v12, v2, v7, v13}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 779
    .local v2, "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    iget v7, v4, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v10, v4, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v11, v4, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v7, v10, v11}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_84
    if-ge v11, v10, :cond_a5

    aget v12, v7, v11

    .line 783
    .local v12, "type":I
    invoke-virtual {v9, v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v13

    .line 784
    .local v13, "rtpmap":Ljava/lang/String;
    iget v14, v4, Landroid/net/rtp/AudioCodec;->type:I

    if-eq v12, v14, :cond_a2

    if-eqz v13, :cond_a2

    .line 785
    const-string v14, "telephone-event"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a2

    .line 786
    nop

    .line 787
    invoke-virtual {v9, v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v14

    .line 786
    invoke-virtual {v2, v12, v13, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 782
    .end local v12    # "type":I
    .end local v13    # "rtpmap":Ljava/lang/String;
    :cond_a2
    add-int/lit8 v11, v11, 0x1

    goto :goto_84

    .line 792
    :cond_a5
    const-string v7, "recvonly"

    invoke-virtual {v9, v7}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const-string v12, "sendonly"

    if-eqz v10, :cond_b5

    .line 793
    invoke-virtual {v3, v12, v11}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    .line 794
    :cond_b5
    invoke-virtual {v9, v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_bf

    .line 795
    invoke-virtual {v3, v7, v11}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    .line 796
    :cond_bf
    invoke-virtual {v1, v7}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_c9

    .line 797
    invoke-virtual {v3, v12, v11}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d2

    .line 798
    :cond_c9
    invoke-virtual {v1, v12}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d2

    .line 799
    invoke-virtual {v3, v7, v11}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .end local v2    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v9    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d2
    :goto_d2
    const/4 v10, 0x0

    goto :goto_f4

    .line 805
    .restart local v9    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d4
    nop

    .line 806
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v7

    .line 805
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v3, v2, v10, v11, v7}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 807
    .restart local v2    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v9}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v7

    array-length v11, v7

    move v12, v10

    :goto_e9
    if-ge v12, v11, :cond_f4

    aget-object v13, v7, v12

    .line 808
    .local v13, "format":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .end local v13    # "format":Ljava/lang/String;
    add-int/lit8 v12, v12, 0x1

    goto :goto_e9

    .line 764
    .end local v2    # "reply":Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v9    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_f4
    :goto_f4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_26

    .line 811
    :cond_fa
    if-eqz v4, :cond_113

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createAnswer: answer="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 816
    return-object v3

    .line 812
    :cond_113
    const-string v2, "createAnswer: no suitable codes"

    invoke-direct {v0, v2}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 813
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "Reject SDP: no suitable codecs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .registers 7

    .line 827
    const-string v0, "createContinueOffer"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 828
    new-instance v0, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v1, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 829
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 830
    .local v0, "offer":Landroid/net/sip/SimpleSessionDescription;
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 831
    invoke-virtual {v1}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v1

    .line 830
    const-string v2, "audio"

    const/4 v3, 0x1

    const-string v4, "RTP/AVP"

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v1

    .line 832
    .local v1, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v2}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v2

    .line 833
    .local v2, "codec":Landroid/net/rtp/AudioCodec;
    iget v3, v2, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v4, v2, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v5, v2, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v3}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v3

    .line 835
    .local v3, "dtmfType":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3e

    .line 836
    const-string v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v1, v3, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_3e
    return-object v0
.end method

.method private greylist-max-o createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .registers 4

    .line 820
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    .line 821
    .local v0, "offer":Landroid/net/sip/SimpleSessionDescription;
    const-string v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createHoldOffer: offer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 823
    return-object v0
.end method

.method private greylist-max-o createListener()Landroid/net/sip/SipSession$Listener;
    .registers 2

    .line 384
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private greylist-max-o createOffer()Landroid/net/sip/SimpleSessionDescription;
    .registers 11

    .line 744
    new-instance v0, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v1, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 745
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 746
    .local v0, "offer":Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v1

    .line 747
    .local v1, "codecs":[Landroid/net/rtp/AudioCodec;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 748
    invoke-virtual {v2}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v2

    .line 747
    const-string v3, "audio"

    const/4 v4, 0x1

    const-string v5, "RTP/AVP"

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 749
    .local v2, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_24
    if-ge v5, v4, :cond_34

    aget-object v6, v3, v5

    .line 750
    .local v6, "codec":Landroid/net/rtp/AudioCodec;
    iget v7, v6, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v8, v6, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v9, v6, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 749
    .end local v6    # "codec":Landroid/net/rtp/AudioCodec;
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 752
    :cond_34
    const/16 v3, 0x7f

    const-string v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 753
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOffer: offer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 754
    return-object v0
.end method

.method private greylist-max-o getLocalIp()Ljava/lang/String;
    .registers 2

    .line 1131
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o grabWifiHighPerfLock()V
    .registers 4

    .line 842
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_1f

    .line 843
    const-string v0, "grabWifiHighPerfLock:"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 845
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    .line 846
    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 847
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 849
    :cond_1f
    return-void
.end method

.method private greylist-max-o isSpeakerOn()Z
    .registers 3

    .line 898
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 899
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    .line 898
    return v0
.end method

.method private greylist-max-o isWifiOn()Z
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method private greylist-max-o log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1143
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void
.end method

.method private greylist-max-o loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1147
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    return-void
.end method

.method private greylist-max-o loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 1151
    sget-object v0, Landroid/net/sip/SipAudioCall;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    return-void
.end method

.method private greylist-max-o onError(ILjava/lang/String;)V
    .registers 6
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 569
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 570
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 571
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 572
    .local v0, "listener":Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_36

    .line 574
    :try_start_2c
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    .line 577
    goto :goto_36

    .line 575
    :catchall_30
    move-exception v1

    .line 576
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onError():"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 579
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_36
    :goto_36
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    const/16 v2, -0xa

    if-eq p1, v2, :cond_43

    .line 581
    :try_start_3d
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_47

    .line 582
    :cond_43
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 584
    :cond_47
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_49
    move-exception v2

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_49

    throw v2
.end method

.method private greylist-max-o releaseWifiHighPerfLock()V
    .registers 2

    .line 852
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_11

    .line 853
    const-string v0, "releaseWifiHighPerfLock:"

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 855
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 857
    :cond_11
    return-void
.end method

.method private greylist-max-o setAudioGroupMode()V
    .registers 4

    .line 1102
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1103
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioGroupMode: audioGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 1104
    if-eqz v0, :cond_3d

    .line 1105
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_25

    .line 1106
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_3d

    .line 1107
    :cond_25
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2e

    .line 1108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_3d

    .line 1109
    :cond_2e
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1110
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_3d

    .line 1112
    :cond_39
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 1115
    :cond_3d
    :goto_3d
    return-void
.end method

.method private declared-synchronized greylist-max-o startAudioInternal()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    monitor-enter p0

    .line 1018
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAudioInternal: mPeerSd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    if-eqz v0, :cond_126

    .line 1023
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 1024
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 1027
    new-instance v2, Landroid/net/sip/SimpleSessionDescription;

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v2, "offer":Landroid/net/sip/SimpleSessionDescription;
    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1030
    .local v3, "stream":Landroid/net/rtp/AudioStream;
    const/4 v4, 0x0

    .line 1031
    .local v4, "codec":Landroid/net/rtp/AudioCodec;
    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_34
    if-ge v7, v6, :cond_f8

    aget-object v8, v5, v7

    .line 1032
    .local v8, "media":Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v4, :cond_f4

    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v9

    if-lez v9, :cond_f4

    const-string v9, "audio"

    .line 1033
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f4

    const-string v9, "RTP/AVP"

    .line 1034
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f4

    .line 1036
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v9

    array-length v10, v9

    move v11, v0

    :goto_5e
    if-ge v11, v10, :cond_76

    aget v12, v9, v11

    .line 1037
    .local v12, "type":I
    nop

    .line 1038
    invoke-virtual {v8, v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v14

    .line 1037
    invoke-static {v12, v13, v14}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v13

    move-object v4, v13

    .line 1039
    if-eqz v4, :cond_73

    .line 1040
    goto :goto_76

    .line 1036
    .end local v12    # "type":I
    :cond_73
    add-int/lit8 v11, v11, 0x1

    goto :goto_5e

    .line 1044
    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    :cond_76
    :goto_76
    if-eqz v4, :cond_f4

    .line 1046
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 1047
    .local v5, "address":Ljava/lang/String;
    if-nez v5, :cond_83

    .line 1048
    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 1050
    :cond_83
    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 1051
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v7

    .line 1050
    invoke-virtual {v3, v6, v7}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    .line 1053
    const/4 v6, -0x1

    invoke-virtual {v3, v6}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1054
    invoke-virtual {v3, v4}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    .line 1056
    invoke-virtual {v8}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    array-length v7, v6

    move v9, v0

    :goto_9b
    if-ge v9, v7, :cond_b7

    aget v10, v6, v9

    .line 1057
    .local v10, "type":I
    invoke-virtual {v8, v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v11

    .line 1058
    .local v11, "rtpmap":Ljava/lang/String;
    iget v12, v4, Landroid/net/rtp/AudioCodec;->type:I

    if-eq v10, v12, :cond_b4

    if-eqz v11, :cond_b4

    const-string v12, "telephone-event"

    .line 1059
    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b4

    .line 1060
    invoke-virtual {v3, v10}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1056
    .end local v10    # "type":I
    .end local v11    # "rtpmap":Ljava/lang/String;
    :cond_b4
    add-int/lit8 v9, v9, 0x1

    goto :goto_9b

    .line 1065
    :cond_b7
    iget-boolean v6, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v6, :cond_bf

    .line 1066
    invoke-virtual {v3, v0}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_f8

    .line 1067
    :cond_bf
    const-string v6, "recvonly"

    invoke-virtual {v8, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_cb

    .line 1068
    invoke-virtual {v3, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_f8

    .line 1069
    :cond_cb
    const-string v6, "sendonly"

    invoke-virtual {v8, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-eqz v6, :cond_d8

    .line 1070
    invoke-virtual {v3, v7}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_f8

    .line 1071
    :cond_d8
    const-string v6, "recvonly"

    invoke-virtual {v2, v6}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e4

    .line 1072
    invoke-virtual {v3, v1}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_f8

    .line 1073
    :cond_e4
    const-string v1, "sendonly"

    invoke-virtual {v2, v1}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f0

    .line 1074
    invoke-virtual {v3, v7}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_f8

    .line 1076
    :cond_f0
    invoke-virtual {v3, v0}, Landroid/net/rtp/AudioStream;->setMode(I)V

    .line 1078
    goto :goto_f8

    .line 1031
    .end local v5    # "address":Ljava/lang/String;
    .end local v8    # "media":Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_f4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_34

    .line 1082
    :cond_f8
    :goto_f8
    if-eqz v4, :cond_11e

    .line 1086
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    .line 1089
    :cond_103
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1090
    .local v0, "audioGroup":Landroid/net/rtp/AudioGroup;
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_10c

    goto :goto_119

    .line 1094
    :cond_10c
    if-nez v0, :cond_116

    new-instance v1, Landroid/net/rtp/AudioGroup;

    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/net/rtp/AudioGroup;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 1095
    :cond_116
    invoke-virtual {v3, v0}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 1097
    :goto_119
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_11c
    .catchall {:try_start_1 .. :try_end_11c} :catchall_12e

    .line 1098
    monitor-exit p0

    return-void

    .line 1083
    .end local v0    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :cond_11e
    :try_start_11e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reject SDP: no suitable codecs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    .end local v2    # "offer":Landroid/net/sip/SimpleSessionDescription;
    .end local v3    # "stream":Landroid/net/rtp/AudioStream;
    .end local v4    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mPeerSd = null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12e
    .catchall {:try_start_11e .. :try_end_12e} :catchall_12e

    .line 1017
    :catchall_12e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private greylist-max-o stopCall(Z)V
    .registers 4
    .param p1, "releaseSocket"    # Z

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopCall: releaseSocket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    .line 1120
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_2a

    .line 1121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 1123
    if-eqz p1, :cond_2a

    .line 1124
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    .line 1125
    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1128
    :cond_2a
    return-void
.end method

.method private greylist-max-o throwSipException(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 1135
    instance-of v0, p1, Landroid/net/sip/SipException;

    if-eqz v0, :cond_8

    .line 1136
    move-object v0, p1

    check-cast v0, Landroid/net/sip/SipException;

    throw v0

    .line 1138
    :cond_8
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized greylist-max-o transferToNewSession()V
    .registers 4

    monitor-enter p0

    .line 363
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 364
    :cond_7
    :try_start_7
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 365
    .local v1, "origin":Landroid/net/sip/SipSession;
    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    .line 369
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v2, :cond_16

    .line 370
    invoke-virtual {v2, v0}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_36

    goto :goto_2c

    .line 373
    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    :cond_16
    :try_start_16
    new-instance v0, Landroid/net/rtp/AudioStream;

    .line 374
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    .line 373
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    .line 377
    goto :goto_2c

    .line 375
    :catchall_26
    move-exception v0

    .line 376
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_27
    const-string v2, "transferToNewSession():"

    invoke-direct {p0, v2, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 379
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2c
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Landroid/net/sip/SipSession;->endCall()V

    .line 380
    :cond_31
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->startAudio()V
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_36

    .line 381
    monitor-exit p0

    return-void

    .line 362
    .end local v1    # "origin":Landroid/net/sip/SipSession;
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public whitelist answerCall(I)V
    .registers 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "answerCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_25
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_60

    if-eqz v1, :cond_58

    .line 711
    :try_start_29
    new-instance v1, Landroid/net/rtp/AudioStream;

    .line 712
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    .line 711
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 713
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_47} :catch_4a
    .catchall {:try_start_29 .. :try_end_47} :catchall_60

    .line 717
    nop

    .line 718
    :try_start_48
    monitor-exit v0

    .line 719
    return-void

    .line 714
    :catch_4a
    move-exception v1

    .line 715
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "answerCall:"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 716
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "answerCall()"

    invoke-direct {v2, v3, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    .end local p1    # "timeout":I
    throw v2

    .line 708
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/net/sip/SipAudioCall;
    .restart local p1    # "timeout":I
    :cond_58
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    .end local p1    # "timeout":I
    throw v1

    .line 718
    .restart local p0    # "this":Landroid/net/sip/SipAudioCall;
    .restart local p1    # "timeout":I
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_48 .. :try_end_62} :catchall_60

    throw v1
.end method

.method public whitelist attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .registers 6
    .param p1, "session"    # Landroid/net/sip/SipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 602
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_b
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 604
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attachCall(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_3a

    .line 607
    :try_start_27
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2f

    .line 611
    goto :goto_38

    .line 608
    :catchall_2f
    move-exception v1

    .line 609
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_30
    const-string v2, "attachCall()"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 610
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    .line 612
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_38
    monitor-exit v0

    .line 613
    return-void

    .line 612
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_3a

    throw v1

    .line 599
    :cond_3d
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "VOIP API is not supported"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist close()V
    .registers 2

    .line 296
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 297
    return-void
.end method

.method public whitelist continueCall(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "continueCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_25
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-nez v1, :cond_2b

    monitor-exit v0

    return-void

    .line 737
    :cond_2b
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 739
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 740
    monitor-exit v0

    .line 741
    return-void

    .line 740
    :catchall_40
    move-exception v1

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public whitelist endCall()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 659
    const/4 v1, 0x1

    :try_start_1c
    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 660
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 663
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Landroid/net/sip/SipSession;->endCall()V

    .line 664
    :cond_29
    monitor-exit v0

    .line 665
    return-void

    .line 664
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public whitelist getAudioGroup()Landroid/net/rtp/AudioGroup;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 970
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 971
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 972
    :cond_9
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v1

    :goto_13
    monitor-exit v0

    return-object v1

    .line 973
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public greylist-max-o getAudioStream()Landroid/net/rtp/AudioStream;
    .registers 3

    .line 949
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getLocalProfile()Landroid/net/sip/SipProfile;
    .registers 3

    .line 320
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    monitor-exit v0

    return-object v1

    .line 322
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getPeerProfile()Landroid/net/sip/SipProfile;
    .registers 3

    .line 331
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    :goto_d
    monitor-exit v0

    return-object v1

    .line 333
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public greylist-max-o getSipSession()Landroid/net/sip/SipSession;
    .registers 3

    .line 357
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    monitor-exit v0

    return-object v1

    .line 359
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist getState()I
    .registers 3

    .line 343
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 345
    :cond_a
    invoke-virtual {v1}, Landroid/net/sip/SipSession;->getState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 346
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist holdCall(I)V
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holdCall: mSipSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_25
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_2b

    monitor-exit v0

    return-void

    .line 683
    :cond_2b
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_42

    .line 687
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 688
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 689
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 690
    monitor-exit v0

    .line 691
    return-void

    .line 684
    :cond_42
    const-string v1, "holdCall:"

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;)V

    .line 685
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "Not in a call to hold call"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    .end local p1    # "timeout":I
    throw v1

    .line 690
    .restart local p0    # "this":Landroid/net/sip/SipAudioCall;
    .restart local p1    # "timeout":I
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public whitelist isInCall()Z
    .registers 3

    .line 276
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 277
    :try_start_3
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit v0

    return v1

    .line 278
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isMuted()Z
    .registers 3

    .line 877
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_3
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit v0

    return v1

    .line 879
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist isOnHold()Z
    .registers 3

    .line 287
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    monitor-exit v0

    return v1

    .line 289
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .registers 8
    .param p1, "peerProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "sipSession"    # Landroid/net/sip/SipSession;
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 637
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 638
    :try_start_35
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_69

    .line 640
    :try_start_37
    new-instance v1, Landroid/net/rtp/AudioStream;

    .line 641
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 642
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 643
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_58} :catch_5b
    .catchall {:try_start_37 .. :try_end_58} :catchall_69

    .line 648
    nop

    .line 649
    :try_start_59
    monitor-exit v0

    .line 650
    return-void

    .line 645
    :catch_5b
    move-exception v1

    .line 646
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "makeCall:"

    invoke-direct {p0, v2, v1}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 647
    new-instance v2, Landroid/net/sip/SipException;

    const-string v3, "makeCall()"

    invoke-direct {v2, v3, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/sip/SipAudioCall;
    .end local p1    # "peerProfile":Landroid/net/sip/SipProfile;
    .end local p2    # "sipSession":Landroid/net/sip/SipSession;
    .end local p3    # "timeout":I
    throw v2

    .line 649
    .end local v1    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Landroid/net/sip/SipAudioCall;
    .restart local p1    # "peerProfile":Landroid/net/sip/SipProfile;
    .restart local p2    # "sipSession":Landroid/net/sip/SipSession;
    .restart local p3    # "timeout":I
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_59 .. :try_end_6b} :catchall_69

    throw v1

    .line 634
    :cond_6c
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "VOIP API is not supported"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendDtmf(I)V
    .registers 3
    .param p1, "code"    # I

    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    .line 913
    return-void
.end method

.method public whitelist sendDtmf(ILandroid/os/Message;)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "result"    # Landroid/os/Message;

    .line 926
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_3
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v1

    .line 928
    .local v1, "audioGroup":Landroid/net/rtp/AudioGroup;
    if-eqz v1, :cond_38

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v2, :cond_38

    const/16 v2, 0x8

    .line 929
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v3

    if-ne v2, v3, :cond_38

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtmf: code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 931
    invoke-virtual {v1, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 933
    :cond_38
    if-eqz p2, :cond_3d

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 934
    .end local v1    # "audioGroup":Landroid/net/rtp/AudioGroup;
    :cond_3d
    monitor-exit v0

    .line 935
    return-void

    .line 934
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public whitelist setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .registers 5
    .param p1, "group"    # Landroid/net/rtp/AudioGroup;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 990
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 991
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioGroup: group="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/sip/SipAudioCall;->log(Ljava/lang/String;)V

    .line 992
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 993
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v1, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 995
    :cond_28
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    .line 996
    monitor-exit v0

    .line 997
    return-void

    .line 996
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public whitelist setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    .line 223
    return-void
.end method

.method public whitelist setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/net/sip/SipAudioCall$Listener;
    .param p2, "callbackImmediately"    # Z

    .line 236
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 238
    if-eqz p1, :cond_44

    if-nez p2, :cond_7

    goto :goto_44

    .line 240
    :cond_7
    :try_start_7
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v0, :cond_11

    .line 241
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V

    goto :goto_44

    .line 242
    :cond_11
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v0, :cond_21

    .line 243
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_1d

    .line 244
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_44

    .line 246
    :cond_1d
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    goto :goto_44

    .line 249
    :cond_21
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 250
    .local v0, "state":I
    packed-switch v0, :pswitch_data_46

    :pswitch_28
    goto :goto_44

    .line 261
    :pswitch_29
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V

    goto :goto_44

    .line 258
    :pswitch_2d
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    .line 259
    goto :goto_44

    .line 255
    :pswitch_31
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    .line 256
    goto :goto_44

    .line 252
    :pswitch_39
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3d

    .line 253
    goto :goto_44

    .line 265
    .end local v0    # "state":I
    :catchall_3d
    move-exception v0

    .line 266
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "setListener()"

    invoke-direct {p0, v1, v0}, Landroid/net/sip/SipAudioCall;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_45

    .line 267
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_44
    :goto_44
    nop

    .line 268
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_39
        :pswitch_28
        :pswitch_28
        :pswitch_31
        :pswitch_28
        :pswitch_2d
        :pswitch_29
    .end packed-switch
.end method

.method public whitelist setSpeakerMode(Z)V
    .registers 5
    .param p1, "speakerMode"    # Z

    .line 890
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 892
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 893
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 894
    monitor-exit v0

    .line 895
    return-void

    .line 894
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public whitelist startAudio()V
    .registers 4

    .line 1009
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_3} :catch_e
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 1014
    :goto_3
    goto :goto_18

    .line 1012
    :catchall_4
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_18

    .line 1010
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 1011
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    .end local v0    # "e":Ljava/net/UnknownHostException;
    goto :goto_3

    .line 1015
    :goto_18
    return-void
.end method

.method public whitelist toggleMute()V
    .registers 3

    .line 865
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 866
    :try_start_3
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 867
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 868
    monitor-exit v0

    .line 869
    return-void

    .line 868
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method
