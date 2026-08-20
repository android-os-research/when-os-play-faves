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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:I

.field public final e:Lcom/samsung/android/mcf/AbstractClient$StatusListener;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

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
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/IMcfService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

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
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    shl-int/lit8 p1, p0, 0x10

    add-int/2addr p1, p0

    goto :goto_b

    :cond_9
    const/16 p1, -0x3e7

    :goto_b
    return p1
.end method

.method public a(IILandroid/os/Bundle;)I
    .registers 7
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    const-string/jumbo v1, "sendMessage"

    const/4 v2, -0x1

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Service is invalid"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_10
    iget v0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/mcf/common/MessageUtil;->makeMessage(IIILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p2

    :try_start_16
    iget-object p3, p0, Lcom/samsung/android/mcf/AbstractClient;->b:Lcom/samsung/android/mcf/IMcfService;

    invoke-interface {p3, p2}, Lcom/samsung/android/mcf/IMcfService;->internalCommand(Landroid/os/Message;)I

    move-result v2
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_1c} :catch_1d

    goto :goto_40

    :catch_1d
    move-exception p2

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_40
    return v2
.end method

.method public a(ILandroid/os/Bundle;)I
    .registers 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/16 v0, -0x3e7

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(IILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7
    .param p2    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string/jumbo v1, "stopAdvertise"

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not start"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_16
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

    move-result p0

    return p0
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 7
    .param p2    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfAdvertiseCallbackWrapper;

    const-string/jumbo v1, "startAdvertise"

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - already started"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_16
    sget-boolean v0, Lcom/samsung/android/mcf/common/Utils;->DEBUG:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    const v2, 0x36ee80

    if-gt v0, v2, :cond_29

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getTimeout()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_29
    const-string v0, "Advertise-Timeout is set too long, please check it again"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->c(Ljava/lang/String;)V

    :cond_2e
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

    if-eqz p1, :cond_57

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    return p1
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7
    .param p2    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string/jumbo v1, "stopScan"

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not start"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_16
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

    move-result p0

    return p0
.end method

.method public a(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 7
    .param p2    # Lcom/samsung/android/mcf/discovery/McfScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    const-string/jumbo v1, "startScan"

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - already started"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_16
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

    if-eqz p1, :cond_3f

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    return p1
.end method

.method public a(ZZ)I
    .registers 3

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result p0

    return p0
.end method

.method public a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    return-object p0
.end method

.method public a(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    return-object p0
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

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "checkStateClearAllUWBRangingCallback"

    const-string p2, "CallbackMap - cleared"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 8
    .param p2    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "stopUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_50

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_50

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez v1, :cond_24

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not started"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_24
    iget-object v3, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v0, v4}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v0

    const-string/jumbo v3, "serviceID"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v1, "rangingCallback"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_50

    const/4 v2, 0x1

    :cond_50
    :goto_50
    return v2
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z
    .registers 9
    .param p2    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "setAntennaPairSelection"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_72

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_72

    :cond_12
    if-ltz p3, :cond_5c

    if-le p3, v1, :cond_17

    goto :goto_5c

    :cond_17
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-nez p2, :cond_29

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not started"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    iget-object v1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v0, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string/jumbo v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string/jumbo v1, "rangingCallback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo p2, "rangingAntennaPairSelection"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "deviceAddr"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_5b

    const/4 v2, 0x1

    :cond_5b
    return v2

    :cond_5c
    :goto_5c
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid antennaPairSelection = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return v2
.end method

.method public a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 8
    .param p2    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "startUWBRanging"

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Need ACCESS_FINE_LOCATION permission"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    invoke-static {v2}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_65

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    if-eqz v0, :cond_34

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - already started"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_34
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

    const-string/jumbo v2, "rangingCallback"

    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_62

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_62
    if-nez p1, :cond_65

    const/4 v1, 0x1

    :cond_65
    :goto_65
    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "hasNoPermission"

    const-string v0, "null mContext"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_f
    invoke-static {v0, p1}, Lcom/samsung/android/mcf/common/Utils;->hasNoPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
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

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    or-int/2addr p1, p0

    :cond_e
    return p1
.end method

.method public b()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->c:Landroid/content/Context;

    return-object p0
.end method

.method public b(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .registers 2
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(I)Z
    .registers 2

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    return p0
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
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

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

    iget p0, p0, Lcom/samsung/android/mcf/AbstractClient;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p1, v1, p0

    const-string p0, "%s [#0x%s, %s]"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

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
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public isNetworkEnabled(I)Z
    .registers 5

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
    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "isNetworkEnabled"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
