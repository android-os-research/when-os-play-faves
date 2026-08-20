.class public Lcom/android/server/am/InstrumentationReporter;
.super Ljava/lang/Object;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/InstrumentationReporter$Report;,
        Lcom/android/server/am/InstrumentationReporter$MyThread;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final REPORT_TYPE_FINISHED:I = 0x1

.field public static final REPORT_TYPE_STATUS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPendingReports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/InstrumentationReporter$Report;",
            ">;"
        }
    .end annotation
.end field

.field public mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final report(Lcom/android/server/am/InstrumentationReporter$Report;)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_11

    .line 137
    new-instance v1, Lcom/android/server/am/InstrumentationReporter$MyThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/InstrumentationReporter$MyThread;-><init>(Lcom/android/server/am/InstrumentationReporter;)V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    if-nez v1, :cond_1c

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 143
    :cond_1c
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object p0, p0, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public reportFinished(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 13

    .line 131
    new-instance v7, Lcom/android/server/am/InstrumentationReporter$Report;

    const/4 v2, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    return-void
.end method

.method public reportStatus(Landroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 13

    .line 123
    new-instance v7, Lcom/android/server/am/InstrumentationReporter$Report;

    const/4 v2, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/InstrumentationReporter$Report;-><init>(Lcom/android/server/am/InstrumentationReporter;ILandroid/app/IInstrumentationWatcher;Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/InstrumentationReporter;->report(Lcom/android/server/am/InstrumentationReporter$Report;)V

    return-void
.end method
