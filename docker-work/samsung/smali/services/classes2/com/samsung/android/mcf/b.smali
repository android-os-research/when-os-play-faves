.class public Lcom/samsung/android/mcf/b;
.super Lcom/samsung/android/mcf/AbstractClient;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/McfCaster;


# instance fields
.field public final j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MaNaRmTg4hCHdN85ynXoZnNptaY(Lcom/samsung/android/mcf/b;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mcf/b;->c(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/mcf/CasterCallback;Lcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V
    .registers 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/CasterCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/mcf/IMcfService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/samsung/android/mcf/AbstractClient$StatusListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/samsung/android/mcf/AbstractClient;-><init>(Landroid/content/Context;ILcom/samsung/android/mcf/IMcfService;Lcom/samsung/android/mcf/AbstractClient$StatusListener;)V

    new-instance p1, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->i:Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Lcom/samsung/android/mcf/a$$ExternalSyntheticLambda0;

    invoke-direct {p4, p2}, Lcom/samsung/android/mcf/a$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/mcfwrapper/CallbackMonitor;)V

    new-instance p2, Lcom/samsung/android/mcf/b$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/mcf/b$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/b;)V

    invoke-direct {p1, p3, p4, p2}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;-><init>(Lcom/samsung/android/mcf/CasterCallback;Ljava/util/function/BiPredicate;Ljava/util/function/BiConsumer;)V

    iput-object p1, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    return-void
.end method

