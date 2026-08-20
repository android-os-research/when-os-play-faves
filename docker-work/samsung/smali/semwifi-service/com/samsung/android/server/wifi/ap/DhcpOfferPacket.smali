.class Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;
.super Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;
.source "SemDhcpPacket.java"


# instance fields
.field private final mSrcIp:Ljava/net/Inet4Address;


# direct methods
.method constructor <init>(ISZLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 18

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p6

    move-object/from16 v4, p7

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p8

    move v8, p3

    .line 1446
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    move-object v1, p4

    .line 1447
    iput-object v1, v0, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1469
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1470
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mBroadcast:Z

    if-eqz v9, :cond_d

    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    :goto_f
    move-object v3, v1

    if-eqz v9, :cond_15

    .line 1471
    sget-object v1, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    goto :goto_17

    :cond_15
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/DhcpOfferPacket;->mSrcIp:Ljava/net/Inet4Address;

    :goto_17
    move-object v4, v1

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    .line 1473
    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1475
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/4 v1, 0x2

    .line 1483
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1484
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1486
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addCommonServerTlvs(Ljava/nio/ByteBuffer;)V

    .line 1487
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 1451
    invoke-super {p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1452
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ", DNS servers: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDnsServers:Ljava/util/List;

    if-eqz v2, :cond_34

    .line 1455
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 1456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_13

    .line 1460
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OFFER, ip "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mask "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mSubnetMask:Ljava/net/Inet4Address;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", gateways "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mGateways:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " lease time "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mLeaseTime:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", domain "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket;->mDomainName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
