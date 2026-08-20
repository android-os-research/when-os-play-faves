.class public Lcom/android/server/UiModeManagerService$1;
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

    .line 270
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 273
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    return-void

    :cond_8
    const-string p1, "enableFlags"

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "disableFlags"

    .line 282
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 284
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$1;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateAfterBroadcastLocked(Lcom/android/server/UiModeManagerService;Ljava/lang/String;II)V

    .line 285
    monitor-exit v1

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_27

    throw p0
.end method
