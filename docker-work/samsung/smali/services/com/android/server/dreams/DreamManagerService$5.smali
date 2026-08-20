.class public Lcom/android/server/dreams/DreamManagerService$5;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
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

    .line 591
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamStopped(Landroid/os/Binder;)V
    .registers 4

    .line 594
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmLock(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 595
    :try_start_7
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmCurrentDreamToken(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;

    move-result-object v1

    if-ne v1, p1, :cond_14

    .line 596
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$5;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcleanupDreamLocked(Lcom/android/server/dreams/DreamManagerService;)V

    .line 598
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method
