.class Lcom/android/internal/telephony/cat/OpenChannelResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

.field blacklist param:Lcom/android/internal/telephony/cat/OpenChannelParams;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 489
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 384
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 385
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 490
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CatBIPConnection;)V
    .registers 3

    .line 484
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 486
    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 487
    sget-object p1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 9

    const-string v0, " OpenChannelResponseData: format() "

    .line 388
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    const/4 v1, 0x2

    if-eqz v0, :cond_51

    .line 395
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 396
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 397
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget v2, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 402
    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_3d

    .line 407
    :cond_32
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 408
    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v0, :cond_47

    or-int/lit8 v0, v2, -0x80

    goto :goto_46

    .line 403
    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    check-cast v0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 404
    iget-byte v0, v0, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    :goto_46
    int-to-byte v2, v0

    .line 413
    :cond_47
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    iget-byte v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 418
    :cond_51
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_cb

    .line 419
    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isTCPRemoteClient()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/TransportLevel;->isUDPRemoteClient()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_6b
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-ne v0, v3, :cond_cb

    :cond_71
    const-string v0, " OpenChannelResponseData: format() : bipcon is client including Bearer description terminal reponse"

    .line 421
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 423
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 426
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 428
    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 429
    iget-object v4, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v4, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v5, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    if-eq v5, v3, :cond_b4

    if-eq v5, v1, :cond_ae

    const/16 v6, 0xb

    if-eq v5, v6, :cond_a8

    const/16 v6, 0xc

    if-eq v5, v6, :cond_a2

    goto :goto_b9

    .line 441
    :cond_a2
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerNGRAN:Lcom/android/internal/telephony/cat/BearerNGRAN;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerNGRAN;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_b9

    .line 438
    :cond_a8
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerEUTRAN;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_b9

    .line 435
    :cond_ae
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerGPRS;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_b9

    .line 432
    :cond_b4
    iget-object v4, v4, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/cat/BearerCSD;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    .line 445
    :goto_b9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 446
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    invoke-virtual {p1, v4, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 452
    :cond_cb
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/cat/CatBIPConnection;

    if-eqz v0, :cond_d2

    .line 453
    iget v0, v0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    goto :goto_df

    .line 454
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v0, :cond_d9

    .line 455
    iget v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    goto :goto_df

    :cond_d9
    const-string v0, " OpenChannelResponseData: bipcon null param null"

    .line 458
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    .line 461
    :goto_df
    sget-object v4, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    or-int/lit16 v4, v4, 0x80

    .line 462
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v1, v0, 0x8

    .line 465
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 466
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    if-eqz v0, :cond_13c

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mRetrieveDNSIPAddress:Z

    if-eqz v1, :cond_13c

    iget-object v0, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_13c

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/cat/OpenChannelResponseData;->param:Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDnsServerAddress:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_10d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 471
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DNS_SERVER_ADDRESS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 472
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 474
    array-length v1, v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    array-length v1, v0

    const/16 v4, 0x10

    if-ne v1, v4, :cond_132

    const/16 v1, 0x57

    .line 476
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_137

    :cond_132
    const/16 v1, 0x21

    .line 478
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    :goto_137
    array-length v1, v0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_10d

    :cond_13c
    return-void
.end method
