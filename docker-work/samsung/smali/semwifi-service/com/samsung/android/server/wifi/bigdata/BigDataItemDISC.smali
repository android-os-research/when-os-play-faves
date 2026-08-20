.class Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;
.super Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;
.source "BigDataItemDISC.java"


# static fields
.field private static final DISC:[[Ljava/lang/String;

.field static final KEY_ADPS_STATE:Ljava/lang/String; = "adps"

.field private static final KEY_AP_11KV:Ljava/lang/String; = "11KV"

.field private static final KEY_AP_11KV_IE:Ljava/lang/String; = "KVIE"

.field private static final KEY_AP_80211MODE:Ljava/lang/String; = "ap_mod"

.field private static final KEY_AP_ADPS_DISCONNECT:Ljava/lang/String; = "adps_dis"

.field private static final KEY_AP_AKM:Ljava/lang/String; = "ap_akm"

.field private static final KEY_AP_ANTENNA:Ljava/lang/String; = "ap_ant"

.field static final KEY_AP_BANDWIDTH:Ljava/lang/String; = "ap_bdw"

.field static final KEY_AP_BT_CONNECTION:Ljava/lang/String; = "bt_cnt"

.field static final KEY_AP_CHANNEL:Ljava/lang/String; = "ap_chn"

.field static final KEY_AP_CONN_DURATION:Ljava/lang/String; = "apdr"

.field private static final KEY_AP_DATA_RATE:Ljava/lang/String; = "ap_drt"

.field static final KEY_AP_DISCONNECT_REASON:Ljava/lang/String; = "cn_rsn"

.field static final KEY_AP_INTERNAL_REASON:Ljava/lang/String; = "cn_irs"

.field static final KEY_AP_INTERNAL_TYPE:Ljava/lang/String; = "apwe"

.field static final KEY_AP_LOCALLY_GENERATED:Ljava/lang/String; = "aplo"

.field static final KEY_AP_MAX_DATA_RATE:Ljava/lang/String; = "max_drt"

.field private static final KEY_AP_MU_MIMO:Ljava/lang/String; = "ap_mmo"

.field private static final KEY_AP_NOISE:Ljava/lang/String; = "ap_nos"

.field static final KEY_AP_OUI:Ljava/lang/String; = "ap_oui"

.field private static final KEY_AP_PASSPOINT:Ljava/lang/String; = "ap_pas"

.field private static final KEY_AP_ROAMING_COUNT:Ljava/lang/String; = "ap_rct"

.field private static final KEY_AP_ROAMING_FULLS_SCAN_COUNT:Ljava/lang/String; = "rfs_cnt"

.field private static final KEY_AP_ROAMING_PARTIAL_SCAN_COUNT:Ljava/lang/String; = "rps_cnt"

.field static final KEY_AP_ROAMING_TRIGGER:Ljava/lang/String; = "cn_rom"

.field static final KEY_AP_RSSI:Ljava/lang/String; = "ap_rsi"

.field private static final KEY_AP_SCAN_COUNT_SAME_CHANNEL:Ljava/lang/String; = "ap_snt"

.field private static final KEY_AP_SCAN_COUNT_TOTAL:Ljava/lang/String; = "ap_stc"

.field static final KEY_AP_SECURE_TYPE:Ljava/lang/String; = "ap_sec"

.field private static final KEY_AP_SNR:Ljava/lang/String; = "ap_snr"

.field static final KEY_TX_BACK_OFF:Ljava/lang/String; = "txof"

.field static final KEY_TX_BACK_OFF_COUNT:Ljava/lang/String; = "txcn"

.field static final KEY_TX_BACK_OFF_DURATION:Ljava/lang/String; = "txdr"

.field static final KEY_UNIQ_VALUE:Ljava/lang/String; = "DUNO"

.field private static final KEY_VER:Ljava/lang/String; = "bver"

.field static final KEY_WPA_STATE:Ljava/lang/String; = "wpst"

.field private static final PARM_VERSION:Ljava/lang/String; = "7"


# instance fields
.field private final mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

.field mMaxDataRate:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x19

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "ap_sec"

    const-string v2, ""

    .line 65
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "wpst"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "ap_stc"

    const-string v3, "0"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "ap_snt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "cn_rsn"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "aplo"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "DUNO"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "ap_oui"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "ap_chn"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "ap_bdw"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "ap_rsi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "ap_drt"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "ap_mod"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "ap_ant"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "ap_mmo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "ap_pas"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, "ap_snr"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, "ap_nos"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, "ap_akm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "ap_rct"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "11KV"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "KVIE"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "rfs_cnt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "rps_cnt"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "adps_dis"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;)V
    .registers 3

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 99
    iput-object p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    return-void
.end method


# virtual methods
.method public addOrUpdateValue(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "max_drt"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 126
    iget v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    if-ge p2, v0, :cond_e

    move p2, v0

    goto :goto_10

    .line 129
    :cond_e
    iput p2, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 132
    :cond_10
    :goto_10
    invoke-super {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void
.end method

.method public clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mMaxDataRate:I

    .line 138
    invoke-super {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->clearData()V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 5

    const-string v0, "0"

    const-string v1, ","

    .line 105
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->mAdapter:Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;

    invoke-interface {v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem$Adapter;->getWifiVersionKeyValueString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    .line 106
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cn_rom"

    .line 107
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "cn_irs"

    .line 108
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "max_drt"

    .line 109
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bt_cnt"

    .line 110
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "apwe"

    .line 111
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "adps"

    .line 112
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "txof"

    .line 113
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "txdr"

    .line 114
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "txcn"

    .line 115
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bver"

    const-string v3, "7"

    .line 116
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getKeyValueString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "apdr"

    .line 117
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getDurationTimeKeyValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a8
    .catchall {:try_start_4 .. :try_end_a8} :catchall_ac

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->resetTime()V

    return-object v0

    :catchall_ac
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->resetTime()V

    .line 120
    throw v0
.end method

.method public isAvailableLogging(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 175
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->isAvailableLogging(I)Z

    move-result p0

    return p0
.end method

.method public parseData(Ljava/lang/String;)Z
    .registers 8

    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->getArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "-1"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_28

    .line 145
    array-length v3, p1

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    array-length v5, v4

    sub-int/2addr v5, v2

    if-ne v3, v5, :cond_28

    .line 146
    array-length v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 147
    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {p1, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aput-object v0, v3, v5

    .line 149
    array-length v0, v4

    sub-int/2addr v0, v2

    array-length v4, p1

    sub-int/2addr v4, v2

    aget-object p1, p1, v4

    aput-object p1, v3, v0

    :goto_26
    move-object p1, v3

    goto :goto_52

    :cond_28
    if-eqz p1, :cond_52

    .line 151
    array-length v3, p1

    sget-object v4, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x3

    if-ne v3, v5, :cond_52

    .line 152
    array-length v3, v4

    new-array v3, v3, [Ljava/lang/String;

    .line 153
    array-length v5, p1

    sub-int/2addr v5, v2

    invoke-static {p1, v1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    array-length v5, v4

    add-int/lit8 v5, v5, -0x4

    aput-object v0, v3, v5

    .line 155
    array-length v5, v4

    add-int/lit8 v5, v5, -0x3

    aput-object v0, v3, v5

    .line 156
    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aput-object v0, v3, v5

    .line 157
    array-length v0, v4

    sub-int/2addr v0, v2

    array-length v4, p1

    sub-int/2addr v4, v2

    aget-object p1, p1, v4

    aput-object p1, v3, v0

    goto :goto_26

    :cond_52
    :goto_52
    if-eqz p1, :cond_5f

    .line 160
    array-length v0, p1

    sget-object v3, Lcom/samsung/android/server/wifi/bigdata/BigDataItemDISC;->DISC:[[Ljava/lang/String;

    array-length v4, v3

    if-eq v0, v4, :cond_5b

    goto :goto_5f

    .line 166
    :cond_5b
    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->putValues([[Ljava/lang/String;[Ljava/lang/String;)V

    return v2

    .line 161
    :cond_5f
    :goto_5f
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->mLogMessages:Z

    if-eqz p1, :cond_6a

    .line 162
    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/BaseBigDataItem;->TAG:Ljava/lang/String;

    const-string p1, "can\'t parse bigdata extra"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    return v1
.end method
