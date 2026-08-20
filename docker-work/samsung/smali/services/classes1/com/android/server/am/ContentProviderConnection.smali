.class public final Lcom/android/server/am/ContentProviderConnection;
.super Landroid/os/Binder;
.source "ContentProviderConnection.java"


# instance fields
.field public association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

.field public final client:Lcom/android/server/am/ProcessRecord;

.field public final clientPackage:Ljava/lang/String;

.field public final createTime:J

.field public dead:Z

.field public final mExpectedUserId:I

.field public final mLock:Ljava/lang/Object;

.field public mNumStableIncs:I

.field public mNumUnstableIncs:I

.field public mProcStatsLock:Ljava/lang/Object;

.field public mStableCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mUnstableCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final provider:Lcom/android/server/am/ContentProviderRecord;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)V
    .registers 6

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    .line 78
    iput-object p1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 79
    iput-object p2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 80
    iput-object p3, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 81
    iput p4, p0, Lcom/android/server/am/ContentProviderConnection;->mExpectedUserId:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    return-void
.end method


# virtual methods
.method public adjustCounts(II)V
    .registers 6

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-lez p1, :cond_a

    .line 256
    :try_start_5
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 258
    :cond_a
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/2addr v1, p1

    if-ltz v1, :cond_5d

    if-lez p2, :cond_16

    .line 263
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 265
    :cond_16
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p2

    if-ltz p1, :cond_45

    add-int p2, v1, p1

    if-lez p2, :cond_25

    .line 273
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 274
    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 275
    monitor-exit v0

    return-void

    .line 270
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ref counts can\'t go to zero here: stable="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " unstable="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 267
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unstableCount < 0: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 260
    :cond_5d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "stableCount < 0: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_75
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_5 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public decrementCount(Z)I
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_51

    .line 232
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    const-string v2, "ActivityManager"

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing provider requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 236
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scnt="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uscnt="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-eqz p1, :cond_5a

    .line 240
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    goto :goto_60

    .line 242
    :cond_5a
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 244
    :goto_60
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p0

    monitor-exit v0

    return p1

    :catchall_67
    move-exception p0

    .line 245
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p0
.end method

.method public getStableCount()I
    .registers 1

    .line 54
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    return p0
.end method

.method public getUnstableCount()I
    .registers 1

    .line 58
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    return p0
.end method

.method public incrementCount(Z)I
    .registers 7

    .line 205
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    if-eqz v1, :cond_51

    .line 207
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    const-string v2, "ActivityManager"

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding provider requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " scnt="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uscnt="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    if-eqz p1, :cond_60

    .line 215
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 216
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    goto :goto_6c

    .line 218
    :cond_60
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 219
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 221
    :goto_6c
    iget p1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr p1, p0

    monitor-exit v0

    return p1

    :catchall_73
    move-exception p0

    .line 222
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_3 .. :try_end_75} :catchall_73

    throw p0
.end method

.method public initializeCount(Z)V
    .registers 5

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_10

    .line 187
    :try_start_7
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 188
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 189
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 190
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    goto :goto_18

    .line 192
    :cond_10
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    .line 193
    iput v2, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    .line 194
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    .line 195
    iput v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    .line 197
    :goto_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public stableCount()I
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_3
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 284
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public startAssociationIfNeeded()V
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-nez v0, :cond_c0

    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_c0

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v1, v3, :cond_20

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 92
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 93
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->get(Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v0

    if-nez v0, :cond_61

    const-string v0, "ActivityManager"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package in referenced provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 96
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 97
    :cond_61
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    if-nez v1, :cond_90

    const-string v0, "ActivityManager"

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inactive holder in referenced provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 99
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 101
    :cond_90
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v1, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    .line 102
    monitor-enter v1

    .line 103
    :try_start_9d
    iget-object v2, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v3, v3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    .line 104
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v0, v3}, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->getAssociationStateLocked(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ContentProviderConnection;->clientPackage:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/app/procstats/AssociationState;->startSource(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/AssociationState$SourceState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    .line 106
    monitor-exit v1

    goto :goto_c0

    :catchall_bd
    move-exception p0

    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_9d .. :try_end_bf} :catchall_bd

    throw p0

    :cond_c0
    :goto_c0
    return-void
.end method

.method public stopAssociation()V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_14

    .line 124
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-virtual {v1}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->stop()V

    .line 126
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_11

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    goto :goto_14

    :catchall_11
    move-exception p0

    .line 126
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    return-void
.end method

.method public toClientString()Ljava/lang/String;
    .registers 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toClientString(Ljava/lang/StringBuilder;)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    const-string v1, " s"

    .line 160
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumStableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u"

    .line 164
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mNumUnstableIncs:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_57

    .line 169
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->waiting:Z

    if-eqz v0, :cond_3e

    const-string v0, " WAITING"

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_3e
    iget-boolean v0, p0, Lcom/android/server/am/ContentProviderConnection;->dead:Z

    if-eqz v0, :cond_47

    const-string v0, " DEAD"

    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, " "

    .line 176
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-wide v2, p0, Lcom/android/server/am/ContentProviderConnection;->createTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    return-void

    :catchall_57
    move-exception p0

    .line 168
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0
.end method

.method public toShortString()Ljava/lang/String;
    .registers 3

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "->"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/am/ContentProviderConnection;->toClientString(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ContentProviderConnection{"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/am/ContentProviderConnection;->toShortString(Ljava/lang/StringBuilder;)V

    const/16 p0, 0x7d

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public totalRefCount()I
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ContentProviderConnection;->mStableCount:I

    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_a
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public trackProcState(II)V
    .registers 6

    .line 115
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    if-eqz v0, :cond_15

    .line 116
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mProcStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/ContentProviderConnection;->association:Lcom/android/internal/app/procstats/AssociationState$SourceState;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/internal/app/procstats/AssociationState$SourceState;->trackProcState(IIJ)V

    .line 118
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public unstableCount()I
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/am/ContentProviderConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget p0, p0, Lcom/android/server/am/ContentProviderConnection;->mUnstableCount:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 293
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method
