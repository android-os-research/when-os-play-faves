.class public final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const-string p1, "InstrumentationReporter"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_4
    move v1, v0

    .line 52
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 53
    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v4, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    const/4 v5, 0x0

    .line 54
    iput-object v5, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    if-eqz v4, :cond_69

    .line 55
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_69

    .line 70
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_7d

    move v1, v0

    .line 74
    :goto_1c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 75
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 77
    :try_start_28
    iget v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v3, :cond_38

    .line 81
    iget-object v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v3, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    goto :goto_66

    .line 87
    :cond_38
    iget-object v3, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v3, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_43} :catch_44

    goto :goto_66

    :catch_44
    const-string v3, "ActivityManager"

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " results="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_69
    :goto_69
    if-nez v1, :cond_77

    .line 59
    :try_start_6b
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v1, v1, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_74} :catch_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_7d

    .line 63
    :catch_74
    :try_start_74
    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_5

    .line 65
    :cond_77
    iget-object p0, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iput-object v5, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 67
    monitor-exit v2

    return-void

    :catchall_7d
    move-exception p0

    .line 70
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_7d

    throw p0
.end method
