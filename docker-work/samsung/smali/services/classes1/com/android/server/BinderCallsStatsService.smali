.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;,
        Lcom/android/server/BinderCallsStatsService$LifeCycle;,
        Lcom/android/server/BinderCallsStatsService$Internal;,
        Lcom/android/server/BinderCallsStatsService$SettingsObserver;,
        Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
    }
.end annotation


# static fields
.field public static final ENABLE_STATS_PER_PACKAGE:Z = true

.field public static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field public static final SERVICE_NAME:Ljava/lang/String; = "binder_calls_stats"

.field public static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

.field public final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBinderCallsStats(Lcom/android/server/BinderCallsStatsService;)Lcom/android/internal/os/BinderCallsStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWorkSourceProvider(Lcom/android/server/BinderCallsStatsService;)Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .registers 3

    .line 354
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 356
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 370
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    const-string v0, "binder_calls_stats"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    :cond_d
    if-eqz p3, :cond_76

    const/4 p1, 0x0

    .line 378
    :goto_10
    array-length v0, p3

    if-ge p1, v0, :cond_60

    .line 379
    aget-object v0, p3, p1

    const-string v1, "-a"

    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_5d

    :cond_1e
    const-string v1, "-h"

    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string p0, "dumpsys binder_calls_stats options:"

    .line 383
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  -a: Verbose"

    .line 384
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --work-source-uid <UID>: Dump binder calls from the UID"

    .line 385
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --set-cpu-threshold <threshold>: Set new CPU threshold"

    .line 387
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  --set-sampling <sampling value>: Set new sampling ratio"

    .line 388
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_40
    const-string v1, "--work-source-uid"

    .line 391
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string p0, "Currently SEC debugging feature is enabled."

    .line 393
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "It collects the incoming binder transactions depending on sampling ratio per package."

    .line 394
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "And it clears the collected binder stats every 1 or 5 minutes."

    .line 395
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "So it can be meaningless to invoke dump() with \'--work-source-uid\'."

    .line 396
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5d
    :goto_5d
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 414
    :cond_60
    array-length p1, p3

    if-lez p1, :cond_76

    .line 416
    new-instance v0, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    invoke-direct {v0, p0, p2}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    const/4 v2, 0x0

    .line 417
    sget-object v3, Ljava/io/FileDescriptor;->out:Ljava/io/FileDescriptor;

    sget-object v4, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    move-object v1, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_76

    return-void

    .line 432
    :cond_76
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0, p2}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 12

    .line 441
    new-instance v6, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/android/server/BinderCallsStatsService$BinderCallsStatsShellCommand;-><init>(Lcom/android/server/BinderCallsStatsService;Ljava/io/PrintWriter;)V

    .line 442
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 443
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v0, v6

    move-object v1, p0

    move-object v5, p4

    .line 442
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1e

    .line 445
    invoke-virtual {v6}, Landroid/os/ShellCommand;->onHelp()V

    :cond_1e
    return p0
.end method

.method public reset()V
    .registers 3

    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v0, 0x0

    new-array v0, v0, [Z

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5

    .line 360
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    return-void
.end method
