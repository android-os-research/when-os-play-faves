.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataSSVI.java"


# static fields
.field private static final KEY_LIC_AP_CHIPSET_OUI:Ljava/lang/String; = "Coui"

.field private static final KEY_LIC_AVGLINKSPEED:Ljava/lang/String; = "LKSD"

.field private static final KEY_LIC_BSSID_OUI:Ljava/lang/String; = "Boui"

.field private static final KEY_LIC_BTCOEX:Ljava/lang/String; = "BTC"

.field private static final KEY_LIC_CCA:Ljava/lang/String; = "CCA"

.field private static final KEY_LIC_CHIPSET_NAME:Ljava/lang/String; = "CSPN"

.field private static final KEY_LIC_CONNECTION_TIME:Ljava/lang/String; = "CTIM"

.field private static final KEY_LIC_HOTSPOT:Ljava/lang/String; = "MHSP"

.field private static final KEY_LIC_NAN:Ljava/lang/String; = "NAN"

.field private static final KEY_LIC_OBSS:Ljava/lang/String; = "OBSS"

.field private static final KEY_LIC_OPERATING_CHANNEL:Ljava/lang/String; = "OPCH"

.field private static final KEY_LIC_OPTIMIZER:Ljava/lang/String; = "OPT"

.field private static final KEY_LIC_P2P:Ljava/lang/String; = "P2P"

.field private static final KEY_LIC_PRIVATE_DNS:Ljava/lang/String; = "PDNS"

.field private static final KEY_LIC_RSSI_CUR:Ljava/lang/String; = "Rcur"

.field private static final KEY_LIC_RSSI_MAX:Ljava/lang/String; = "Rmax"

.field private static final KEY_LIC_RSSI_MIN:Ljava/lang/String; = "Rmin"

.field private static final KEY_LIC_SCREEN_STATE:Ljava/lang/String; = "SCRS"

.field private static final KEY_LIC_TWT:Ljava/lang/String; = "TWT"

.field private static final KEY_LIC_TX_BAD:Ljava/lang/String; = "TBAD"

.field private static final KEY_LIC_TX_RETRY:Ljava/lang/String; = "TRET"

.field private static final KEY_LIC_VALIDATION_CHECK_RESULT:Ljava/lang/String; = "VALD"

.field private static final KEY_LIC_VPN:Ljava/lang/String; = "VPN"

.field private static final KEY_LIC_WIFI_STANDARD:Ljava/lang/String; = "WSTD"

.field private static final KEY_VERSION:Ljava/lang/String; = "VER"

.field private static final SSVI:[[Ljava/lang/String;


# instance fields
.field public mApChipsetOui:Ljava/lang/String;

.field public mAvgLinkSpeed:I

.field public mBssidOui:Ljava/lang/String;

.field public mBtCoex:I

.field public mCca:Ljava/lang/String;

.field public mChipsetName:Ljava/lang/String;

.field public mConnectionTime:I

.field public mHotspot:I

.field public mNan:I

.field public mObss:I

.field public mOperatingChannel:I

.field public mOptimizer:I

.field public mP2p:I

.field public mPrivateDns:I

.field public mRssiCur:I

.field public mRssiMax:I

.field public mRssiMin:I

.field public mScreenState:I

.field public mTwt:I

.field public mTxBad:I

.field public mTxRetry:I

.field public mValidationCheck:I

.field public mVpn:I

.field public mWifiStandard:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x19

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "VER"

    const-string v2, "20221007"

    .line 125
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TWT"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "OPT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "BTC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "PDNS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "VPN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "P2P"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "NAN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "MHSP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "OPCH"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "OBSS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "TRET"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "TBAD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "CTIM"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "VALD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "Rcur"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "Rmax"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "Rmin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "CCA"

    const-string v3, ""

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "LKSD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, "Boui"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, "WSTD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, "Coui"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const-string v1, "CSPN"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-string v1, "SCRS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->SSVI:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->initialize()V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .registers 3

    .line 216
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTwt:I

    const-string v1, "TWT"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 217
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOptimizer:I

    const-string v1, "OPT"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 218
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBtCoex:I

    const-string v1, "BTC"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 219
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mPrivateDns:I

    const-string v1, "PDNS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 220
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mVpn:I

    const-string v1, "VPN"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 221
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mP2p:I

    const-string v1, "P2P"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 222
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mNan:I

    const-string v1, "NAN"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 223
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mHotspot:I

    const-string v1, "MHSP"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 224
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOperatingChannel:I

    const-string v1, "OPCH"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 225
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mObss:I

    const-string v1, "OBSS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 226
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxRetry:I

    const-string v1, "TRET"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 227
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxBad:I

    const-string v1, "TBAD"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 228
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mConnectionTime:I

    const-string v1, "CTIM"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 229
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mValidationCheck:I

    const-string v1, "VALD"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 230
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiCur:I

    const-string v1, "Rcur"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 231
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMax:I

    const-string v1, "Rmax"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 232
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMin:I

    const-string v1, "Rmin"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mCca:Ljava/lang/String;

    const-string v1, "CCA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mAvgLinkSpeed:I

    const-string v1, "LKSD"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBssidOui:Ljava/lang/String;

    const-string v1, "Boui"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mWifiStandard:I

    const-string v1, "WSTD"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mApChipsetOui:Ljava/lang/String;

    const-string v1, "Coui"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mChipsetName:Ljava/lang/String;

    const-string v1, "CSPN"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScreenState:I

    const-string v1, "SCRS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    :try_start_5
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->SSVI:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2c} :catch_2d

    goto :goto_4b

    :catch_2d
    move-exception v1

    .line 249
    sget-boolean v2, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v2, :cond_48

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured on getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 3

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTwt:I

    .line 189
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOptimizer:I

    .line 190
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBtCoex:I

    .line 191
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mPrivateDns:I

    .line 192
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mVpn:I

    .line 193
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mP2p:I

    .line 194
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mNan:I

    .line 195
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mHotspot:I

    .line 196
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mOperatingChannel:I

    .line 197
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mObss:I

    .line 198
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxRetry:I

    .line 199
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mTxBad:I

    .line 200
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mConnectionTime:I

    .line 201
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mValidationCheck:I

    .line 202
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiCur:I

    .line 203
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMax:I

    .line 204
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mRssiMin:I

    const-string v1, ""

    .line 205
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mCca:Ljava/lang/String;

    .line 206
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mAvgLinkSpeed:I

    .line 207
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mBssidOui:Ljava/lang/String;

    .line 208
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mWifiStandard:I

    .line 209
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mApChipsetOui:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mChipsetName:Ljava/lang/String;

    .line 211
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSSVI;->mScreenState:I

    return-void
.end method
