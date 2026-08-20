.class public Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;
.super Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;
.source "WcmBigDataSCNT.java"


# static fields
.field public static final KEY_SNS_ELE_GP:Ljava/lang/String; = "SEGP"

.field public static final KEY_SNS_ELE_PG:Ljava/lang/String; = "SEPG"

.field public static final KEY_SNS_GQ_INV_NON:Ljava/lang/String; = "GINS"

.field public static final KEY_SNS_GQ_INV_NORMAL:Ljava/lang/String; = "GINO"

.field public static final KEY_SNS_GQ_PQ_NON:Ljava/lang/String; = "QPNS"

.field public static final KEY_SNS_GQ_PQ_NORMAL:Ljava/lang/String; = "QPNO"

.field public static final KEY_SNS_INV_GQ_NON:Ljava/lang/String; = "IGNS"

.field public static final KEY_SNS_INV_GQ_NORMAL:Ljava/lang/String; = "IGNO"

.field public static final KEY_SNS_INV_PQ_NON:Ljava/lang/String; = "IPNS"

.field public static final KEY_SNS_INV_PQ_NORMAL:Ljava/lang/String; = "IPNO"

.field public static final KEY_SNS_IV_AGG:Ljava/lang/String; = "IVAG"

.field public static final KEY_SNS_IV_NONSWITCHABLE:Ljava/lang/String; = "IVNS"

.field public static final KEY_SNS_IV_NORMAL:Ljava/lang/String; = "IVNO"

.field public static final KEY_SNS_IWC_MW:Ljava/lang/String; = "SIMW"

.field public static final KEY_SNS_IWC_WM:Ljava/lang/String; = "SIWM"

.field public static final KEY_SNS_PQ_GQ_NON:Ljava/lang/String; = "QPNS"

.field public static final KEY_SNS_PQ_GQ_NORMAL:Ljava/lang/String; = "QPNO"

.field public static final KEY_SNS_PQ_INV_NON:Ljava/lang/String; = "PINS"

.field public static final KEY_SNS_PQ_INV_NORMAL:Ljava/lang/String; = "PINO"

.field public static final KEY_SNS_TURN_OFF:Ljava/lang/String; = "SSMO"

.field public static final KEY_SNS_TURN_ON_AGG:Ljava/lang/String; = "SSMA"

.field public static final KEY_SNS_TURN_ON_NORMAL:Ljava/lang/String; = "SSMN"

.field private static final KEY_SNS_VERSION:Ljava/lang/String; = "SVER"

.field public static final KEY_SNS_VI_AGG:Ljava/lang/String; = "VIAG"

.field public static final KEY_SNS_VI_NONSWITCHABLE:Ljava/lang/String; = "VINS"

.field public static final KEY_SNS_VI_NORMAL:Ljava/lang/String; = "VINO"

.field public static final KEY_WCM_ANS_CAUSE_STATE:Ljava/lang/String; = "PIAG"

.field public static final KEY_WCM_ANS_QC_RESULT:Ljava/lang/String; = "QPAG"

.field public static final KEY_WCM_ANS_RESERVED:Ljava/lang/String; = "QPAG"

.field public static final KEY_WCM_ANS_STAGE:Ljava/lang/String; = "GIAG"

.field public static final KEY_WCM_ANS_SUCCESS:Ljava/lang/String; = "IGAG"

.field public static final KEY_WCM_ANS_TIME_DELAY:Ljava/lang/String; = "IPAG"

