.class public Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;
.super Landroid/window/ITransitionMetricsReporter$Stub;
.source "TransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransitionMetricsReporter"
.end annotation


# instance fields
.field public final mMetricConsumers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/function/LongConsumer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 650
    invoke-direct {p0}, Landroid/window/ITransitionMetricsReporter$Stub;-><init>()V

    .line 651
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public associate(Landroid/os/IBinder;Ljava/util/function/LongConsumer;)V
    .registers 4

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public reportAnimationStart(Landroid/os/IBinder;J)V
    .registers 6

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 663
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 664
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->mMetricConsumers:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/LongConsumer;

    .line 665
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1c

    if-eqz p0, :cond_1b

    .line 667
    invoke-interface {p0, p2, p3}, Ljava/util/function/LongConsumer;->accept(J)V

    :cond_1b
    return-void

    :catchall_1c
    move-exception p0

    .line 665
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method
