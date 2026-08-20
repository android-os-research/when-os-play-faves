.class public Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;
.super Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;
.source "SemIwcBigDataMIWC.java"


# static fields
.field public static final KEY_IWC_AP_OUI:Ljava/lang/String; = "IWC_OUI"

.field public static final KEY_IWC_CANDIDATE_LIST_COUNT:Ljava/lang/String; = "IWC_CLN"

.field public static final KEY_IWC_CORE_LIST_COUNT:Ljava/lang/String; = "IWC_RLN"

.field public static final KEY_IWC_DEFAULT_QAI:Ljava/lang/String; = "IWC_DQ"

.field public static final KEY_IWC_DQA:Ljava/lang/String; = "IWC_DQA"

.field public static final KEY_IWC_DQC:Ljava/lang/String; = "IWC_DQC"

.field public static final KEY_IWC_DQD:Ljava/lang/String; = "IWC_DQD"

.field public static final KEY_IWC_DQT:Ljava/lang/String; = "IWC_DQT"

.field public static final KEY_IWC_EVENT10_COUNT:Ljava/lang/String; = "IWC_E10"

.field public static final KEY_IWC_EVENT11_COUNT:Ljava/lang/String; = "IWC_E11"

.field public static final KEY_IWC_EVENT12_COUNT:Ljava/lang/String; = "IWC_E12"

.field public static final KEY_IWC_EVENT13_COUNT:Ljava/lang/String; = "IWC_E13"

.field public static final KEY_IWC_EVENT1_COUNT:Ljava/lang/String; = "IWC_E1"

.field public static final KEY_IWC_EVENT2_COUNT:Ljava/lang/String; = "IWC_E2"

.field public static final KEY_IWC_EVENT3_COUNT:Ljava/lang/String; = "IWC_E3"

.field public static final KEY_IWC_EVENT4_COUNT:Ljava/lang/String; = "IWC_E4"

.field public static final KEY_IWC_EVENT5_COUNT:Ljava/lang/String; = "IWC_E5"

.field public static final KEY_IWC_EVENT6_COUNT:Ljava/lang/String; = "IWC_E6"

.field public static final KEY_IWC_EVENT7_COUNT:Ljava/lang/String; = "IWC_E7"

.field public static final KEY_IWC_EVENT8_COUNT:Ljava/lang/String; = "IWC_E8"

.field public static final KEY_IWC_EVENT9_COUNT:Ljava/lang/String; = "IWC_E9"

.field public static final KEY_IWC_EVENT_LIST:Ljava/lang/String; = "IWC_EL"

.field public static final KEY_IWC_GET_CURRENT_STATE:Ljava/lang/String; = "IWC_CS"

.field public static final KEY_IWC_ID:Ljava/lang/String; = "IWC_ID"

.field public static final KEY_IWC_NEW_QAI:Ljava/lang/String; = "IWC_NQ"

.field public static final KEY_IWC_POORLINK_COUNT:Ljava/lang/String; = "IWC_PON"

.field public static final KEY_IWC_PREV_QAI:Ljava/lang/String; = "IWC_PQ"

.field public static final KEY_IWC_PROBATION_LIST_COUNT:Ljava/lang/String; = "IWC_PLN"

.field public static final KEY_IWC_QAI1_SS_QTABLE:Ljava/lang/String; = "IWC_SS1"

.field public static final KEY_IWC_QAI2_SS_QTABLE:Ljava/lang/String; = "IWC_SS2"

.field public static final KEY_IWC_QAI3_SS_QTABLE:Ljava/lang/String; = "IWC_SS3"

.field public static final KEY_IWC_QTABLE:Ljava/lang/String; = "IWC_QT"

.field public static final KEY_IWC_QTALBE_COUNT:Ljava/lang/String; = "IWC_QTN"

.field public static final KEY_IWC_SAD:Ljava/lang/String; = "IWC_SAD"