.field private static final SCNT:[[Ljava/lang/String;


# instance fields
.field public mAnsCauseState:I

.field public mAnsQcResult:I

.field public mAnsReserved:I

.field public mAnsStage:I

.field public mAnsSuccess:I

.field public mAnsTimeDelay:I

.field public mEleGP:I

.field public mElePG:I

.field public mGqInvNon:I

.field public mGqInvNormal:I

.field public mGqPqNon:I

.field public mGqPqNormal:I

.field public mIVAGG:I

.field public mIVNonSwitchable:I

.field public mIVNormal:I

.field public mInvGqNon:I

.field public mInvGqNormal:I

.field public mInvPqNon:I

.field public mInvPqNormal:I

.field public mIwcMW:I

.field public mIwcWM:I

.field public mPqGqNon:I

.field public mPqGqNormal:I

.field public mPqInvNon:I

.field public mPqInvNormal:I

.field public mTurnedOff:I

.field public mTurnedOnAGG:I

.field public mTurnedOnNormal:I

.field public mVIAGG:I

.field public mVINonSwitchable:I

.field public mVINormal:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "SVER"

    const-string v2, "20210825"

    .line 95
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "IVNS"

    const-string v2, "0"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "IVNO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "IVAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "VINS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    const-string v1, "VINO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    const-string v1, "VIAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-string v1, "GINS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "PINS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "IGNS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "IPNS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "QPNS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v0, v4

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "GINO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "PINO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "IGNO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "IPNO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "QPNO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v0, v4

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "GIAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "PIAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const-string v1, "IGAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-string v1, "IPAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-string v1, "QPAG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x17

    aput-object v3, v0, v4

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-string v1, "SIWM"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-string v1, "SIMW"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const-string v1, "SEGP"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const-string v1, "SEPG"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const-string v1, "SSMO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const-string v1, "SSMN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-string v1, "SSMA"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>()V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->initialize()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;-><init>(ZLjava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->initialize()V

    return-void
.end method


# virtual methods
.method public addOrUpdateAllValue()V
    .registers 3

    .line 248
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNonSwitchable:I

    const-string v1, "IVNS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 249
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNormal:I

    const-string v1, "IVNO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 250
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVAGG:I

    const-string v1, "IVAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 251
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINonSwitchable:I

    const-string v1, "VINS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 252
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINormal:I

    const-string v1, "VINO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 253
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVIAGG:I

    const-string v1, "VIAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 255
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNon:I

    const-string v1, "GINS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 256
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNon:I

    const-string v1, "PINS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 257
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNon:I

    const-string v1, "IGNS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 258
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNon:I

    const-string v1, "IPNS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 259
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNon:I

    const-string v1, "QPNS"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 260
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNon:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 262
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNormal:I

    const-string v1, "GINO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 263
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNormal:I

    const-string v1, "PINO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 264
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNormal:I

    const-string v1, "IGNO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 265
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNormal:I

    const-string v1, "IPNO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 266
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNormal:I

    const-string v1, "QPNO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 267
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNormal:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 280
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    const-string v1, "GIAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 281
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsCauseState:I

    const-string v1, "PIAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 282
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    const-string v1, "IGAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 283
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsTimeDelay:I

    const-string v1, "IPAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 284
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsQcResult:I

    const-string v1, "QPAG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 285
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsReserved:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 288
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIwcWM:I

    const-string v1, "SIWM"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 289
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIwcMW:I

    const-string v1, "SIMW"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 291
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mEleGP:I

    const-string v1, "SEGP"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 292
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mElePG:I

    const-string v1, "SEPG"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 294
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOff:I

    const-string v1, "SSMO"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 295
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnNormal:I

    const-string v1, "SSMN"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    .line 296
    iget v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnAGG:I

    const-string v1, "SSMA"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->addOrUpdateValue(Ljava/lang/String;I)V

    return-void
.end method

.method public getJsonFormat()Ljava/lang/String;
    .registers 4

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    sget-object v1, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
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

    .line 305
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 2

    const/4 v0, 0x0

    .line 201
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNonSwitchable:I

    .line 202
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVNormal:I

    .line 203
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIVAGG:I

    .line 204
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINonSwitchable:I

    .line 205
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVINormal:I

    .line 206
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mVIAGG:I

    .line 207
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNon:I

    .line 208
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNon:I

    .line 209
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNon:I

    .line 210
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNon:I

    .line 211
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNon:I

    .line 212
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNon:I

    .line 213
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqInvNormal:I

    .line 214
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqInvNormal:I

    .line 215
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvGqNormal:I

    .line 216
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mInvPqNormal:I

    .line 217
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mGqPqNormal:I

    .line 218
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mPqGqNormal:I

    .line 229
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsStage:I

    .line 230
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsCauseState:I

    .line 231
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsSuccess:I

    .line 232
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsTimeDelay:I

    .line 233
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsQcResult:I

    .line 234
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mAnsReserved:I

    .line 236
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIwcWM:I

    .line 237
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mIwcMW:I

    .line 238
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mEleGP:I

    .line 239
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mElePG:I

    .line 240
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOff:I

    .line 241
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnNormal:I

    .line 242
    iput v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->mTurnedOnAGG:I

    return-void
.end method

.method public putKeyValueString([Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 312
    :goto_4
    array-length v0, p1

    if-ge p0, v0, :cond_13

    .line 313
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmBigDataSCNT;->SCNT:[[Ljava/lang/String;

    aget-object v0, v0, p0

    aget-object v1, p1, p0

    const/4 v2, 0x1

    aput-object v1, v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_13
    return-void
.end method
