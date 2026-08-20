.class public Lcom/android/server/MountServiceIdler$1;
.super Ljava/lang/Object;
.source "MountServiceIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/MountServiceIdler;


# direct methods
.method public constructor <init>(Lcom/android/server/MountServiceIdler;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "MountServiceIdler"

    const-string v1, "Got mount service completion callback"

    .line 45
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmFinishCallback(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;

    move-result-object v0

    monitor-enter v0

    .line 47
    :try_start_e
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmStarted(Lcom/android/server/MountServiceIdler;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 48
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1}, Lcom/android/server/MountServiceIdler;->-$$Nest$fgetmJobParams(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 49
    iget-object v1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v1, v3}, Lcom/android/server/MountServiceIdler;->-$$Nest$fputmStarted(Lcom/android/server/MountServiceIdler;Z)V

    .line 51
    :cond_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_2c

    .line 53
    iget-object p0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {p0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    return-void

    :catchall_2c
    move-exception p0

    .line 51
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method
