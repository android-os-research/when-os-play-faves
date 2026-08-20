.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;,
        Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;,
        Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;,
        Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;,
        Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;
    }
.end annotation


# static fields
.field public static m:Lcom/att/iqi/lib/IQIManager;

.field public static final n:Ljava/lang/Object;


# instance fields
.field public a:Lcom/att/iqi/IIQIBroker;

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/Handler;

.field public final g:Landroid/os/HandlerThread;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Lcom/att/iqi/IMetricQueryCallback;

.field public final j:Lcom/att/iqi/IMetricSourcingCallback;

.field public final k:Lcom/att/iqi/IProfileChangedCallback;

.field public final l:Lcom/att/iqi/IServiceStateChangeCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetb(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetc(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetd(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgete(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetf(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeth(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->h:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$4;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$4;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->k:Lcom/att/iqi/IProfileChangedCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$5;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$5;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->l:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "msg-handler-iqi"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;

    invoke-direct {v2, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->f:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .registers 2

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->m:Lcom/att/iqi/lib/IQIManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v1}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v1, Lcom/att/iqi/lib/IQIManager;->m:Lcom/att/iqi/lib/IQIManager;

    :cond_e
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->m:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public final a()V
    .registers 7

    const-string v0, "IQIManager"

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const-string v1, "android.os.ServiceManager"

    :try_start_9
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_d} :catch_4d

    :try_start_d
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1b} :catch_46

    const/4 v2, 0x0

    :try_start_1c
    const-string v3, "iqi"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    if-eqz v1, :cond_45

    invoke-static {v1}, Lcom/att/iqi/IIQIBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    if-eqz v1, :cond_35

    const-string p0, "Service reached!"

    goto :goto_37

    :cond_35
    const-string p0, "getService returned null :("

    :goto_37
    invoke-static {v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_3a} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_3a} :catch_3b

    goto :goto_45

    :catch_3b
    move-exception p0

    const-string v1, "Invocation exception!"

    goto :goto_42

    :catch_3f
    move-exception p0

    const-string v1, "Access exception!"

    :goto_42
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    return-void

    :catch_46
    move-exception p0

    const-string v1, "Can\'t find getService method!"

    :goto_49
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_4d
    move-exception p0

    const-string v1, "ServiceManager not found!"

    goto :goto_49
.end method

.method public disableService()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->disableService()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception p0

    const-string v0, "IQIManager"

    const-string v1, "Remote exception in disableService"

    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void
.end method

.method public forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
    .registers 6

    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->f:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.SERVICE_FORCE_STOPPED"

    invoke-direct {p2, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->f:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->forceStopService()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_28

    goto :goto_30

    :catch_28
    move-exception p0

    const-string p1, "IQIManager"

    const-string p2, "Remote exception in forceStopService"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method

.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 5

    if-eqz p1, :cond_44

    if-nez p2, :cond_5

    goto :goto_44

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_28

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string p2, "Remote exception in registerMetricSourcingListener"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void

    :catch_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback already registered for metric ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_28

    if-eqz v1, :cond_27

    :try_start_14
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->k:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string v0, "Remote exception in registerProfileChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 5

    if-eqz p1, :cond_44

    if-nez p2, :cond_5

    goto :goto_44

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_12} :catch_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v1

    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_28

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_20} :catch_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string p2, "Remote exception in registerQueryCallback"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    return-void

    :catch_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Callback already registered for metric ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_28

    if-eqz v1, :cond_27

    :try_start_14
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->l:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string v0, "Remote exception in registerServiceStateChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    const-string p1, "IQIManager"

    const-string v1, "Remote exception in shouldSubmitMetric"

    invoke-static {p1, v1, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string p1, "IQIManager"

    const-string v0, "Remote exception in submitMetric"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 4

    if-eqz p1, :cond_28

    if-nez p2, :cond_5

    goto :goto_28

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->j:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_28

    :catchall_1d
    move-exception p0

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string p2, "Remote exception in unregisterMetricSourcingListener"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_28

    if-eqz p1, :cond_27

    :try_start_14
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->k:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string v0, "Remote exception in unregisterProfileChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 4

    if-eqz p1, :cond_28

    if-nez p2, :cond_5

    goto :goto_28

    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_20

    :try_start_12
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p2

    goto :goto_28

    :catchall_1d
    move-exception p0

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_20} :catch_20

    :catch_20
    move-exception p0

    const-string p1, "IQIManager"

    const-string p2, "Remote exception in registerQueryCallback"

    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_28

    if-eqz p1, :cond_27

    :try_start_14
    invoke-virtual {p0}, Lcom/att/iqi/lib/IQIManager;->a()V

    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/IIQIBroker;

    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->l:Lcom/att/iqi/IServiceStateChangeCallback;

    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_27

    :catch_1f
    move-exception p0

    const-string p1, "IQIManager"

    const-string v0, "Remote exception in unregisterServiceStateChangeListener"

    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    :goto_27
    return-void

    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method
