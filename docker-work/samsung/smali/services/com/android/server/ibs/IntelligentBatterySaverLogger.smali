.class public Lcom/android/server/ibs/IntelligentBatterySaverLogger;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverLogger.java"


# static fields
.field public static final LOG_LOCAL_SIZE:I = 0xbb8

.field public static sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;


# instance fields
.field public mIBSLog:Landroid/util/LocalLog;

.field public mIsUsed:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 19
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    .registers 2

    const-class v0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    if-nez v1, :cond_e

    .line 23
    new-instance v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    invoke-direct {v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;-><init>()V

    sput-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 25
    :cond_e
    sget-object v1, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->sInstance:Lcom/android/server/ibs/IntelligentBatterySaverLogger;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    .line 29
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    .line 32
    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dumpIBSHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 36
    iget-boolean p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIsUsed:Z

    if-eqz p2, :cond_15

    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "IntelligentBatterySaverLogger history Log:"

    .line 38
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->mIBSLog:Landroid/util/LocalLog;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_15
    return-void
.end method
