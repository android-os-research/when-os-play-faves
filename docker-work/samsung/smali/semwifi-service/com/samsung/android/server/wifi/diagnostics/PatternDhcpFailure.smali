.class public Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;
.super Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;
.source "PatternDhcpFailure.java"


# static fields
.field static final PDC1_CATEGORY_NO_INTERNET_IP_GW:I = 0x5

.field static final PDC2_CATEGORY_ID_DHCP_FAIL:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PatternDHCPProblem"

.field private static final VERSION:Ljava/lang/String; = "Rev03"


# instance fields
.field private mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

.field private mDetectedCategoryId:I

.field private mDhcpResult:I

.field private mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    return-void
.end method

.method private checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v1, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v1, p1, :cond_7

    return-object v0

    .line 71
    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object p0

    return-object p0
.end method

.method private getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I
    .registers 3

    const/4 p0, 0x1

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "dhcpResult"

    .line 63
    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isValidIpAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    const/4 v2, 0x4

    if-ne v0, v2, :cond_15

    .line 154
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move v1, v2

    goto :goto_23

    .line 157
    :cond_15
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    :goto_23
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p3

    .line 163
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 164
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-direct {v0, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 166
    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 169
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->toBytes([BI)[B

    move-result-object p1

    .line 170
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-direct {p0, p3, v1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->toBytes([BI)[B

    move-result-object p0

    .line 172
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    .line 173
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0

    .line 175
    new-instance p3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p1

    invoke-direct {p3, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 176
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    invoke-direct {p1, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 177
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p2

    invoke-direct {p0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 179
    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    .line 180
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p2, :cond_91

    if-nez p2, :cond_96

    :cond_91
    if-ltz p0, :cond_97

    if-nez p0, :cond_96

    goto :goto_97

    :cond_96
    const/4 v3, 0x0

    :cond_97
    :goto_97
    return v3
.end method

.method private toBytes([BI)[B
    .registers 6

    .line 187
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, p2, :cond_1f

    .line 188
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    if-ltz v2, :cond_1f

    .line 189
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 193
    :cond_1f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    move v1, v0

    :goto_24
    sub-int v2, p2, p1

    if-ge v1, v2, :cond_32

    .line 196
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 199
    :cond_32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [B

    .line 200
    :goto_38
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_4d

    .line 201
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result p2

    aput-byte p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_4d
    return-object p1
.end method


# virtual methods
.method public getAssociatedReportIds()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Integer;

    const/16 v0, 0xc8

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const/16 v0, 0x12c

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p0, v1

    .line 45
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBigDataParams()Landroid/os/Bundle;
    .registers 5

    .line 128
    iget v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    const-string v1, "Rev03"

    const/4 v2, 0x5

    if-ne v0, v2, :cond_27

    .line 129
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getPatternId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;-><init>(Ljava/lang/String;I)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDhcpResult(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 132
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc1Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 v2, 0x7

    if-ne v0, v2, :cond_4a

    .line 135
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getPatternId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;-><init>(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    .line 137
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 138
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->build()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPatternId()Ljava/lang/String;
    .registers 1

    const-string p0, "dhcp"

    return-object p0
.end method

.method public isAssociated(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)Z
    .registers 6

    .line 52
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    .line 53
    iget v0, p1, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_22

    const/16 p0, -0x63

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "rssi"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getValue(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, -0x41

    if-lt p0, p1, :cond_21

    move v1, v2

    :cond_21
    return v1

    :cond_22
    const/16 v3, 0x12c

    if-ne v0, v3, :cond_2e

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result p0

    if-eq p0, v2, :cond_2d

    move v1, v2

    :cond_2d
    return v1

    :cond_2e
    if-ne v0, v2, :cond_31

    move v1, v2

    :cond_31
    return v1
.end method

.method public matches()Z
    .registers 7

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 79
    :cond_6
    new-instance v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    const/16 v2, 0xb

    .line 80
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->getLastIndexOfData(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v2

    const/4 v3, 0x1

    .line 81
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v4

    const/16 v5, 0xc8

    .line 82
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;-><init>(Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;Lcom/samsung/android/server/wifi/diagnostics/ReportData;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    .line 83
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    move-result v0

    const/16 v2, -0x41

    const-string v4, "PatternDHCPProblem"

    if-ge v0, v2, :cond_4b

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rssi: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->getRssi()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4b
    const/16 v0, 0x12c

    .line 89
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->checkCurrentAndGetReport(I)Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    move-result-object v0

    if-nez v0, :cond_5c

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    const-string v0, "dhcp result report not found"

    .line 92
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 94
    :cond_5c
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->getDhcpResult(Lcom/samsung/android/server/wifi/diagnostics/ReportData;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDhcpResult:I

    if-eq v0, v3, :cond_6d

    const/4 v0, 0x7

    .line 96
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I

    const-string p0, "dhcp failed"

    .line 97
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 102
    :cond_6d
    :goto_6d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mCurrentReport:Lcom/samsung/android/server/wifi/diagnostics/ReportData;

    iget v0, v0, Lcom/samsung/android/server/wifi/diagnostics/ReportData;->mReportId:I

    if-ne v0, v3, :cond_f6

    .line 103
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    const-string v2, "unknown"

    .line 104
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    goto :goto_f1

    .line 110
    :cond_9e
    :try_start_9e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    .line 111
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget v5, v5, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    .line 110
    invoke-direct {p0, v0, v2, v5}, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->isValidIpAddress(Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z

    move-result v0

    if-nez v0, :cond_f6

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assigned ip address is invalid, ip:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->ip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gw:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->gateway:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDisconnectInfo:Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;

    iget v2, v2, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->netMask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 115
    iput v0, p0, Lcom/samsung/android/server/wifi/diagnostics/PatternDhcpFailure;->mDetectedCategoryId:I
    :try_end_eb
    .catch Ljava/net/UnknownHostException; {:try_start_9e .. :try_end_eb} :catch_ec

    return v3

    :catch_ec
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_f6

    :cond_f1
    :goto_f1
    const-string p0, "ip/gw are empty"

    .line 106
    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    :goto_f6
    return v1
.end method

.method public bridge synthetic matches(Ljava/util/List;)Z
    .registers 2

    .line 31
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiIssuePattern;->matches(Ljava/util/List;)Z

    move-result p0

    return p0
.end method
