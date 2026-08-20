.class public Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "HealthServiceWrapperAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperAidl;


# direct methods
.method public static synthetic $r8$lambda$3gNK5HyADaizpn-uiAQk1iPg0k4(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->lambda$onRegistration$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    return-void
.end method

.method private synthetic lambda$onRegistration$0(Landroid/os/IBinder;)V
    .registers 5

    const-string v0, "HealthServiceWrapperAidl"

    .line 249
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/health/IHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;

    move-result-object v1

    .line 250
    iget-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v2}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/health/IHealth;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 252
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    .line 253
    :goto_1f
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return-void

    .line 258
    :cond_26
    :try_start_26
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/health/ISehHealth$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/health/ISehHealth;

    move-result-object v2
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p1

    const-string v1, "Unable to getExtension for health "

    .line 260
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_39
    if-eqz v2, :cond_5e

    .line 268
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmLastSehService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lvendor/samsung/hardware/health/ISehHealth;

    const-string v1, "New health AIDL HAL service registered"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 275
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    :cond_5d
    return-void

    .line 264
    :cond_5e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "HealthServiceWrapperAidl: ServiceCallback: newSehService: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ServiceCallback: ISehHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 244
    :cond_9
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-virtual {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
