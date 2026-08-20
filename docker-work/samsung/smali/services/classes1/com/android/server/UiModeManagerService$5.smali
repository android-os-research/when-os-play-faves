.class public Lcom/android/server/UiModeManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 338
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 341
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 343
    :try_start_7
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 344
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 345
    monitor-exit p1

    return-void

    :catchall_14
    move-exception p0

    monitor-exit p1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
