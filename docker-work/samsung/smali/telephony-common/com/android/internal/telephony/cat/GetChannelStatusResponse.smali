.class Lcom/android/internal/telephony/cat/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field blacklist channelIds:[Z

.field blacklist i:Ljava/util/Iterator;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Iterator;[Z)V
    .registers 3

    .line 615
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 617
    iput-object p2, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 6

    const/4 v0, 0x0

    .line 584
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->channelIds:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_5a

    .line 585
    aget-boolean v1, v1, v0

    if-eqz v1, :cond_57

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/cat/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CatBIPConnection;

    .line 589
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    .line 590
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x2

    .line 591
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 594
    iget v2, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->channelId:I

    and-int/lit8 v2, v2, 0x7

    int-to-byte v2, v2

    .line 597
    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/TransportLevel;->isLocal()Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_41

    .line 602
    :cond_37
    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;

    .line 603
    iget-boolean v3, v3, Lcom/android/internal/telephony/cat/CatBIPClientConnection;->isLinkEstablished:Z

    if-eqz v3, :cond_4a

    or-int/lit8 v2, v2, -0x80

    goto :goto_49

    .line 598
    :cond_41
    :goto_41
    move-object v3, v1

    check-cast v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;

    .line 599
    iget-byte v3, v3, Lcom/android/internal/telephony/cat/CatBIPServerConnection;->linkState:B

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    :goto_49
    int-to-byte v2, v2

    .line 608
    :cond_4a
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 609
    iget-byte v1, v1, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v1, "GetChannelStatusResponse-wrote all"

    .line 610
    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5a
    return-void
.end method
