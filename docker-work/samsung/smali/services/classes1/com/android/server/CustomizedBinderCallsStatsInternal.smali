.class public Lcom/android/server/CustomizedBinderCallsStatsInternal;
.super Ljava/lang/Object;
.source "CustomizedBinderCallsStatsInternal.java"


# static fields
.field public static final ACTION_TYPE:Ljava/lang/String; = "APP_ERROR"

.field public static final ANOMALY_APP_CALL_RATIO:I = 0x5a

.field public static final ANOMALY_SYSTEM_SERVER_CPU_USAGE:I = 0x14

.field public static final ERROR_TYPE:Ljava/lang/String; = "excessive_binder"

.field public static final MAX_CALL_STATS_NUM:I = 0x5

.field public static final NOTIFY_INTERVAL:J = 0x5265c00L

.field public static final SDHMS_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.sdhms"

.field public static final STORE_INTERVAL:J = 0xd6d8L

.field public static final TAG:Ljava/lang/String; = "CustomizedBinderCallsStatsInternal"

.field public static final WRITE_INTERVAL:J = 0x1b7740L


# instance fields
.field public mAm:Landroid/app/ActivityManagerInternal;

.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public mContext:Landroid/content/Context;

.field public mLastNotifyTime:J

.field public mLastStoreTime:J

.field public mLastWriteTime:J


# direct methods
.method public static synthetic $r8$lambda$ub56WWVEu_GwCUdVUNVbVTWepgo(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->lambda$reportCpuUsage$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$xh44ErvXaii6QwfVjGuBP9fFjPY(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->lambda$reportCpuUsage$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V
    .registers 5

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    .line 51
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 52
    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 66
    iput-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 67
    iput-object p2, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$reportCpuUsage$0()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    return-void
.end method

.method private synthetic lambda$reportCpuUsage$1(I)V
    .registers 11

    const-string v0, "UID:"

    .line 105
    iget-object v1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/BinderCallsStats;->store(II)V

    .line 106
    iget-object v1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->resetForSEC()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    .line 108
    iget-wide v1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "CustomizedBinderCallsStatsInternal"

    if-eqz v1, :cond_2b

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x1b7740

    cmp-long v1, v5, v7

    if-ltz v1, :cond_43

    :cond_2b
    const-string/jumbo v1, "should write the current data!!"

    .line 110
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v5, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastWriteTime:J

    :cond_43
    const/16 v1, 0x14

    if-ge p1, v1, :cond_48

    return-void

    .line 120
    :cond_48
    iget-object v1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/16 v5, 0x5a

    .line 121
    invoke-virtual {v1, v5}, Lcom/android/internal/os/BinderCallsStats;->getHeaviestApplicationUid(I)Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;

    move-result-object v1

    if-nez v1, :cond_53

    return-void

    .line 125
    :cond_53
    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_ab

    .line 127
    :try_start_57
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-interface {v5, v6}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    if-nez v5, :cond_ab

    .line 129
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_7c} :catch_7d

    goto :goto_ab

    :catch_7d
    move-exception v5

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to get package name for UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    .line 136
    :cond_ab
    :goto_ab
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "heavy binder caller : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-wide v5, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_e5

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v0, v3, v5

    if-ltz v0, :cond_f1

    .line 139
    :cond_e5
    invoke-virtual {p0, v1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->notifyAnomalyApp(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;)V

    .line 140
    invoke-virtual {p0, v1, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->sendAnomalyAppToHWParam(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;I)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastNotifyTime:J

    .line 144
    :cond_f1
    iget-object p1, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p1}, Lcom/android/internal/os/BinderCallsStats;->isNeededResetData()Z

    move-result p1

    if-eqz p1, :cond_109

    const-string p1, "Clear all data"

    .line 145
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    :cond_109
    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_e

    .line 72
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    .line 74
    :cond_e
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mAm:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public final notifyAnomalyApp(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;)V
    .registers 10

    .line 178
    invoke-virtual {p0}, Lcom/android/server/CustomizedBinderCallsStatsInternal;->getActivityManager()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    .line 180
    new-instance v1, Landroid/content/Intent;

    const-string p0, "com.sec.android.sdhms.action.APP_ERROR"

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object p0, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "userId"

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget p0, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mUid:I

    const-string/jumbo p1, "uid"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p0, "type"

    const-string p1, "excessive_binder"

    .line 184
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.sec.android.sdhms"

    .line 185
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 186
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I

    return-void
.end method

.method public reportCpuUsage(I)V
    .registers 8

    .line 93
    iget-wide v0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "CustomizedBinderCallsStatsInternal"

    if-lez v0, :cond_1e

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mLastStoreTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xd6d8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1e

    const-string p0, "1 minute has NOT pass since last binder stats."

    .line 98
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportCpuUsage() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/CustomizedBinderCallsStatsInternal;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportProcessDied(IILjava/lang/String;)V
    .registers 4

    .line 79
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/os/BinderCallsStats;->reportProcessDied(IILjava/lang/String;)V

    return-void
.end method

.method public final sendAnomalyAppToHWParam(Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;I)V
    .registers 13

    .line 162
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mContext:Landroid/content/Context;

    const-string v0, "HqmManagerService"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/os/SemHqmManager;

    const-string p0, "CustomizedBinderCallsStatsInternal"

    if-eqz v0, :cond_92

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\"PKG\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\"SSCPU\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"RATIO\":\""

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p1, p1, Lcom/android/internal/os/BinderCallsStats$HeavyBinderCallerInfo;->mRatio:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%.2f"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v2, "AP"

    const-string v3, "HBCA"

    const-string/jumbo v4, "sm"

    const-string v5, "0.0"

    const-string v6, ""

    const-string v7, ""

    const-string v9, ""

    move v1, p1

    .line 168
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_97

    const-string p1, "Failed to send anomaly application info. to HWParam"

    .line 170
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_92
    const-string p1, "Cannot get HqmManagerService !!!"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    :goto_97
    return-void
.end method

.method public shutdown()V
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/android/server/CustomizedBinderCallsStatsInternal;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->writeToFile()V

    return-void
.end method
