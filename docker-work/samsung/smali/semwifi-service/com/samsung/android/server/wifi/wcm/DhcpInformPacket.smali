.class Lcom/samsung/android/server/wifi/wcm/DhcpInformPacket;
.super Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.source "SemDhcpPacket.java"


# direct methods
.method constructor <init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 1722
    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1734
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1736
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mYourIp:Ljava/net/Inet4Address;

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1738
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/16 v1, 0x8

    .line 1746
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1747
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1748
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 1749
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mRequestedParams:[B

    const/16 v0, 0x37

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1750
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1726
    invoke-super {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " INFORM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
