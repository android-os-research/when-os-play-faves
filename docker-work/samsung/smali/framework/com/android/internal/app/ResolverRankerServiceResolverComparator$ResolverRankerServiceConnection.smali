.class Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;
.super Ljava/lang/Object;
.source "ResolverRankerServiceResolverComparator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolverRankerServiceConnection"
.end annotation


# instance fields
.field private final blacklist mConnectSignal:Ljava/util/concurrent/CountDownLatch;

.field public final blacklist resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3
    .param p2, "connectSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 386
    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance p1, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection$1;-><init>(Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;)V

    iput-object p1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->resolverRankerResult:Landroid/service/resolver/IResolverRankerResult;

    .line 387
    iput-object p2, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    .line 388
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .registers 4

    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 430
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V

    .line 431
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 411
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 412
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {p2}, Landroid/service/resolver/IResolverRankerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/resolver/IResolverRankerService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fputmRanker(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Landroid/service/resolver/IResolverRankerService;)V

    .line 413
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {v1}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$mbuildUpdatedModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fputmComparatorModel(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceComparatorModel;)V

    .line 414
    iget-object v1, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->mConnectSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 415
    monitor-exit v0

    .line 416
    return-void

    .line 415
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverRankerServiceResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator;->-$$Nest$fgetmLock(Lcom/android/internal/app/ResolverRankerServiceResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 424
    :try_start_7
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverRankerServiceResolverComparator$ResolverRankerServiceConnection;->destroy()V

    .line 425
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v1
.end method
