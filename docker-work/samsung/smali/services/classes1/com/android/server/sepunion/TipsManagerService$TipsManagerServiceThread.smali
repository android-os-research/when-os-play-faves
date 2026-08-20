.class public Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;
.super Ljava/lang/Thread;
.source "TipsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/TipsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TipsManagerServiceThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/TipsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/TipsManagerService;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    const-string p1, "TipsManagerService"

    .line 504
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 510
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 512
    iget-object v0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    monitor-enter v0

    .line 513
    :try_start_6
    iget-object v1, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    new-instance v2, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/TipsManagerService$TipsHandler;-><init>(Lcom/android/server/sepunion/TipsManagerService;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/TipsManagerService;->-$$Nest$fputmTipsHandler(Lcom/android/server/sepunion/TipsManagerService;Lcom/android/server/sepunion/TipsManagerService$TipsHandler;)V

    .line 516
    iget-object p0, p0, Lcom/android/server/sepunion/TipsManagerService$TipsManagerServiceThread;->this$0:Lcom/android/server/sepunion/TipsManagerService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 517
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1c

    .line 518
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1c
    move-exception p0

    .line 517
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method
