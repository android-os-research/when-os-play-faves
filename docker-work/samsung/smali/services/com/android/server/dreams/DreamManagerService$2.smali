.class public Lcom/android/server/dreams/DreamManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 173
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mwritePulseGestureEnabled(Lcom/android/server/dreams/DreamManagerService;)V

    .line 174
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 175
    :try_start_c
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$2;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const/4 p2, 0x0

    const-string/jumbo v0, "user switched"

    invoke-static {p0, p2, v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstopDreamLocked(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 176
    monitor-exit p1

    return-void

    :catchall_17
    move-exception p0

    monitor-exit p1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw p0
.end method
