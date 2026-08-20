.class public Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttentionServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public cleanupService()V
    .registers 3

    const/4 v0, 0x0

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 755
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fputmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public final init(Landroid/service/attention/IAttentionService;)V
    .registers 4

    .line 759
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmLock(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 760
    :try_start_7
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iput-object p1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    const/4 p1, 0x0

    .line 761
    invoke-static {v1, p1}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fputmBinding(Lcom/android/server/attention/AttentionManagerService;Z)V

    .line 762
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$mhandlePendingCallbackLocked(Lcom/android/server/attention/AttentionManagerService;)V

    .line 763
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 745
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 750
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 734
    invoke-static {p2}, Landroid/service/attention/IAttentionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    .line 735
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->-$$Nest$fgetmServiceBindingLatch(Lcom/android/server/attention/AttentionManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 740
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$AttentionServiceConnection;->cleanupService()V

    return-void
.end method
