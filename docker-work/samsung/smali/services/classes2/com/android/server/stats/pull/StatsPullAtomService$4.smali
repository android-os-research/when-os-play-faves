.class public Lcom/android/server/stats/pull/StatsPullAtomService$4;
.super Ljava/lang/Object;
.source "StatsPullAtomService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/stats/pull/StatsPullAtomService;->pullAttributedAppOpsLocked(ILjava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .registers 2

    .line 3739
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3743
    :try_start_0
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$mestimateAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_25

    :catchall_6
    move-exception v0

    const-string v1, "StatsPullAtomService"

    const-string v2, "AppOps sampling ratio estimation failed: "

    .line 3745
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3746
    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAttributedAppOpsLock(Lcom/android/server/stats/pull/StatsPullAtomService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3747
    :try_start_15
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$4;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;)I

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fputmAppOpsSamplingRate(Lcom/android/server/stats/pull/StatsPullAtomService;I)V

    .line 3748
    monitor-exit v0

    :goto_25
    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_26

    throw p0
.end method
