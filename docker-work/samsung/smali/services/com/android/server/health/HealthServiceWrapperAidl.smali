.class public Lcom/android/server/health/HealthServiceWrapperAidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperAidl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;,
        Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;
    }
.end annotation


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "HealthServiceWrapperAidl"


# instance fields
.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public final mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lvendor/samsung/hardware/health/ISehHealth;",
            ">;"
        }
    .end annotation
.end field

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field public final mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

.field public final mServiceCallback:Landroid/os/IServiceCallback;


# direct methods
.method public static synthetic $r8$lambda$XlTRMdMMCaC-Po1dzaDwbjRuYm4(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->lambda$scheduleUpdate$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLastSehService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const-string v0, "HealthServiceWrapperAidl"

    .line 76
    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 53
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "HealthServiceBinder"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 54
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    .line 55
    new-instance v2, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback-IA;)V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Landroid/os/IServiceCallback;

    .line 59
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "HealthInitGetServiceAidl"

    .line 78
    invoke-static {v2}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 81
    :try_start_29
    sget-object v2, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-interface {p2, v2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->waitForDeclaredService(Ljava/lang/String;)Landroid/hardware/health/IHealth;

    move-result-object v4

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HealthServiceWrapperAidl: newService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_a7

    .line 85
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    if-eqz v4, :cond_9f

    .line 91
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 95
    invoke-static {v2}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 98
    :try_start_55
    invoke-interface {v1}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/health/ISehHealth$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/health/ISehHealth;

    move-result-object v1
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_73

    .line 100
    :catch_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register DeathRecipient for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    move-object v1, v3

    .line 104
    :goto_73
    iget-object v2, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 107
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mRegCallback:Lcom/android/server/health/HealthRegCallbackAidl;

    if-eqz p1, :cond_7f

    .line 111
    invoke-virtual {p1, v3, v1}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V

    :cond_7f
    const-string p1, "HealthInitRegisterNotificationAidl"

    .line 115
    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 118
    :try_start_89
    sget-object p1, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mServiceCallback:Landroid/os/IServiceCallback;

    invoke-interface {p2, p1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;->registerForNotifications(Ljava/lang/String;Landroid/os/IServiceCallback;)V
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_9a

    .line 120
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    const-string/jumbo p0, "health: HealthServiceWrapper listening to AIDL HAL"

    .line 122
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_9a
    move-exception p0

    .line 120
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 121
    throw p0

    .line 88
    :cond_9f
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "IHealth service instance isn\'t available. Perhaps no permission?"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a7
    move-exception p0

    .line 85
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 86
    throw p0
.end method

.method private synthetic lambda$scheduleUpdate$0()V
    .registers 3

    const-string v0, "HealthServiceWrapperAidl"

    const-string v1, "HealthScheduleUpdate"

    .line 185
    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 187
    :try_start_7
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-nez p0, :cond_1b

    const-string/jumbo p0, "no health service"

    .line 189
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_17} :catch_21
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 196
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    .line 192
    :cond_1b
    :try_start_1b
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Landroid/os/ServiceSpecificException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p0

    goto :goto_2b

    :catch_21
    move-exception p0

    :try_start_22
    const-string v1, "Cannot call update on health AIDL HAL"

    .line 194
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 196
    :goto_27
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return-void

    :goto_2b
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 197
    throw p0
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 230
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 234
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 128
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 206
    :cond_c
    :try_start_c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_10} :catch_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_c .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    return-object v0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "HealthGetPropertyAidl"

    .line 133
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceBegin(Ljava/lang/String;)V

    .line 135
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperAidl;->getPropertyInternal(ILandroid/os/BatteryProperty;)I

    move-result p0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 137
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    return p0

    :catchall_d
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperAidl;->traceEnd()V

    .line 138
    throw p0
.end method

.method public final getPropertyInternal(ILandroid/os/BatteryProperty;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/IHealth;

    if-eqz p0, :cond_49

    packed-switch p1, :pswitch_data_52

    goto :goto_47

    .line 159
    :pswitch_e
    :try_start_e
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_47

    .line 162
    :pswitch_17
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_47

    .line 156
    :pswitch_1f
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_47

    .line 153
    :pswitch_28
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_47

    .line 150
    :pswitch_31
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V

    goto :goto_47

    .line 147
    :pswitch_3a
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {p2, p0, p1}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_42
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_e .. :try_end_42} :catch_45
    .catch Landroid/os/ServiceSpecificException; {:try_start_e .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    const/4 p0, -0x2

    return p0

    :catch_45
    const/4 p0, -0x1

    return p0

    :goto_47
    const/4 p0, 0x0

    return p0

    .line 143
    :cond_49
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_31
        :pswitch_28
        :pswitch_1f
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method public scheduleUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    .line 183
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sehWriteEnableToParam(IZLjava/lang/String;)V
    .registers 9

    const-string v0, ", enable: "

    const-string v1, "]: , offset: "

    const-string v2, "HealthServiceWrapperAidl"

    .line 216
    :try_start_6
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl;->mLastSehService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/health/ISehHealth;

    if-eqz p0, :cond_35

    .line 219
    invoke-interface {p0, p1, p2}, Lvendor/samsung/hardware/health/ISehHealth;->sehWriteEnableToParam(IZ)V

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sehWriteEnableToParam["

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 217
    :cond_35
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo v3, "no seh health service"

    invoke-direct {p0, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in sehWriteEnableToParam["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_62
    return-void
.end method
