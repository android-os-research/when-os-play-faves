.class public Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;
.super Ljava/lang/Object;
.source "SemSupplicantStaIfaceHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QosPolicyClassifierParams"
.end annotation


# instance fields
.field public dstIp:Ljava/net/InetAddress;

.field public dstPortRange:Landroid/util/Range;

.field public final hasDstIp:Z

.field public final hasSrcIp:Z

.field public isValid:Z

.field public final protocol:I

.field public srcIp:Ljava/net/InetAddress;

.field public final srcPort:I


# direct methods
.method public constructor <init>(Z[BZ[BI[II)V
    .registers 9
    .param p6    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;

    .line 690
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;

    .line 691
    iput-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 702
    iput p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcPort:I

    .line 703
    iput p7, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->protocol:I

    .line 705
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasSrcIp:Z

    const/4 p5, 0x0

    if-eqz p1, :cond_1f

    .line 708
    :try_start_16
    invoke-static {p2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;
    :try_end_1c
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_1f

    .line 710
    :catch_1d
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 714
    :cond_1f
    :goto_1f
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasDstIp:Z

    if-eqz p3, :cond_2c

    .line 717
    :try_start_23
    invoke-static {p4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;
    :try_end_29
    .catch Ljava/net/UnknownHostException; {:try_start_23 .. :try_end_29} :catch_2a

    goto :goto_2c

    .line 719
    :catch_2a
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    .line 723
    :cond_2c
    :goto_2c
    aget p1, p6, p5

    aget p2, p6, v0

    if-le p1, p2, :cond_35

    .line 724
    iput-boolean p5, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    goto :goto_48

    .line 726
    :cond_35
    new-instance p1, Landroid/util/Range;

    aget p2, p6, p5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aget p3, p6, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    :goto_48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasSrcIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasSrcIp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasDstIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->hasDstIp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", srcIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dstIp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstIp:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dstPortRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->dstPortRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcPort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->srcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", protocol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/halclient/SemSupplicantStaIfaceHal$QosPolicyClassifierParams;->protocol:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
