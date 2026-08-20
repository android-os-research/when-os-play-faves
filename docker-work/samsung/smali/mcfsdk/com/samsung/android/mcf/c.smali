.class public Lcom/samsung/android/mcf/c;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/McfSubscriber;


# instance fields
.field public final j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

.field public final k:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/messaging/McfMessageCallback;",
            "Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BL6jmK--ECh0Jch9ltSjCdI9Z6E(Lcom/samsung/android/mcf/c;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/c;->c(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/SubscribeCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    new-instance p1, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->i:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/samsung/android/mcf/a$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    new-instance p2, Lcom/samsung/android/mcf/c$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/mcf/c$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/c;)V

    invoke-direct {p1, p3, p4, p2}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;-><init>(Lcom/samsung/android/mcf/SubscribeCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private synthetic c(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(II)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v1, "closeInternal"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->d(I)V

    const/16 v0, 0x6d

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->c(I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/c;->g()V

    const/16 v0, 0x79

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->e(I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/c;->f()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/c;->h()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->d()V

    return-void
.end method

.method public a(ILcom/samsung/android/mcf/SubscribeCallback;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/SubscribeCallback;)Z

    move-result p1

    return p1
.end method

.method public close()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/c;->a()V

    return-void
.end method

.method public closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "closeMessagingClient"

    if-nez v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "Ignore - not open"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_15
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "MessageCallback"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v0, 0x7e

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_38

    const/4 v1, 0x1

    :cond_38
    return v1
.end method

.method public e()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v1, "open"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public final f()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/mcf/c;->stopHandover()Z

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public getMessagingDeviceRssi(JLcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v0, 0x0

    const-string v1, "getMessagingDeviceRssi"

    if-nez p3, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not open"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rssiInterval"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p3}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "MessageCallback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0x7f

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_38

    const/4 v0, 0x1

    :cond_38
    return v0
.end method

.method public final h()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/c;->closeMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z
    .registers 10

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "keepDiscoveredDevice"

    if-eqz p2, :cond_22

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore- already keep"

    :goto_13
    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/KeepDeviceCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V

    iget-object v3, p0, Lcom/samsung/android/mcf/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    :cond_22
    if-nez v0, :cond_29

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore- not keep"

    goto :goto_13

    :cond_29
    :goto_29
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keep-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v2, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p1

    const-string v3, "deviceAddr"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "booleanArg"

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IKeepDeviceCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "callback"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0x70

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_6c

    if-eqz p2, :cond_6c

    iget-object p2, p0, Lcom/samsung/android/mcf/c;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    if-nez p1, :cond_6f

    const/4 v1, 0x1

    :cond_6f
    return v1
.end method

.method public openMessagingClient(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 7

    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const-string v2, "openMessagingClient"

    if-eqz v0, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-direct {v0, p2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;-><init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V

    iget-object v2, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v2}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "MessageCallback"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0x7d

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_4e
    const/4 p1, 0x1

    return p1
.end method

.method public registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "registerHandoverCallback"

    const-string v1, "already registered"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sendMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v0, 0x0

    const-string v1, "sendMessage"

    if-nez p2, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not open"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "MessageCallback"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0x7c

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_36

    const/4 v0, 0x1

    :cond_36
    return v0
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .registers 5

    const/16 v0, 0x7a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setTargetUwbParam(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Ljava/lang/String;[BI)Z
    .registers 9

    const-string v0, "setTargetUwbParam"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_55

    :cond_11
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    move-result-object p1

    if-nez p1, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not start"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v1, "rangingCallback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p1, "deviceAddr"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rangingUwbParam"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "rangingUwbResult"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x7b

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_55

    const/4 v2, 0x1

    :cond_55
    :goto_55
    return v2
.end method

.method public startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 4

    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p1

    return p1
.end method

.method public startHandover(Lcom/samsung/android/mcf/handover/McfHandoverData;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "startHandover"

    const-string v2, "Ignore - callback is null"

    invoke-static {p1, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getConnectionType()I

    move-result p1

    const/16 v2, 0x6a

    invoke-virtual {p0, v2, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(IILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 4

    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p1

    return p1
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 4

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z

    move-result p1

    return p1
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 3

    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p1

    return p1
.end method

.method public stopHandover()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, "stopHandover"

    const-string v3, "Ignore - callback is null"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->c()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v2

    const-string v4, "serviceID"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x6b

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_2f

    move v1, v3

    :cond_2f
    return v1
.end method

.method public stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 3

    const/16 v0, 0x67

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p1

    return p1
.end method

.method public stopScanWithFlush(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 6

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    const-string v1, "stopScanWithFlush"

    if-nez v0, :cond_11

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "Ignore - not start"

    invoke-static {p1, v1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_11
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v0, 0x68

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 3

    const/16 v0, 0x79

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterHandoverCallback()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v1, "unregisterHandoverCallback"

    const-string v2, "not registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/mcf/c;->j:Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/mcfwrapper/SubscriberCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method
