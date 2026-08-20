.class public final Lcom/android/server/am/ProcessServiceRecord;
.super Ljava/lang/Object;
.source "ProcessServiceRecord.java"


# instance fields
.field public mAllowlistManager:Z

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBoundClientUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mConnectionGroup:I

.field public mConnectionImportance:I

.field public mConnectionService:Lcom/android/server/am/ServiceRecord;

.field public final mConnections:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mExecServicesFg:Z

.field public final mExecutingServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mFgServiceTypes:I

.field public mHasAboveClient:Z

.field public mHasClientActivities:Z

.field public mHasForegroundServices:Z

.field public mHasTopStartedAlmostPerceptibleServices:Z

.field public mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

.field public mRepFgServiceTypes:I

.field public mRepHasForegroundServices:Z

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mTreatLikeActivity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 118
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 135
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 136
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public addBoundClientUid(I)V
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    return-void
.end method

.method public addBoundClientUidsOfNewService(Lcom/android/server/am/ServiceRecord;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 449
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p1

    .line 450
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_33

    .line 451
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 452
    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 453
    iget-object v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 456
    :cond_33
    iget-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    return-void
.end method

.method public addConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearBoundClientUids()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 461
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 8

    .line 515
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-nez p3, :cond_e

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_2c

    .line 516
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasForegroundServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " forcingToImportant="

    .line 517
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p3, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {p3}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 519
    :cond_2c
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez p3, :cond_38

    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v0, 0x0

    cmp-long p3, p3, v0

    if-lez p3, :cond_50

    .line 521
    :cond_38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mHasTopStartedAlmostPerceptibleServices="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 522
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " mLastTopStartedAlmostPerceptibleBindRequestUptimeMs="

    .line 523
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    iget-wide p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-virtual {p1, p3, p4}, Ljava/io/PrintWriter;->println(J)V

    .line 526
    :cond_50
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    if-nez p3, :cond_5c

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    if-nez p3, :cond_5c

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    if-eqz p3, :cond_7e

    .line 527
    :cond_5c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "hasClientActivities="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " hasAboveClient="

    .line 528
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, " treatLikeActivity="

    .line 529
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 531
    :cond_7e
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    if-nez p3, :cond_86

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    if-eqz p3, :cond_a7

    .line 532
    :cond_86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "connectionGroup="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " Importance="

    .line 533
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string p3, " Service="

    .line 534
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 536
    :cond_a7
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    if-eqz p3, :cond_b8

    .line 537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "allowlistManager="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mAllowlistManager:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 539
    :cond_b8
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    const-string p4, "  - "

    const/4 v0, 0x0

    if-lez p3, :cond_e6

    .line 540
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Services:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_d2
    if-ge v1, p3, :cond_e6

    .line 542
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d2

    .line 545
    :cond_e6
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_11b

    .line 546
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "Executing Services (fg="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 547
    iget-boolean p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    move v1, v0

    :goto_107
    if-ge v1, p3, :cond_11b

    .line 549
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_107

    .line 552
    :cond_11b
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-lez p3, :cond_146

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p3, "mConnections:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    iget-object p3, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p3

    :goto_132
    if-ge v0, p3, :cond_146

    .line 555
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    :cond_146
    return-void
.end method

.method public getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ConnectionRecord;

    return-object p0
.end method

.method public getConnectionGroup()I
    .registers 1

    .line 232
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    return p0
.end method

.method public getConnectionImportance()I
    .registers 1

    .line 240
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    return p0
.end method

.method public getConnectionService()Lcom/android/server/am/ServiceRecord;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public getExecutingServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public getForegroundServiceTypes()I
    .registers 2

    .line 172
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public getReportedForegroundServiceTypes()I
    .registers 1

    .line 176
    iget p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepFgServiceTypes:I

    return p0
.end method

.method public getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ServiceRecord;

    return-object p0
.end method

.method public hasAboveClient()Z
    .registers 1

    .line 263
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return p0
.end method

.method public hasClientActivities()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    return p0
.end method

.method public hasForegroundServices()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    return p0
.end method

.method public hasReportedForegroundServices()Z
    .registers 1

    .line 168
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return p0
.end method

.method public hasTopStartedAlmostPerceptibleServices()Z
    .registers 5

    .line 217
    iget-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v0, :cond_20

    iget-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 219
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mServiceBindAlmostPerceptibleTimeoutMs:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p0, 0x1

    :goto_21
    return p0
.end method

.method public incServiceCrashCountLocked(J)Z
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 483
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    .line 487
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_15
    if-ltz v3, :cond_44

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v4

    .line 492
    iget-wide v5, v4, Lcom/android/server/am/ServiceRecord;->restartTime:J

    sget v7, Lcom/android/server/am/ActivityManagerConstants;->MIN_CRASH_INTERVAL:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    cmp-long v5, p1, v5

    if-lez v5, :cond_28

    .line 493
    iput v2, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    goto :goto_2d

    .line 495
    :cond_28
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    add-int/2addr v5, v2

    iput v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    .line 499
    :goto_2d
    iget v5, v4, Lcom/android/server/am/ServiceRecord;->crashCount:I

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/am/ProcessServiceRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v7, v7, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_41

    iget-boolean v4, v4, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-nez v4, :cond_40

    if-eqz v0, :cond_41

    :cond_40
    move v1, v2

    :cond_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_15

    :cond_44
    return v1
.end method

.method public final isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z
    .registers 8

    .line 198
    iget-wide v0, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v0, 0x0

    if-gtz p0, :cond_a

    return v0

    .line 202
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    :goto_14
    if-ltz p1, :cond_37

    .line 204
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 206
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_21
    if-ltz v3, :cond_34

    .line 207
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 208
    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_31

    return v1

    :cond_31
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    :cond_34
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    :cond_37
    return v0
.end method

.method public isTreatedLikeActivity()Z
    .registers 1

    .line 291
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    return p0
.end method

.method public modifyRawOomAdj(I)I
    .registers 6

    .line 267
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    const/16 v0, 0x384

    const/16 v1, 0xfa

    const/16 v2, 0xc8

    const/16 v3, 0x64

    if-eqz p0, :cond_25

    if-gez p1, :cond_f

    goto :goto_25

    :cond_f
    if-ge p1, v3, :cond_13

    move p1, v3

    goto :goto_25

    :cond_13
    if-ge p1, v2, :cond_17

    move p1, v2

    goto :goto_25

    :cond_17
    if-ge p1, v1, :cond_1b

    move p1, v1

    goto :goto_25

    :cond_1b
    if-ge p1, v0, :cond_1f

    move p1, v0

    goto :goto_25

    :cond_1f
    const/16 p0, 0x3e7

    if-ge p1, p0, :cond_25

    add-int/lit8 p1, p1, 0x1

    :cond_25
    :goto_25
    return p1
.end method

.method public numberOfConnections()I
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfExecutingServices()I
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public numberOfRunningServices()I
    .registers 1

    .line 365
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public onCleanupApplicationRecordLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    const/4 v0, 0x0

    .line 509
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    .line 510
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->setHasClientActivities(Z)V

    return-void
.end method

.method public removeAllConnections()V
    .registers 1

    .line 406
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public removeConnection(Lcom/android/server/am/ConnectionRecord;)V
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConnectionGroup(I)V
    .registers 2

    .line 236
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionGroup:I

    return-void
.end method

.method public setConnectionImportance(I)V
    .registers 2

    .line 244
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionImportance:I

    return-void
.end method

.method public setConnectionService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnectionService:Lcom/android/server/am/ServiceRecord;

    return-void
.end method

.method public setExecServicesFg(Z)V
    .registers 2

    .line 303
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    return-void
.end method

.method public setHasAboveClient(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    return-void
.end method

.method public setHasClientActivities(Z)V
    .registers 2

    .line 140
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasClientActivities:Z

    .line 141
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasClientActivities(Z)V

    return-void
.end method

.method public setHasForegroundServices(ZI)V
    .registers 3

    .line 149
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasForegroundServices:Z

    .line 150
    iput p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mFgServiceTypes:I

    .line 151
    iget-object p2, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowProcessController;->setHasForegroundServices(Z)V

    const/16 p2, 0x100

    if-eqz p1, :cond_19

    .line 153
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_20

    .line 155
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :goto_20
    return-void
.end method

.method public setHasReportedForegroundServices(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepHasForegroundServices:Z

    return-void
.end method

.method public setReportedForegroundServiceTypes(I)V
    .registers 2

    .line 180
    iput p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mRepFgServiceTypes:I

    return-void
.end method

.method public setTreatLikeActivity(Z)V
    .registers 2

    .line 295
    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mTreatLikeActivity:Z

    return-void
.end method

.method public shouldExecServicesFg()Z
    .registers 1

    .line 299
    iget-boolean p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecServicesFg:Z

    return p0
.end method

.method public startExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 378
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 316
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 317
    iget-object v1, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_1e

    .line 318
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowProcessController;->onServiceStarted(Landroid/content/pm/ServiceInfo;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    .line 321
    :cond_1e
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_38

    .line 322
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 325
    iget-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v1, :cond_38

    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_38
    return v0
.end method

.method public stopAllExecutingServices()V
    .registers 1

    .line 386
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public stopAllServices()V
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 354
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    return-void
.end method

.method public stopExecutingService(Lcom/android/server/am/ServiceRecord;)V
    .registers 2

    .line 382
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mExecutingServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public stopService(Lcom/android/server/am/ServiceRecord;)Z
    .registers 7

    .line 339
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 340
    iget-wide v1, p1, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_11

    .line 341
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHasTopStartedAlmostPerceptibleServices()V

    :cond_11
    if-eqz v0, :cond_16

    .line 344
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->updateHostingComonentTypeForBindingsLocked()V

    :cond_16
    return v0
.end method

.method public updateBoundClientUids()V
    .registers 11

    .line 423
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 424
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->clearBoundClientUids()V

    return-void

    .line 428
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 429
    iget-object v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_53

    .line 431
    iget-object v4, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    .line 432
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    move v6, v2

    :goto_2c
    if-ge v6, v5, :cond_50

    .line 435
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    move v8, v2

    .line 436
    :goto_35
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_4d

    .line 437
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ConnectionRecord;

    iget v9, v9, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 441
    :cond_53
    iput-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    .line 442
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mBoundClientUids:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->setBoundClientUids(Landroid/util/ArraySet;)V

    return-void
.end method

.method public updateHasAboveClientLocked()V
    .registers 4

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    .line 249
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_21

    .line 250
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mConnections:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 251
    iget v2, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1e

    .line 252
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasAboveClient:Z

    goto :goto_21

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_21
    :goto_21
    return-void
.end method

.method public updateHasTopStartedAlmostPerceptibleServices()V
    .registers 8

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    const-wide/16 v0, 0x0

    .line 185
    iput-wide v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 186
    iget-object v0, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_32

    .line 187
    iget-object v2, p0, Lcom/android/server/am/ProcessServiceRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    .line 188
    iget-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    iget-wide v5, v2, Lcom/android/server/am/ServiceRecord;->lastTopAlmostPerceptibleBindRequestUptimeMs:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mLastTopStartedAlmostPerceptibleBindRequestUptimeMs:J

    .line 191
    iget-boolean v3, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    if-nez v3, :cond_2f

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessServiceRecord;->isAlmostPerceptible(Lcom/android/server/am/ServiceRecord;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 192
    iput-boolean v1, p0, Lcom/android/server/am/ProcessServiceRecord;->mHasTopStartedAlmostPerceptibleServices:Z

    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_32
    return-void
.end method

.method public updateHostingComonentTypeForBindingsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_1c

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 469
    invoke-virtual {v2}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_1d

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    const/4 v1, 0x0

    :goto_1d
    const/16 v0, 0x200

    if-eqz v1, :cond_29

    .line 475
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_30

    .line 477
    :cond_29
    iget-object p0, p0, Lcom/android/server/am/ProcessServiceRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    :goto_30
    return-void
.end method
