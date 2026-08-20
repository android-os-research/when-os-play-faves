.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field blacklist mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

.field blacklist mBufferSize:I

.field blacklist mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

.field blacklist mDnsServerAddress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field blacklist mNetworkAccessName:Ljava/lang/String;

.field blacklist mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field blacklist mRetrieveDNSIPAddress:Z

.field blacklist mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field blacklist mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

.field blacklist mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Lcom/android/internal/telephony/cat/TextMessage;)V
    .registers 7

    .line 415
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    .line 416
    iput p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    .line 417
    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 418
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .line 419
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 420
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/16 p2, 0x8

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .registers 12

    .line 400
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    .line 401
    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 402
    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    .line 403
    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 404
    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .line 405
    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    .line 406
    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    .line 407
    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 408
    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 409
    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    .line 410
    iget p1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/16 p2, 0x8

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    return-void
.end method
