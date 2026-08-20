.class public Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->performPendingShutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemServer;

.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$reboot:Z


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V
    .registers 4

    .line 1402
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-boolean p2, p0, Lcom/android/server/SystemServer$2;->val$reboot:Z

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1405
    monitor-enter p0

    const/4 v0, 0x0

    .line 1406
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/SystemServer$2;->val$reboot:Z

    iget-object v2, p0, Lcom/android/server/SystemServer$2;->val$reason:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 1407
    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw v0
.end method
