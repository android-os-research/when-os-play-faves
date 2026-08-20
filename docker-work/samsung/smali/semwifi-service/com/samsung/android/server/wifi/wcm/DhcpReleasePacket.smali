.class Lcom/samsung/android/server/wifi/wcm/DhcpReleasePacket;
.super Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;
.source "SemDhcpPacket.java"


# instance fields
.field final mClientAddr:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(ILjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[B)V
    .registers 15

    .line 1690
    sget-object v5, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, v5

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;-><init>(ISLjava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;[BZ)V

    .line 1692
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    .line 1693
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DhcpReleasePacket;->mClientAddr:Ljava/net/Inet4Address;

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .registers 14

    const/16 v0, 0x5dc

    .line 1699
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1700
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mClientIp:Ljava/net/Inet4Address;

    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mBroadcast:Z

    const/4 v8, 0x2

    move-object v1, p0

    move v2, p1

    move v5, p2

    move v6, p3

    move-object v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->fillInPacket(ILjava/net/Inet4Address;Ljava/net/Inet4Address;SSLjava/nio/ByteBuffer;BZ)V

    .line 1702
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v0
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .registers 4

    const/16 v0, 0x35

    const/4 v1, 0x7

    .line 1708
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    .line 1709
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->getClientId()[B

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    .line 1710
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->mServerIdentifier:Ljava/net/Inet4Address;

    const/16 v1, 0x36

    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BLjava/net/Inet4Address;)V

    .line 1711
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addCommonClientTlvs(Ljava/nio/ByteBuffer;)V

    .line 1712
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/SemDhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method
