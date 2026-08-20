.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;
.super Ljava/lang/Object;
.source "SemMobileWipsDnsRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DnsRequest"
.end annotation


# instance fields
.field private isUDP:Z

.field private mDnsMessage:[B

.field private mDstAddr:[B

.field private mDstMac:Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mResponse:[B

.field private mSrcAddr:[B

.field private mTimeoutMillis:[J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;Landroid/net/LinkProperties;[J[B[BLjava/lang/String;[BZ)V
    .registers 9

    .line 177
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mLinkProperties:Landroid/net/LinkProperties;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mTimeoutMillis:[J

    .line 180
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mSrcAddr:[B

    .line 181
    invoke-virtual {p5}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstAddr:[B

    .line 182
    iput-object p6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstMac:Ljava/lang/String;

    .line 183
    iput-object p7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDnsMessage:[B

    .line 184
    iput-boolean p8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->isUDP:Z

    const/4 p1, 0x0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B

    return-void
.end method


# virtual methods
.method public getResponse()[B
    .registers 1

    .line 189
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B

    return-object p0
.end method

.method public run()V
    .registers 10

    .line 195
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 199
    iget-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;->-$$Nest$fgetmPacketSender(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mSrcAddr:[B

    iget-object v4, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstAddr:[B

    iget-object v5, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDstMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mDnsMessage:[B

    iget-object v7, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mTimeoutMillis:[J

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->isUDP:Z

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsPacketSender;->sendDns(Landroid/net/LinkProperties;[B[BLjava/lang/String;[B[JZ)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsDnsRequester$DnsRequest;->mResponse:[B
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
