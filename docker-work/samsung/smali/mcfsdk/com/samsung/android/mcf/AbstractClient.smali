.class public abstract Lcom/samsung/android/mcf/AbstractClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lcom/samsung/android/mcf/IMcfService;

.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;",
            "Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;",
            "Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;


# direct methods
.method public static synthetic $r8$lambda$JNf7eXf8kqMEGp6J_SFtUw1DN4c(Lcom/samsung/android/mcf/AbstractClient;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/mcf/AbstractClient$a;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$a;-><init>(Lcom/samsung/android/mcf/AbstractClient;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->i:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    iput-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    iput-object p4, p0, Lcom/samsung/android/mcf/AbstractClient;->e:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x0

    aput-object p2, p3, p4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, p3, p4

    const-string p2, "%d_%s"

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/AbstractClient;)Lcom/samsung/android/mcf/AbstractClient$StatusListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->e:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    return-object p0
.end method

.method private synthetic b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iget p1, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    shl-int/lit8 v0, p1, 0x10

    add-int/2addr v0, p1

    goto :goto_b

    :cond_9
    const/16 v0, -0x3e7

    :goto_b
    return v0
.end method

.method public a(IILandroid/os/Bundle;)I
    .registers 8

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    const-string v1, "sendMessage"

    const/4 v2, -0x1

    if-nez v0, :cond_f

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Service is invalid"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/common/MessageUtil;->makeMessage(IIILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p2

    :try_start_15
    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    invoke-interface {p3, p2}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result v2
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_1c
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_43

    :catch_1c
    move-exception p2

    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    return v2
.end method

.method public a(ILandroid/os/Bundle;)I
    .registers 4

    const/16 v0, -0x3e7

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(IILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string v1, "stopAdvertise"

    if-nez v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not start"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "advertiseCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string v1, "startAdvertise"

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_15
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    const v2, 0x36ee80

    if-gt v0, v2, :cond_28

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    if-nez v0, :cond_2d

    :cond_28
    const-string v0, "Advertise-Timeout is set too long, please check it again"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->c(Ljava/lang/String;)V

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfAdvertiseCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "advertiseCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_56

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    return p1
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string v1, "stopScan"

    if-nez v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not start"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_15
    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string v1, "startScan"

    if-eqz v0, :cond_15

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "deviceCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return p1
.end method

.method public a(ZZ)I
    .registers 4

    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p1

    return p1
.end method

.method public a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    return-object p1
.end method

.method public a(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    return-object p1
.end method

.method public abstract a()V
.end method

.method public a(II)V
    .registers 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_19

    if-ne p2, v0, :cond_19

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result p1

    if-nez p1, :cond_19

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "checkStateClearAllUWBRangingCallback"

    const-string v0, "CallbackMap - cleared"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 8

    const-string v0, "stopUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4d

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez v1, :cond_23

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v0

    const-string v3, "serviceID"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "rangingCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    :goto_4d
    return v2
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z
    .registers 9

    const-string v0, "setAntennaPairSelection"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_70

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_70

    :cond_11
    if-ltz p3, :cond_58

    if-le p3, v1, :cond_16

    goto :goto_58

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez p2, :cond_28

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - not started"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_28
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v1, "rangingCallback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p2, "rangingAntennaPairSelection"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "deviceAddr"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_57

    const/4 v2, 0x1

    :cond_57
    return v2

    :cond_58
    :goto_58
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid antennaPairSelection = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    :goto_70
    return v2
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 8

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "startUWBRanging"

    if-eqz v0, :cond_13

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Need ACCESS_FINE_LOCATION permission"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_13
    invoke-static {v2}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_63

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-eqz v0, :cond_33

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p2, "Ignore - already started"

    invoke-static {p1, v2, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_33
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBleSID()I

    move-result v2

    invoke-direct {v0, p2, v2}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;-><init>(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)V

    iget-object v2, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;->getBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "rangingCallback"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_60

    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    if-nez p1, :cond_63

    const/4 v1, 0x1

    :cond_63
    :goto_63
    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    if-nez v0, :cond_f

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "hasNoPermission"

    const-string v1, "null mContext"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_f
    invoke-static {v0, p1}, Lcom/samsung/android/mcf/common/Utils;->hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public b(II)I
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget p1, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    shl-int/lit8 p1, p1, 0x10

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    if-ne p2, v0, :cond_e

    iget p2, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    or-int/2addr p1, p2

    :cond_e
    return p1
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    return-object v0
.end method

.method public b(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    return v0
.end method

.method public c(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    goto :goto_a

    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/mcf/AbstractClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/AbstractClient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/AbstractClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public close()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v1, "close"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->e:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/AbstractClient$StatusListener;->onClosed(Lcom/samsung/android/mcf/AbstractClient;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string p1, "%s [#0x%s, %s]"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    return-void
.end method

.method public d(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    goto :goto_a

    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public abstract e()I
.end method

.method public e(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

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

    check-cast v1, Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    goto :goto_a

    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public isNetworkEnabled(I)Z
    .registers 6

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(IILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " ret : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "isNetworkEnabled"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
