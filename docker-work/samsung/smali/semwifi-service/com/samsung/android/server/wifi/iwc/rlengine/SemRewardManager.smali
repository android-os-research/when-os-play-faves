.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;
.super Ljava/lang/Object;
.source "SemRewardManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IWCMonitor.RM"

.field private static alpha:F = 0.8f

.field private static alpha_half:F = 0.9f

.field private static beta:F = 0.8f

.field private static gamma:F = 1.0f

.field private static gamma_dis:F = 0.98f


# instance fields
.field private IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

.field public mSwitchFlag:Z

.field public storedCurrentAP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method


# virtual methods
.method public _sendDebugIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V
    .registers 8

    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 43
    :cond_7
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.android.IWC_REWARD_EVENT_DEBUG"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "kind"

    .line 44
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "event"

    .line 45
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "bssid"

    .line 46
    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "tableindex"

    .line 47
    invoke-virtual {p0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    iget-object p2, p6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    const/4 p3, 0x0

    aget-object p2, p2, p3

    aget p2, p2, p3

    const-string p4, "lastvalue1"

    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 49
    iget-object p2, p6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    const/4 p4, 0x1

    aget-object p2, p2, p4

    aget p2, p2, p3

    const-string p5, "lastvalue2"

    invoke-virtual {p0, p5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 50
    iget-object p2, p6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    const/4 p5, 0x2

    aget-object p2, p2, p5

    aget p2, p2, p3

    const-string p3, "lastvalue3"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 51
    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result p2

    const-string p3, "ss_poor"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 52
    iget p2, p6, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    if-ne p2, p4, :cond_59

    invoke-virtual {p6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getState()I

    move-result p2

    add-int/2addr p2, p4

    goto :goto_5a

    :cond_59
    const/4 p2, -0x1

    :goto_5a
    const-string p3, "qai"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, p0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public applyRewards(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;J)I
    .registers 24

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    .line 77
    iget-object v1, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    iput-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    .line 79
    iget-boolean v1, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    iput-boolean v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->mSwitchFlag:Z

    .line 81
    iget-object v1, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v11, 0x3

    invoke-virtual {v1, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    .line 85
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->findTable(Ljava/lang/String;)I

    move-result v1

    const-string v2, "IWCMonitor.RM"

    const/4 v12, -0x1

    if-ne v1, v12, :cond_25

    const-string v0, "ApplyRewards - findTable returned -1"

    .line 87
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    .line 90
    :cond_25
    iget-object v0, v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->qTableList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    .line 93
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getState()I

    move-result v14

    .line 94
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getLastAction()I

    move-result v15

    .line 95
    invoke-virtual {v13}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getLastState()I

    move-result v16

    .line 97
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager$1;->$SwitchMap$com$samsung$android$server$wifi$iwc$SemRewardEvent:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_312

    move v12, v6

    move v9, v7

    move v11, v8

    goto/16 :goto_308

    .line 235
    :pswitch_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network_connected cur state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   Saved state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v11, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "NETWORK_CONNECTED initial value "

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v4, v16

    move v5, v15

    move v6, v11

    move v11, v8

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 238
    iget v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    if-eq v0, v12, :cond_e4

    .line 239
    iget-boolean v1, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const/4 v12, 0x1

    if-ne v1, v12, :cond_b8

    if-nez v0, :cond_e5

    .line 243
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED_WITH_SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 244
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->moreAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v13

    .line 245
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "SNS ON indirect : M"

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 247
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 248
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto :goto_e5

    :cond_b8
    if-nez v1, :cond_e5

    if-ne v0, v12, :cond_e5

    .line 253
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->NETWORK_CONNECTED_WITH_SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 254
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v13

    .line 255
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "SNS OFF indirect : L"

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 257
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 258
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto :goto_e5

    :cond_e4
    const/4 v12, 0x1

    :cond_e5
    :goto_e5
    move v8, v11

    .line 263
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    iput v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    goto/16 :goto_256

    :pswitch_ec
    move v12, v6

    move v11, v8

    .line 208
    iput v11, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    .line 210
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    const/16 v11, 0xa

    if-nez v0, :cond_11c

    .line 212
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v17

    .line 213
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 214
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "SNS OFF : L"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 216
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 217
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto/16 :goto_254

    .line 220
    :cond_11c
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v17

    .line 221
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v0

    .line 222
    invoke-virtual {v9, v0, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 223
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "SNS OFF : LL"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 226
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 227
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 228
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto/16 :goto_254

    :pswitch_14b
    move v12, v6

    .line 196
    iput v12, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    .line 199
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 200
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->moreAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 202
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "SNS ON : M"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 204
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 205
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto/16 :goto_22d

    :pswitch_176
    move v12, v6

    move v7, v8

    .line 187
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v17

    .line 188
    iget-object v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v0, v0, v14

    aget v1, v0, v7

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma_dis:F

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 190
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "auto_disconnection:M"

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 192
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 193
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto/16 :goto_254

    :pswitch_1ab
    move v12, v6

    move v7, v8

    .line 174
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    if-eqz v0, :cond_203

    .line 176
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CELLULAR_DATA_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 177
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 179
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "cellular_data_off:L"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 181
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 182
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto :goto_22d

    :pswitch_1d7
    move v12, v6

    move v7, v8

    .line 160
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    if-eqz v0, :cond_203

    .line 162
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->WIFI_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 163
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->moreAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 165
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "wifi-off:M"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 167
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 168
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    goto :goto_22d

    :cond_203
    move v11, v7

    const/4 v9, 0x2

    goto/16 :goto_308

    :pswitch_207
    move v12, v6

    .line 151
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_RECONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 152
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 154
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "Manual_reconection:L"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 156
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 157
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    :goto_22d
    move v8, v11

    goto :goto_256

    :pswitch_22f
    move v12, v6

    .line 141
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->CONNECTION_SWITCHED_TOO_SHORT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v17

    .line 142
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 144
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "connection_switched_too_short:L"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 146
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 147
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    :goto_254
    move/from16 v8, v17

    :goto_256
    const/4 v9, 0x2

    goto/16 :goto_309

    :pswitch_259
    move v12, v6

    .line 131
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v11

    .line 132
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v2

    .line 134
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "Manual_switch_L:L"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 136
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 137
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    move v8, v11

    move v9, v14

    goto/16 :goto_309

    :pswitch_283
    move v12, v6

    move v14, v7

    move v7, v8

    .line 124
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "Manual_switch_G:X"

    move-object/from16 v0, p0

    move-object v2, v13

    move/from16 v4, v16

    move v5, v15

    move v11, v7

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 126
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 127
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    move v9, v14

    goto/16 :goto_308

    :pswitch_2a5
    move v12, v6

    move v11, v8

    .line 112
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    if-eqz v0, :cond_2b8

    .line 114
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v8

    .line 115
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->moreAggressiveHalfRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v0

    move-object v2, v0

    move v13, v8

    goto :goto_2ba

    :cond_2b8
    move-object v2, v13

    move v13, v11

    .line 118
    :goto_2ba
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "Manual_switch:halfM"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move v9, v7

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 120
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 121
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    move v8, v13

    goto :goto_309

    :pswitch_2d7
    move v12, v6

    move v11, v8

    .line 100
    iget-boolean v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->edgeFlag:Z

    if-eqz v0, :cond_2ea

    .line 102
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_DISCONNECT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v13, v0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I

    move-result v8

    .line 103
    invoke-virtual {v9, v13, v14}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->moreAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    move-result-object v0

    move-object v2, v0

    move v11, v8

    goto :goto_2eb

    :cond_2ea
    move-object v2, v13

    .line 105
    :goto_2eb
    iget-object v1, v9, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->storedCurrentAP:Ljava/lang/String;

    iget-boolean v6, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->snsFlag:Z

    const-string v3, "Manual_disconnect:M"

    move-object/from16 v0, p0

    move/from16 v4, v16

    move v5, v15

    move v9, v7

    move-wide/from16 v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V

    .line 107
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->set24HEventAccWithIdx(I)V

    .line 108
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    :goto_308
    move v8, v11

    :goto_309
    if-ne v8, v12, :cond_310

    .line 272
    iget-object v0, v10, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->mBdTracking:Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;

    invoke-virtual {v0, v9}, Lcom/samsung/android/server/wifi/iwc/SemIWCBDTracking;->setIdInfo(I)V

    :cond_310
    return v8

    nop

    :pswitch_data_312
    .packed-switch 0x1
        :pswitch_2d7
        :pswitch_2a5
        :pswitch_283
        :pswitch_259
        :pswitch_22f
        :pswitch_207
        :pswitch_1d7
        :pswitch_1ab
        :pswitch_176
        :pswitch_14b
        :pswitch_ec
        :pswitch_4d
    .end packed-switch
.end method

.method public getEventTypeString(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;Z)Ljava/lang/String;
    .registers 3

    .line 280
    sget-object p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager$1;->$SwitchMap$com$samsung$android$server$wifi$iwc$SemRewardEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_38

    const-string p0, "NONE"

    goto :goto_36

    :pswitch_e
    const-string p0, "WiFi Network Changed"

    goto :goto_36

    :pswitch_11
    if-nez p2, :cond_16

    const-string p0, "SNS OFF : L"

    goto :goto_36

    :cond_16
    const-string p0, "SNS OFF : LL"

    goto :goto_36

    :pswitch_19
    const-string p0, "SNS ON : M"

    goto :goto_36

    :pswitch_1c
    const-string p0, "auto_disconnection:A"

    goto :goto_36

    :pswitch_1f
    const-string p0, "cellular_data_off:L"

    goto :goto_36

    :pswitch_22
    const-string p0, "wifi-off:M"

    goto :goto_36

    :pswitch_25
    const-string p0, "Manual_reconection:L"

    goto :goto_36

    :pswitch_28
    const-string p0, "connection_switched_too_short:L"

    goto :goto_36

    :pswitch_2b
    const-string p0, "Manual_switch_L:L"

    goto :goto_36

    :pswitch_2e
    const-string p0, "Manual_switch_G:X"

    goto :goto_36

    :pswitch_31
    const-string p0, "Manual_switch:halfM"

    goto :goto_36

    :pswitch_34
    const-string p0, "Manual_disconnect:M"

    :goto_36
    return-object p0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method

.method public lessAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
    .registers 8

    const/4 p0, 0x0

    move v0, p0

    .line 380
    :goto_2
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge v0, v1, :cond_14

    .line 381
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v1, v1, v0

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->alpha:F

    aget v3, v1, p0

    mul-float/2addr v2, v3

    aput v2, v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_24

    .line 384
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object p2, v0, p2

    aget v0, p2, p0

    sget v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    add-float/2addr v0, v1

    aput v0, p2, p0

    goto :goto_40

    :cond_24
    add-int/lit8 p2, p2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    move v1, v0

    .line 386
    :goto_29
    iget v2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge p2, v2, :cond_40

    .line 387
    iget-object v2, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v2, v2, p2

    aget v3, v2, p0

    sget v4, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    mul-float/2addr v4, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    aput v3, v2, p0

    .line 388
    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->beta:F

    mul-float/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_29

    :cond_40
    :goto_40
    return-object p1
.end method

.method public moreAggressiveHalfRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    .line 358
    :goto_2
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge v0, v1, :cond_14

    .line 359
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v1, v1, v0

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->alpha_half:F

    aget v3, v1, p0

    mul-float/2addr v2, v3

    aput v2, v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/high16 v0, 0x3f000000    # 0.5f

    if-nez p2, :cond_25

    .line 362
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object p2, v1, p2

    aget v1, p2, p0

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    aput v1, p2, p0

    goto :goto_3b

    :cond_25
    add-int/lit8 p2, p2, -0x1

    :goto_27
    if-ltz p2, :cond_3b

    .line 366
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v1, v1, p2

    aget v2, v1, p0

    sget v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, p0

    .line 367
    sget v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->beta:F

    mul-float/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public moreAggressiveRewardUpdateCB(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;I)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
    .registers 7

    const/4 p0, 0x0

    move v0, p0

    .line 333
    :goto_2
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge v0, v1, :cond_14

    .line 334
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v1, v1, v0

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->alpha:F

    aget v3, v1, p0

    mul-float/2addr v2, v3

    aput v2, v1, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_14
    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p2, :cond_25

    .line 337
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object p2, v1, p2

    aget v1, p2, p0

    sget v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    aput v1, p2, p0

    goto :goto_3b

    :cond_25
    add-int/lit8 p2, p2, -0x1

    :goto_27
    if-ltz p2, :cond_3b

    .line 341
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v1, v1, p2

    aget v2, v1, p0

    sget v3, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->gamma:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    aput v2, v1, p0

    .line 342
    sget v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->beta:F

    mul-float/2addr v0, v1

    add-int/lit8 p2, p2, -0x1

    goto :goto_27

    :cond_3b
    :goto_3b
    return-object p1
.end method

.method public sendDebugIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V
    .registers 13

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->_sendDebugIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V

    return-void
.end method

.method public updateDebugIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V
    .registers 13

    const/4 v2, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->_sendDebugIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V

    return-void
.end method

.method public writeLog(Ljava/lang/String;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;Ljava/lang/String;IIZJ)V
    .registers 13

    .line 396
    new-instance p4, Ljava/lang/StringBuffer;

    invoke-direct {p4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 p5, 0x2

    new-array v0, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const-string v2, "CAP: %s, Event: %s>> "

    .line 399
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Q-Table: ["

    .line 400
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    .line 401
    :goto_23
    iget v2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    if-ge v0, v2, :cond_4c

    new-array v2, p1, [Ljava/lang/Object;

    .line 402
    iget-object v3, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v3, v3, v0

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v3, " %.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, ";"

    .line 403
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 405
    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ] >> swflag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->mSwitchFlag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " timestamp ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz v0, :cond_7d

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v3, "Q-Table reward update"

    invoke-virtual {v0, v3, p4}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7d
    const-string p4, "NETWORK_CONNECTED initial value "

    .line 409
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eq p3, p1, :cond_f6

    .line 411
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    new-array p4, p5, [Ljava/lang/Object;

    .line 414
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->getSteadyState()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, v1

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, p1

    const-string p5, "isSteadyState: %b, snsFlag: %b "

    .line 413
    invoke-static {p5, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array p4, v1, [Ljava/lang/Object;

    const-string p5, "EventBuffer: ["

    .line 415
    invoke-static {p5, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    iget-object p2, p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 417
    :goto_b6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_d8

    .line 418
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 419
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    new-array p5, p1, [Ljava/lang/Object;

    .line 420
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p5, v1

    const-string p4, " %d"

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_b6

    :cond_d8
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, " ]"

    .line 422
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p7, p8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 425
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRewardManager;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-eqz p0, :cond_f6

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Steady State"

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    return-void
.end method
