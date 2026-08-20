.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataTCPE.java"


# static fields
.field private static final KEY_TCPE_ACTION_RESULT:Ljava/lang/String; = "TCQC"

.field private static final KEY_TCPE_ALGORITHM_RESULT:Ljava/lang/String; = "TCAL"

.field private static final KEY_TCPE_AP_CONNECTION_COUNT:Ljava/lang/String; = "TCPF"

.field private static final KEY_TCPE_AP_CONNECTION_TIME:Ljava/lang/String; = "TCPG"

.field private static final KEY_TCPE_AP_DETECTED_COUNT:Ljava/lang/String; = "TCUT"

.field private static final KEY_TCPE_AP_FREQUENCY:Ljava/lang/String; = "TCFR"

.field private static final KEY_TCPE_AP_PACKAGE_DETECTED_COUNT:Ljava/lang/String; = "TCPC"

.field private static final KEY_TCPE_ESTABLISHED:Ljava/lang/String; = "TCPE"

.field private static final KEY_TCPE_LASTACK:Ljava/lang/String; = "TCPL"

.field private static final KEY_TCPE_LINKSPEED:Ljava/lang/String; = "TCLS"

.field private static final KEY_TCPE_LOSS:Ljava/lang/String; = "TCLO"

.field private static final KEY_TCPE_PACKAGE_AUTO_SWITCH_ENABLED:Ljava/lang/String; = "TCID"

.field private static final KEY_TCPE_PACKAGE_CATEGORY:Ljava/lang/String; = "TCST"

.field private static final KEY_TCPE_PACKAGE_DETECTED_COUNT:Ljava/lang/String; = "TCPW"

.field private static final KEY_TCPE_PACKAGE_NAME:Ljava/lang/String; = "TCPN"

.field private static final KEY_TCPE_RECEIVED_PACKETS:Ljava/lang/String; = "TCRX"

.field private static final KEY_TCPE_RETRANSMISSION:Ljava/lang/String; = "TCPR"

.field private static final KEY_TCPE_RSSI:Ljava/lang/String; = "TCRS"

.field private static final KEY_TCPE_SYN:Ljava/lang/String; = "TCPS"

.field private static final KEY_TCPE_TIME:Ljava/lang/String; = "TCTM"

.field private static final KEY_TCPE_TRANSMITTED_PACKETS:Ljava/lang/String; = "TCTX"

.field private static final KEY_TCPE_VERSION:Ljava/lang/String; = "SVER"

.field private static final TCPE:[[Ljava/lang/String;

.field public static final USER_ACTION_DETECTED:I = 0x0

.field public static final USER_ACTION_NOTIFICATION_DELETE_HUN:I = 0x2

.field public static final USER_ACTION_NOTIFICATION_DELETE_NORMAL:I = 0x3

.field public static final USER_ACTION_NOTIFICATION_DELETE_SUGGESTION:I = 0x1

.field public static final USER_ACTION_NOTIFICATION_HUN_USE_MOBILE_DATA:I = 0x5

.field public static final USER_ACTION_NOTIFICATION_NORMAL_SETTINGS:I = 0x6

.field public static final USER_ACTION_NOTIFICATION_SUGGESTION_SETTINGS:I = 0x4

.field public static final USER_ACTION_SETTING_FEATURE_OFF:I = 0x9

.field public static final USER_ACTION_SETTING_FEATURE_ON:I = 0x7

.field public static final USER_ACTION_SETTING_FEATURE_ON_SUGGESTION:I = 0x8

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_OFF:I = 0xb

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_ON:I = 0xa

.field public static final USER_ACTION_SETTING_INDIVIDUAL_APP_STOP:I = 0xc


# instance fields
.field public mTcpActionResult:I

.field public mTcpAlgorithmResult:Ljava/lang/String;

.field public mTcpApConnectionCount:I

.field public mTcpApConnectionTime:I

.field public mTcpApDetectedCount:I

.field public mTcpApFrequency:I

.field public mTcpApPackageDetectedCount:I

.field public mTcpEstablished:I

.field public mTcpLastAck:I

.field public mTcpLinkSpeed:I

.field public mTcpLoss:D

.field public mTcpPackageAutoSwitchEnabled:I

.field public mTcpPackageCategory:Ljava/lang/String;

.field public mTcpPackageDetectedCount:I

.field public mTcpPackageName:Ljava/lang/String;

.field public mTcpRetransmission:I

.field public mTcpRssi:I

.field public mTcpRx:J

.field public mTcpSyn:I

.field public mTcpTime:J

.field public mTcpTx:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "SVER"

    const-string v2, "2022061611"

    .line 88
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "TCTM"

    const-string v2, "123"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TCQC"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "TCAL"

    const-string v3, "NoBlocking"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "TCPN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "TCPE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "TCPS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "TCPR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "TCPL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "TCRS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "TCLS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "TCTX"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "TCRX"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "TCLO"

    const-string v3, "0.0"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "TCFR"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "TCST"

    const-string v3, "NONE"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "TCPW"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "TCPC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "TCUT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "TCPF"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "TCPG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const-string v1, "TCID"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .registers 4

    .line 177
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    const-string v2, "TCTM"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 178
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    const-string v1, "TCQC"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    const-string v1, "TCAL"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    const-string v2, "TCTX"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 182
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    const-string v2, "TCRX"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;J)V

    .line 183
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    const-string v2, "TCLO"

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;D)V

    .line 184
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    const-string v1, "TCRS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 185
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    const-string v1, "TCLS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 186
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    const-string v1, "TCFR"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    const-string v1, "TCPN"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    const-string v1, "TCST"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    const-string v1, "TCPW"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 191
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    const-string v1, "TCID"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 193
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    const-string v1, "TCPC"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 194
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    const-string v1, "TCUT"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 195
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    const-string v1, "TCPF"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 196
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    const-string v1, "TCPG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 199
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    const-string v1, "TCPE"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 200
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    const-string v1, "TCPS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 201
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    const-string v1, "TCPR"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 202
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    const-string v1, "TCPL"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 4

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    sget-boolean v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->DBG:Z

    if-eqz v1, :cond_2c

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJsonFormat - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 5

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTime:J

    const/4 v2, 0x0

    .line 148
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpActionResult:I

    const/4 v3, 0x0

    .line 149
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpAlgorithmResult:Ljava/lang/String;

    .line 151
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpTx:J

    .line 152
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRx:J

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLoss:D

    .line 154
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRssi:I

    .line 155
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLinkSpeed:I

    .line 157
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageName:Ljava/lang/String;

    .line 158
    iput-object v3, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageCategory:Ljava/lang/String;

    .line 159
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageDetectedCount:I

    .line 161
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApFrequency:I

    .line 162
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApPackageDetectedCount:I

    .line 163
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApDetectedCount:I

    .line 164
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionCount:I

    .line 165
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpApConnectionTime:I

    .line 166
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpPackageAutoSwitchEnabled:I

    .line 169
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpEstablished:I

    .line 170
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpSyn:I

    .line 171
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpRetransmission:I

    .line 172
    iput v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->mTcpLastAck:I

    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 217
    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_13

    .line 218
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataTCPE;->TCPE:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v1, p1, p0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method
