.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemPDC2.java"


# static fields
.field private static final KEY_ALGORITH_VERSION:Ljava/lang/String; = "aver"

.field private static final KEY_ASSOC_COUNT:Ljava/lang/String; = "cntA"

.field private static final KEY_HANG_REASON:Ljava/lang/String; = "hanR"

.field private static final KEY_ISSUE_DETECTOR_CATEGORY:Ljava/lang/String; = "isct"

.field private static final KEY_LAST_PROCESS_STATE:Ljava/lang/String; = "pres"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "pkgN"

.field private static final KEY_PRE_PROCESS_MSG:Ljava/lang/String; = "prem"

.field static final KEY_PRIVATE_BSSID:Ljava/lang/String; = "bsid"

.field private static final KEY_PRIVATE_SSID:Ljava/lang/String; = "ssid"

.field private static final KEY_REASON:Ljava/lang/String; = "resn"

.field private static final PDC2:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xe

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "isct"

    const-string v2, "0"

    .line 36
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "pres"

    const-string v3, "UnknownState"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "prem"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "hanR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "resn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "cntA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "ap_rsi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "ap_oui"

    const-string v3, "00:00:00"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "ap_sec"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "ap_chn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "pkgN"

    const-string v3, "unknown"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "aver"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ssid"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "bsid"

    const-string v2, "00:00:00:00:00:00"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

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

    .line 70
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const-string v3, ","

    const/4 v4, 0x1

    if-ne p1, v1, :cond_3d

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :goto_1d
    if-ge v1, v0, :cond_38

    .line 75
    sget-object v5, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v0, -0x1

    if-eq v1, v5, :cond_35

    .line 77
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 80
    :cond_38
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3d
    const/4 v1, 0x3

    if-ne p1, v1, :cond_66

    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    :goto_45
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v5, v1

    if-ge v0, v5, :cond_61

    .line 84
    aget-object v5, v1, v0

    aget-object v6, v5, v2

    aget-object v5, v5, v4

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    array-length v1, v1

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_5e

    .line 86
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 89
    :cond_61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
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

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 97
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemPDC2;->PDC2:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 103
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
