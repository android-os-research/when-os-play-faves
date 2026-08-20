.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemPDC1.java"


# static fields
.field private static final KEY_ALGORITH_VERSION:Ljava/lang/String; = "aver"

.field private static final KEY_CRASH_PACAKAGE:Ljava/lang/String; = "cpkg"

.field private static final KEY_DHCP_FAIL_REASON:Ljava/lang/String; = "dhfs"

.field private static final KEY_ISSUE_DETECTOR_CATEGORY:Ljava/lang/String; = "isct"

.field private static final KEY_LAST_PROCESS_STATE:Ljava/lang/String; = "pres"

.field private static final KEY_PRE_PRE_PROCESS_MSG:Ljava/lang/String; = "pprem"

.field private static final KEY_PRE_PROCESS_MSG:Ljava/lang/String; = "prem"

.field static final KEY_PRIVATE_BSSID:Ljava/lang/String; = "bsid"

.field private static final KEY_PRIVATE_GATEWAY:Ljava/lang/String; = "apgw"

.field private static final KEY_PRIVATE_IP:Ljava/lang/String; = "apip"

.field private static final KEY_PRIVATE_SSID:Ljava/lang/String; = "ssid"

.field private static final KEY_SCREEN_STATE:Ljava/lang/String; = "scrs"

.field private static final KEY_UNWANTED_REASON:Ljava/lang/String; = "uwrs"

.field private static final PDC1:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x17

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "ap_oui"

    const-string v2, "00:00:00"

    .line 42
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ap_chn"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ap_rsi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "wpst"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "aplo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "cn_rsn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "cn_irs"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "apdr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "isct"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "dhfs"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "adps"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "scrs"

    const-string v3, "1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "pres"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "prem"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "pprem"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "uwrs"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "aver"

    const-string v3, "unknown"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, "apwe"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "cpkg"

    const-string v2, "null"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "ssid"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "bsid"

    const-string v2, "00:00:00:00:00:00"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "apgw"

    const-string v2, "0.0.0.0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-string v1, "apip"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getHitType()Ljava/lang/String;
    .registers 1

    const-string p0, "ph"

    return-object p0
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getJsonFormatFor(I)Ljava/lang/String;
    .registers 9

    .line 84
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    const-string v2, ","

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_3e

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    iget-object v4, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    invoke-interface {v4}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v1

    :goto_1e
    if-ge v4, v0, :cond_39

    .line 89
    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    aget-object v5, v5, v4

    aget-object v6, v5, v1

    aget-object v5, v5, v3

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-eq v4, v5, :cond_36

    .line 91
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 94
    :cond_39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3e
    const/4 v4, 0x3

    if-ne p1, v4, :cond_67

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_46
    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    array-length v5, v4

    if-ge v0, v5, :cond_62

    .line 98
    aget-object v5, v4, v0

    aget-object v6, v5, v1

    aget-object v5, v5, v3

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    array-length v4, v4

    sub-int/2addr v4, v3

    if-eq v0, v4, :cond_5f

    .line 100
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 103
    :cond_62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_67
    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailableLogging(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_9

    const/4 p0, 0x3

    if-ne p1, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 110
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 111
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC1;->PDC1:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 117
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 112
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
