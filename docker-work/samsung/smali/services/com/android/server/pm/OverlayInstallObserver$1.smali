.class public Lcom/android/server/pm/OverlayInstallObserver$1;
.super Ljava/lang/Object;
.source "OverlayInstallObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OverlayInstallObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/OverlayInstallObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/OverlayInstallObserver;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 33
    iget-object v0, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v0}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetoverlayLock(Lcom/android/server/pm/OverlayInstallObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "PackageManager"

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout in locale overlay installation. token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v3}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetmToken(Lcom/android/server/pm/OverlayInstallObserver;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " callback done = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v3}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetcallbackCompleted(Lcom/android/server/pm/OverlayInstallObserver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v1}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetcallbackCompleted(Lcom/android/server/pm/OverlayInstallObserver;)Z

    move-result v1

    if-nez v1, :cond_5e

    .line 36
    iget-object v1, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fputcallbackCompleted(Lcom/android/server/pm/OverlayInstallObserver;Z)V

    .line 37
    iget-object v1, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v1}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetmPm(Lcom/android/server/pm/OverlayInstallObserver;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v2}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetmToken(Lcom/android/server/pm/OverlayInstallObserver;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v3}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetmDidLaunch(Lcom/android/server/pm/OverlayInstallObserver;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    invoke-static {v4}, Lcom/android/server/pm/OverlayInstallObserver;->-$$Nest$fgetmIsUninstallUpdates(Lcom/android/server/pm/OverlayInstallObserver;)Z

    move-result v4

    iget-object p0, p0, Lcom/android/server/pm/OverlayInstallObserver$1;->this$0:Lcom/android/server/pm/OverlayInstallObserver;

    iget-object p0, p0, Lcom/android/server/pm/OverlayInstallObserver;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/android/server/pm/PackageManagerService;->overlaysInstallComplete(IIZLjava/lang/Runnable;)V

    .line 39
    :cond_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_60

    throw p0
.end method
