.class public final Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportLaunchInfo"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static isReady:Z


# instance fields
.field public isRefreshedForReport:Z

.field public mContext:Landroid/content/Context;

.field public mCurTime:J

.field public mLaunchTime:J

.field public mPid:I

.field public mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

.field public mShortComponentName:Ljava/lang/String;

.field public mUptime:J


# direct methods
.method public static bridge synthetic -$$Nest$mreportLaunch(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 484
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .registers 10

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x0

    .line 486
    iput-boolean p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    const/4 p6, 0x0

    .line 488
    iput-object p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    const-wide/16 p7, -0x1

    .line 489
    iput-wide p7, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    .line 490
    iput-object p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    const/4 p6, -0x1

    .line 491
    iput p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    const-string p6, "null"

    .line 492
    iput-object p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 493
    iput-wide p7, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    .line 494
    iput-wide p7, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    .line 499
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p6

    iput-wide p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    .line 500
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    .line 501
    iput p2, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    .line 502
    iput-object p3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 503
    iput-wide p4, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    .line 508
    const-class p0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter p0

    const/4 p1, 0x1

    .line 509
    :try_start_2c
    sput-boolean p1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    .line 510
    monitor-exit p0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/wm/SluggishDetector$ReportLaunchInfo-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJ)V

    return-void
.end method


# virtual methods
.method public final refresh()V
    .registers 1

    return-void
.end method

.method public final refreshForOccurredReport()V
    .registers 1

    return-void
.end method

.method public final refreshForReport()V
    .registers 5

    .line 535
    iget-boolean v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    .line 537
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    :cond_e
    return-void
.end method

.method public final reportLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 6

    .line 555
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    const/4 v1, 0x0

    .line 556
    :try_start_4
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    .line 557
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_33

    .line 559
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->-$$Nest$fgetmShortComponentName(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->-$$Nest$fgetmShortComponentName(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->-$$Nest$fgetmCurTime(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_32

    .line 568
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refresh()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    :cond_32
    return-void

    :catchall_33
    move-exception p0

    .line 557
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUptime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