.field public static final KEY_IWC_SAV:Ljava/lang/String; = "IWC_SAV"

.field public static final KEY_IWC_SNS_TOGGLE_COUNT:Ljava/lang/String; = "IWC_STO"

.field public static final KEY_IWC_SNS_UI_STATE:Ljava/lang/String; = "IWC_SUI"

.field public static final KEY_IWC_SS_QTALBE_COUNT:Ljava/lang/String; = "IWC_SSN"

.field public static final KEY_IWC_SS_TIME:Ljava/lang/String; = "IWC_SST"

.field public static final KEY_IWC_TCL:Ljava/lang/String; = "IWC_TCL"

.field public static final KEY_IWC_TST:Ljava/lang/String; = "IWC_TST"

.field private static final MIWC:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x29

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "IWC_ID"

    const-string v2, "0"

    .line 64
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const-string v1, "IWC_OUI"

    const-string v3, ""

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const-string v1, "IWC_CS"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "IWC_PQ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "IWC_NQ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string v1, "IWC_EL"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string v1, "IWC_QT"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string v1, "IWC_PON"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string v1, "IWC_SUI"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string v1, "IWC_STO"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string v1, "IWC_SS1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string v1, "IWC_SS2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    const-string v1, "IWC_SS3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xc

    aput-object v1, v0, v4

    const-string v1, "IWC_DQ"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xd

    aput-object v1, v0, v4

    const-string v1, "IWC_SST"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "IWC_QTN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xf

    aput-object v1, v0, v4

    const-string v1, "IWC_SSN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    aput-object v1, v0, v4

    const-string v1, "IWC_CLN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x11

    aput-object v1, v0, v4

    const-string v1, "IWC_RLN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    aput-object v1, v0, v4

    const-string v1, "IWC_PLN"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const-string v1, "IWC_E1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    aput-object v1, v0, v4

    const-string v1, "IWC_E2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x15

    aput-object v1, v0, v4

    const-string v1, "IWC_E3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x16

    aput-object v1, v0, v4

    const-string v1, "IWC_E4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    aput-object v1, v0, v4

    const-string v1, "IWC_E5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x18

    aput-object v1, v0, v4

    const-string v1, "IWC_E6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x19

    aput-object v1, v0, v4

    const-string v1, "IWC_E7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1a

    aput-object v1, v0, v4

    const-string v1, "IWC_E8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1b

    aput-object v1, v0, v4

    const-string v1, "IWC_E9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1c

    aput-object v1, v0, v4

    const-string v1, "IWC_E10"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1d

    aput-object v1, v0, v4

    const-string v1, "IWC_E11"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1e

    aput-object v1, v0, v4

    const-string v1, "IWC_E12"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f

    aput-object v1, v0, v4

    const-string v1, "IWC_E13"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x20

    aput-object v1, v0, v4

    const-string v1, "IWC_TST"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x21

    aput-object v1, v0, v4

    const-string v1, "IWC_TCL"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x22

    aput-object v1, v0, v4

    const-string v1, "IWC_DQC"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x23

    aput-object v1, v0, v4

    const-string v1, "IWC_DQD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x24

    aput-object v1, v0, v4

    const-string v1, "IWC_DQT"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x25

    aput-object v1, v0, v4

    const-string v1, "IWC_DQA"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v0, v3

    const-string v1, "IWC_SAV"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x27

    aput-object v1, v0, v3

    const-string v1, "IWC_SAD"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;->MIWC:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;-><init>()V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .registers 3

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;-><init>(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJsonFormat()Ljava/lang/String;
    .registers 5

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    :try_start_5
    sget-object v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataMIWC;->MIWC:[[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->getKeyValueStrings([[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    sget-boolean v1, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

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

    .line 122
    sget-boolean v2, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->DBG:Z

    if-eqz v2, :cond_48

    iget-object p0, p0, Lcom/samsung/android/server/wifi/bigdata/SemIwcBigDataFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured on getJsonFormat - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
