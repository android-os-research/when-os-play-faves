.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemW24H.java"


# static fields
.field private static final KEY_ADPS_STATE:Ljava/lang/String; = "adps"

.field private static final KEY_ALWAYS_ALLOW_SCAN:Ljava/lang/String; = "AASm"

.field private static final KEY_APE_NON_VOIP_BACKGROUND_LIMITED_TIME:Ljava/lang/String; = "atob"

.field private static final KEY_APE_NON_VOIP_TOTAL_TIME:Ljava/lang/String; = "atot"

.field private static final KEY_APE_VOIP_BACKGROUND_LIMITED_TIME:Ljava/lang/String; = "atvb"

.field private static final KEY_APE_VOIP_TOTAL_TIME:Ljava/lang/String; = "atvt"

.field private static final KEY_ASNS_MODE:Ljava/lang/String; = "ASNS"

.field private static final KEY_AUTO_WIFI_MODE:Ljava/lang/String; = "Auto"

.field private static final KEY_BECOME_FAVORITE_AP_TIME:Ljava/lang/String; = "bfat"

.field private static final KEY_FAVORITE_AP_COUNT:Ljava/lang/String; = "cFav"

.field private static final KEY_HANG_COUNT:Ljava/lang/String; = "Hang"

.field private static final KEY_LAA_ACTIVE_STATE:Ljava/lang/String; = "laaA"

.field private static final KEY_LAA_ENTER_STATE:Ljava/lang/String; = "laaE"

.field private static final KEY_SAVED_CONFIG_COUNT:Ljava/lang/String; = "SCoC"

.field private static final KEY_SILENT_ROAMING_STATE:Ljava/lang/String; = "SRst"

.field private static final KEY_SILENT_ROAMING_SWITCH_COUNT:Ljava/lang/String; = "SRsc"

.field private static final KEY_SILENT_ROAMING_SWITCH_FAILURE_COUNT:Ljava/lang/String; = "SRsf"

.field private static final KEY_SILENT_ROAMING_SWITCH_NO_INTERNET_COUNT:Ljava/lang/String; = "SRni"

.field private static final KEY_SILENT_ROAMING_TOGGLE_COUNT:Ljava/lang/String; = "SRtc"

.field private static final KEY_SNS_MODE:Ljava/lang/String; = "SNSm"

.field private static final KEY_WIFI_STATE:Ljava/lang/String; = "STAT"

.field private static final W24H:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x15

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "STAT"

    const-string v2, "1"

    .line 60
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "AASm"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Auto"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "cFav"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "SNSm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "ASNS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "Hang"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "adps"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "SCoC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "laaE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "laaA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "atvt"

    const-string v3, "-1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "atvb"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "atot"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "atob"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "bfat"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "SRst"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "SRtc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "SRsc"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "SRsf"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "SRni"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 87
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 88
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    invoke-interface {v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 99
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 100
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemW24H;->W24H:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 106
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 101
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 102
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
