.class public Lcom/android/server/am/mars/MARsBigData;
.super Ljava/lang/Object;
.source "MARsBigData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/MARsBigData$LevelInfo;,
        Lcom/android/server/am/mars/MARsBigData$UsageInfo;
    }
.end annotation


# static fields
.field public static final HQM_ENABLE:Z = true

.field public static final HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static sInstance:Lcom/android/server/am/mars/MARsBigData;


# instance fields
.field public final COMPONENT:Ljava/lang/String;

.field public PLEVdata:Ljava/lang/String;

.field public final VER:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mHQM:Landroid/os/SemHqmManager;

.field public mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$msendBigDataInfoPLEV(Lcom/android/server/am/mars/MARsBigData;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoPLEV()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    const-string v1, "Sluggish"

    .line 38
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->COMPONENT:Ljava/lang/String;

    const-string v1, "1.0"

    .line 40
    iput-object v1, p0, Lcom/android/server/am/mars/MARsBigData;->VER:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/MARsBigData$1;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v0, :cond_27

    const-string v0, "HqmManagerService"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    .line 56
    :cond_27
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 57
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/server/am/mars/MARsBigData;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const-string v5, "com.samsung.android.permission.HQM_NOTIFICATION_PERMISSION"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/mars/MARsBigData;
    .registers 2

    .line 43
    sget-object v0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    if-nez v0, :cond_b

    .line 44
    new-instance v0, Lcom/android/server/am/mars/MARsBigData;

    invoke-direct {v0, p0}, Lcom/android/server/am/mars/MARsBigData;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    .line 46
    :cond_b
    sget-object p0, Lcom/android/server/am/mars/MARsBigData;->sInstance:Lcom/android/server/am/mars/MARsBigData;

    return-object p0
.end method


# virtual methods
.method public final sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 203
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->mHQM:Landroid/os/SemHqmManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    const-string v2, "Sluggish"

    const-string/jumbo v4, "ph"

    const-string v5, "1.0"

    const-string/jumbo v6, "sec"

    const-string v7, ""

    const-string v9, ""

    move-object v3, p1

    move-object v8, p2

    .line 207
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public final sendBigDataInfoPLEV()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v1, "PLEV"

    .line 198
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public sendBigDataInfoToHQM()V
    .registers 3

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_14

    :catch_4
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 67
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 70
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->sendBigDataInfoPLEV()V

    return-void
.end method

.method public sendFalconBigData(Lcom/android/server/am/MARsPackageInfo;)V
    .registers 9

    .line 211
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "PKGN"

    .line 214
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "UID"

    .line 215
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "NUSD"

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableResetTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x36ee80

    div-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "BUSE"

    .line 218
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    .line 220
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    :goto_3a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "FGSN"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateBigdataInfo()V
    .registers 15

    const/4 v0, 0x4

    new-array v5, v0, [Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_11

    .line 157
    new-instance v3, Lcom/android/server/am/mars/MARsBigData$LevelInfo;

    invoke-direct {v3, p0}, Lcom/android/server/am/mars/MARsBigData$LevelInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;)V

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 160
    :cond_11
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getMARsTargetPkgMap()Lcom/android/server/am/MARsPkgMap;

    move-result-object v2

    .line 163
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 164
    :try_start_1c
    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v4

    move v6, v1

    .line 165
    :goto_21
    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_93

    .line 166
    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    move v8, v1

    .line 167
    :goto_36
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_90

    .line 168
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    .line 169
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_86

    if-eq v10, v11, :cond_86

    const/4 v12, 0x2

    if-eq v10, v12, :cond_7e

    const/4 v13, 0x3

    if-eq v10, v13, :cond_76

    if-ne v10, v0, :cond_5b

    aget-object v9, v5, v13

    .line 181
    iget v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_8d

    .line 184
    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    aget-object v9, v5, v12

    .line 178
    iget v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_8d

    :cond_7e
    aget-object v9, v5, v11

    .line 175
    iget v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    goto :goto_8d

    :cond_86
    aget-object v9, v5, v1

    .line 172
    iget v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    add-int/2addr v10, v11

    iput v10, v9, Lcom/android/server/am/mars/MARsBigData$LevelInfo;->totalSize:I

    :goto_8d
    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    :cond_90
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 188
    :cond_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_1c .. :try_end_94} :catchall_aa

    .line 190
    new-instance v0, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>(Lcom/android/server/am/mars/MARsBigData;Ljava/lang/String;Ljava/lang/String;[Lcom/android/server/am/mars/MARsBigData$LevelInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/mars/MARsBigData$UsageInfo-IA;)V

    .line 193
    invoke-virtual {v0}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    return-void

    :catchall_aa
    move-exception p0

    .line 188
    :try_start_ab
    monitor-exit v3
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p0
.end method
