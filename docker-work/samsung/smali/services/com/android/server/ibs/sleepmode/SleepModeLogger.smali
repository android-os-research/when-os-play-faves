.class public Lcom/android/server/ibs/sleepmode/SleepModeLogger;
.super Ljava/lang/Object;
.source "SleepModeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;
    }
.end annotation


# static fields
.field public static final LOG_LOCAL_SIZE:I = 0xbb8

.field public static sInstance:Lcom/android/server/ibs/sleepmode/SleepModeLogger;


# instance fields
.field public mIsUsed:Z

.field public mSleepModeLog:Landroid/util/LocalLog;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 15
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xbb8

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModeLogger-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/ibs/sleepmode/SleepModeLogger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/ibs/sleepmode/SleepModeLogger;
    .registers 1

    .line 20
    invoke-static {}, Lcom/android/server/ibs/sleepmode/SleepModeLogger$SleepModeLoggerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/ibs/sleepmode/SleepModeLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3

    .line 24
    iget-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    .line 27
    :cond_7
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dumpSleepModeHistoryLog(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    .line 31
    iget-boolean p2, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mIsUsed:Z

    if-eqz p2, :cond_15

    .line 32
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p2, "SleepModeLogger history Log:"

    .line 33
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/ibs/sleepmode/SleepModeLogger;->mSleepModeLog:Landroid/util/LocalLog;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1, p2}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_15
    return-void
.end method