.method public static a(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z
    .registers 2
    .param p0    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getAccessPermission()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
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

    const/16 v0, 0xc9

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->c(I)V

    const/16 v0, 0xd4

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->d(I)V

    const/16 v0, 0xd6

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->e(I)V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/b;->g()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/b;->f()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "callback"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, "failed"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->d()V

    return-void
.end method

.method public a(ILcom/samsung/android/mcf/CasterCallback;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->b(I)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/CasterCallback;)Z

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1

    invoke-super {p0}, Lcom/samsung/android/mcf/AbstractClient;->close()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/b;->a()V

    return-void
.end method

.method public closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string v2, "closeMessagingServer"

    if-nez v0, :cond_f

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "not opened"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, "callback is not matched. but, close server"

    invoke-static {p1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    iget-object p1, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v2, "MessageCallback"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0xda

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_41

    const/4 v1, 0x1

    :cond_41
    return v1
.end method

.method public confirmUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/McfDevice;Z)Z
    .registers 8
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/McfDevice;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "confirmUWBRanging"

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->supportUWBRanging(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6c

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcf/AbstractClient;->isNetworkEnabled(I)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_6c

    :cond_11
    if-nez p2, :cond_1b

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "device should not be null"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1b
    invoke-virtual {p2}, Lcom/samsung/android/mcf/McfDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_29

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "device BT address should not be null"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;

    move-result-object p1

    if-nez p1, :cond_37

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not started"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v1, "confirmRanging"

    const-string v3, ""

    invoke-static {v0, v1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/rangingwrapper/McfUWBRangingCallbackWrapper;->getBleSID()I

    move-result v1

    const-string/jumbo v3, "serviceID"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string/jumbo v1, "rangingCallback"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string p1, "deviceAddr"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "confirm"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 p1, 0xd7

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_6c

    const/4 v2, 0x1

    :cond_6c
    :goto_6c
    return v2
.end method

.method public e()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo v1, "open"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "callback"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public final f()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/mcf/b;->stopHandover()Z

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method

.method public final g()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->getMyCallback()Lcom/samsung/android/mcf/messaging/McfMessageCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/b;->closeMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    :cond_b
    return-void
.end method

.method public openMessagingServer(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Feature;->isSupportFeature(Lcom/samsung/android/mcf/common/McfSdkFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const-string/jumbo v2, "openMessagingServer"

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - app can open only 1 Messaging server"

    invoke-static {p0, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;-><init>(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)V

    iput-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->c()I

    move-result v0

    const-string/jumbo v2, "serviceID"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "MessageCallback"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 v0, 0xd9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_4c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    :cond_4c
    if-nez p1, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    return v1
.end method

.method public registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 8
    .param p1    # Lcom/samsung/android/mcf/discovery/McfScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/samsung/android/mcf/b;->a(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    const-string/jumbo v1, "registerAdvertiseData"

    if-eqz v0, :cond_1a

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Need READ_CONTACTS permission"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    const/4 v2, -0x1

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - already registered"

    :goto_25
    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_29
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "scanMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3c

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - This API don\'t support Low_Latency Scan"

    goto :goto_25

    :cond_3c
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/discovery/McfScanData;->setTimeout(I)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    invoke-direct {v0, p3}, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;-><init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfScanData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "deviceCallback"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p2, 0xcb

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_6e

    invoke-virtual {p0, p3}, Lcom/samsung/android/mcf/AbstractClient;->b(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V

    :cond_6e
    return p1
.end method

.method public registerHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)Z
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/handover/McfHandoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo p1, "registerHandoverCallback"

    const-string v0, "already registered"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_14
    iget-object p0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public sendHandoverResponse(Lcom/samsung/android/mcf/handover/McfHandoverData;Z)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/handover/McfHandoverData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo p1, "sendHandoverResponse"

    const-string p2, "Ignore - callback is null"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "allow"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/handover/McfHandoverData;->getConnectionType()I

    move-result p1

    const/16 p2, 0xcd

    invoke-virtual {p0, p2, p1, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(IILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    return v1
.end method

.method public sendResponseMessage(Lcom/samsung/android/mcf/messaging/McfMessage;Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/messaging/McfMessage;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/messaging/McfMessageCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    const/4 v1, 0x0

    const-string/jumbo v2, "sendResponseMessage"

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not opened"

    :goto_c
    invoke-static {p0, v2, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    invoke-virtual {v0, p2}, Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;->isMyCallback(Lcom/samsung/android/mcf/messaging/McfMessageCallback;)Z

    move-result p2

    if-nez p2, :cond_1b

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - callback is not matched"

    goto :goto_c

    :cond_1b
    iget-object p2, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p2, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/messaging/McfMessage;->getBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p1, p0, Lcom/samsung/android/mcf/b;->k:Lcom/samsung/android/mcf/messaging/wrapper/McfMessageCallbackWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/messaging/IMcfMessageCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "MessageCallback"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p1, 0xdb

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_3e

    const/4 v1, 0x1

    :cond_3e
    return v1
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;I)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setAntennaPairSelection(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd8

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/b;->a(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo p1, "startAdvertise"

    const-string p2, "Need READ_CONTACTS permission"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p0

    return p0
.end method

.method public startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/discovery/McfScanData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd3

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p0

    return p0
.end method

.method public startUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd5

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;Lcom/samsung/android/mcf/ranging/McfUWBRangingConfig;)Z

    move-result p0

    return p0
.end method

.method public stopAdvertise(Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xc9

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfAdvertiseCallback;)I

    move-result p0

    return p0
.end method

.method public stopHandover()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo v0, "stopHandover"

    const-string v2, "Ignore - callback is null"

    invoke-static {p0, v0, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/mcf/AbstractClient;->c()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/mcf/common/Utils;->getBleServiceId(IZZ)I

    move-result v2

    const-string/jumbo v4, "serviceID"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xce

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    if-nez p0, :cond_31

    move v1, v3

    :cond_31
    return v1
.end method

.method public stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd4

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p0

    return p0
.end method

.method public stopUWBRanging(Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z
    .registers 3
    .param p1    # Lcom/samsung/android/mcf/ranging/McfUWBRangingCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xd6

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILcom/samsung/android/mcf/ranging/McfUWBRangingCallback;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object v0

    const-string/jumbo v1, "unregisterAdvertiseData"

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not registered"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_12
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

    const/16 v0, 0xcc

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public unregisterHandoverCallback()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->getMcfHandoverCallback()Lcom/samsung/android/mcf/handover/McfHandoverCallback;

    move-result-object v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string/jumbo v1, "unregisterHandoverCallback"

    const-string v2, "not registered"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    iget-object p0, p0, Lcom/samsung/android/mcf/b;->j:Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/mcfwrapper/CasterCallbackWrapper;->setMcfHandoverCallback(Lcom/samsung/android/mcf/handover/McfHandoverCallback;)V

    return-void
.end method

.method public updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I
    .registers 6
    .param p1    # Lcom/samsung/android/mcf/discovery/McfAdvertiseData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/mcf/b;->a(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;)Z

    move-result v0

    const-string/jumbo v1, "updateAdvertiseData"

    if-eqz v0, :cond_1a

    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/AbstractClient;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Need READ_CONTACTS permission"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1a
    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/AbstractClient;->a(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;

    move-result-object p2

    if-nez p2, :cond_29

    iget-object p0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string p1, "Ignore - not registered"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->setTimeout(I)V

    iget-object v0, p0, Lcom/samsung/android/mcf/AbstractClient;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "deviceCallback"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const/16 p2, 0xd2

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/mcf/AbstractClient;->a(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method
