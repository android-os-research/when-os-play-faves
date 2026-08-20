.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemMHDC.java"


# static fields
.field private static final KEY_MHDC_ANT_MODE:Ljava/lang/String; = "mh_antmode"

.field private static final KEY_MHDC_BW:Ljava/lang/String; = "mh_bw"

.field private static final KEY_MHDC_DATA_RATE:Ljava/lang/String; = "mh_datarate"

.field private static final KEY_MHDC_DIS:Ljava/lang/String; = "mh_dis"

.field private static final KEY_MHDC_MODE:Ljava/lang/String; = "mh_mode"

.field private static final KEY_MHDC_MU_MIMO:Ljava/lang/String; = "mh_mumimo"

.field private static final KEY_MHDC_OUI:Ljava/lang/String; = "mh_oui"

.field private static final KEY_MHDC_RSSI:Ljava/lang/String; = "mh_rssi"

.field private static final KEY_MHDC_SAM_RSN:Ljava/lang/String; = "mh_srsn"

.field private static final KEY_MHDC_WFA_RSN:Ljava/lang/String; = "mh_wrsn"

.field private static final MHDC:[[Ljava/lang/String;


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0xa

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "mh_oui"

    const-string v2, ""

    .line 36
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "mh_dis"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "mh_srsn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "mh_wrsn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "mh_bw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "mh_rssi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "mh_datarate"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "mh_mode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "mh_antmode"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "mh_mumimo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 2

    .line 58
    sget-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 5

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 64
    array-length v0, p1

    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/BigDataItemMHDC;->MHDC:[[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_d

    goto :goto_12

    .line 70
    :cond_d
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 65
    :cond_12
    :goto_12
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_1d

    .line 66
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method
