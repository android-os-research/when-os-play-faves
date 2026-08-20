.class public Lcom/samsung/android/mcf/McfContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/McfContext$EventListener;
    }
.end annotation


# static fields
.field public static final j:Ljava/lang/String; = "McfContext"

.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3

.field public static final q:I = 0x4

.field public static final r:I = 0x5

.field public static volatile s:Lcom/samsung/android/mcf/McfContext;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field public final b:Landroid/os/Handler;

.field public final c:Landroid/content/ServiceConnection;

.field public final d:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public e:Lcom/samsung/android/mcf/IMcfService;

.field public final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/McfContext$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/c;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/mcf/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/mcf/McfContext$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$a;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->a:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    new-instance v0, Lcom/samsung/android/mcf/McfContext$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/mcf/McfContext$b;-><init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->b:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/mcf/McfContext$c;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/McfContext$c;-><init>(Lcom/samsung/android/mcf/McfContext;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->c:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/mcf/McfContext;
    .registers 3

    sget-object v0, Lcom/samsung/android/mcf/McfContext;->s:Lcom/samsung/android/mcf/McfContext;

    if-nez v0, :cond_17

    const-class v0, Lcom/samsung/android/mcf/McfContext;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/samsung/android/mcf/McfContext;->s:Lcom/samsung/android/mcf/McfContext;

    if-nez v1, :cond_12

    new-instance v1, Lcom/samsung/android/mcf/McfContext;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/McfContext;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/mcf/McfContext;->s:Lcom/samsung/android/mcf/McfContext;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    sget-object p0, Lcom/samsung/android/mcf/McfContext;->s:Lcom/samsung/android/mcf/McfContext;

    return-object p0
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/McfContext;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->c()V

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/mcf/IMcfService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    return-object p0
.end method

.method public a(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/McfBleAdapter;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getBleAdapter "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    const-string p0, "Invalid service!"

    :goto_b
    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->b(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/a;

    move-result-object v0

    const-string/jumbo v4, "return instance created "

    if-eqz v0, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2f
    new-instance v0, Lcom/samsung/android/mcf/a;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    iget-object v10, p0, Lcom/samsung/android/mcf/McfContext;->a:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v5, v0

    move v7, p1

    move-object v8, p2

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/mcf/a;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/ble/BleAdapterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/a;->e()I

    move-result p1

    if-eqz p1, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_57
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getCaster "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    const-string p0, "Invalid service!"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->b(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/b;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "return instance created "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2b
    new-instance v0, Lcom/samsung/android/mcf/b;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->a:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v4, v0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/b;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/b;->e()I

    move-result p1

    if-eqz p1, :cond_40

    return-object v1

    :cond_40
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/McfSubscriber;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    const/4 v1, 0x0

    const-string v2, "getSubscriber "

    const-string v3, "McfContext"

    if-nez v0, :cond_f

    const-string p0, "Invalid service!"

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/McfContext;->b(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "return instance created "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2b
    new-instance v0, Lcom/samsung/android/mcf/c;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    iget-object v9, p0, Lcom/samsung/android/mcf/McfContext;->a:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    move-object v4, v0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/mcf/c;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/SubscribeCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/c;->e()I

    move-result p1

    if-eqz p1, :cond_40

    return-object v1

    :cond_40
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public a(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/a;

    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/mcf/a;->a()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/mcf/a;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeBleAdapter "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/a;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/McfContext$EventListener;)Z
    .registers 10

    const/4 v0, 0x0

    const-string v1, "bindService "

    const-string v2, "McfContext"

    if-nez p1, :cond_d

    const-string p0, " listener is empty"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    const/4 v4, 0x1

    if-eqz v3, :cond_27

    const-string v0, " already has binder"

    invoke-static {v2, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->b:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return v4

    :cond_27
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.mcfserver.MCF"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.mcfserver"

    const-string v7, "com.samsung.android.mcfserver.McfService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Caller"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/mcf/McfContext;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v5, v3, v6, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string p0, "-"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_5a
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    const-string p0, " failed"

    invoke-static {v2, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/common/Utils;->hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final b(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Lcom/samsung/android/mcf/a;
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/a;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/a;->a(ILcom/samsung/android/mcf/ble/BleAdapterCallback;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/b;
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/b;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/b;->a(ILcom/samsung/android/mcf/CasterCallback;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(ILcom/samsung/android/mcf/SubscribeCallback;)Lcom/samsung/android/mcf/c;
    .registers 5

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/c;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/c;->a(ILcom/samsung/android/mcf/SubscribeCallback;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public b()V
    .registers 4

    const-string v0, "McfContext"

    const-string/jumbo v1, "releaseInstance"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/b;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->d()V

    goto :goto_18

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/c;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->d()V

    goto :goto_33

    :cond_43
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/a;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/AbstractClient;->d()V

    goto :goto_4e

    :cond_5e
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    sput-object v0, Lcom/samsung/android/mcf/McfContext;->s:Lcom/samsung/android/mcf/McfContext;

    return-void
.end method

.method public b(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/b;

    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/mcf/b;->a()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/mcf/b;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeCaster "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/b;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public b(Lcom/samsung/android/mcf/McfContext$EventListener;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_18

    const-string p0, "McfContext"

    const-string/jumbo p1, "unbindService "

    const-string v0, "not empty"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->d()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/McfContext;->b()V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/b;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/b;->a()V

    goto :goto_6

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/c;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/c;->a()V

    goto :goto_21

    :cond_31
    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/a;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/a;->a()V

    goto :goto_3c

    :cond_4c
    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void
.end method

.method public c(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/mcf/c;

    invoke-virtual {v2, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lcom/samsung/android/mcf/c;->a()V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/samsung/android/mcf/c;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "McfContext"

    const-string v4, "closeSubscriber "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_34
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/c;

    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_46
    return-void
.end method

.method public d()V
    .registers 3

    const-string v0, "McfContext"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/mcf/McfContext;->d:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/mcf/McfContext;->c:Landroid/content/ServiceConnection;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string/jumbo p0, "unbind"

    const-string v1, "-"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "unbind "

    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
