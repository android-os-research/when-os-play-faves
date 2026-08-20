.class public final Lcom/android/server/health/HealthServiceWrapperHidl;
.super Lcom/android/server/health/HealthServiceWrapper;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthServiceWrapperHidl$Notification;,
        Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;,
        Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;,
        Lcom/android/server/health/HealthServiceWrapperHidl$Callback;,
        Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;
    }
.end annotation


# static fields
.field public static final INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field public static final SEH_HEALTH_INSTANCE_VENDOR:Ljava/lang/String; = "default"

.field public static final TAG:Ljava/lang/String; = "HealthServiceWrapperHidl"


# instance fields
.field public mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

.field public final mHandlerThread:Landroid/os/HandlerThread;

.field public mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

.field public mInstanceName:Ljava/lang/String;

.field public final mLastService:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/hardware/health/V2_0/IHealth;",
            ">;"
        }
    .end annotation
.end field

.field public final mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;


# direct methods
.method public static synthetic $r8$lambda$BwPG0CvyS4FKrZmsNLqGzzB1LwI(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$IqraLggnzQNzsbdXpALHFffSMkg(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$LYK9wBIQQlOnDdG79p5s2jK-ma0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$VjEcCPEs9NK58EPm19oScQq644M(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$YaEuXWoiXEvq0-2EznUpd1qYwzY(Lcom/android/server/health/HealthServiceWrapperHidl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$scheduleUpdate$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$c01OwGo4HPQ71MNANEaztjOhYQ8(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$q0nG6sdUvv_TlbB7dbRLMbvqdHY(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$vIRfsHqaEOqEXnSr3gw6JYKeE7c(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/health/HealthServiceWrapperHidl;->lambda$getHealthInfo$7(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;ILandroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandlerThread(Lcom/android/server/health/HealthServiceWrapperHidl;)Landroid/os/HandlerThread;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHealthSupplier(Lcom/android/server/health/HealthServiceWrapperHidl;)Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstanceName(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperHidl;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    const-string v0, "default"

    .line 210
    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper;-><init>()V

    .line 55
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/health/HealthServiceWrapperHidl$Notification;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;Lcom/android/server/health/HealthServiceWrapperHidl$Notification-IA;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 56
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "HealthServiceHwbinder"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 67
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_ae

    if-eqz p3, :cond_ae

    .line 214
    iput-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHealthSupplier:Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;

    const-string v1, "HealthInitGetService_default"

    .line 218
    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 220
    :try_start_28
    invoke-interface {p3, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;->get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;

    move-result-object p3
    :try_end_2c
    .catch Ljava/util/NoSuchElementException; {:try_start_28 .. :try_end_2c} :catch_35
    .catchall {:try_start_28 .. :try_end_2c} :catchall_30

    .line 224
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    goto :goto_39

    :catchall_30
    move-exception p0

    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 225
    throw p0

    .line 224
    :catch_35
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    move-object p3, v2

    .line 227
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HealthServiceWrapperHidl: newService: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HealthServiceWrapperHidl"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_58

    .line 230
    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 234
    :cond_58
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    if-eqz v1, :cond_9c

    if-eqz p3, :cond_9c

    if-eqz p1, :cond_65

    .line 242
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mCallback:Lcom/android/server/health/HealthServiceWrapperHidl$Callback;

    .line 243
    invoke-interface {p1, v2, p3, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$Callback;->onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V

    :cond_65
    const-string p1, "HealthInitRegisterNotification"

    .line 247
    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 251
    :try_start_6f
    invoke-interface {p2}, Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;->get()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p1

    const-string p2, "android.hardware.health@2.0::IHealth"

    iget-object p3, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mNotification:Landroid/hidl/manager/V1_0/IServiceNotification;

    .line 252
    invoke-interface {p1, p2, p3, v0}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_7c
    .catchall {:try_start_6f .. :try_end_7c} :catchall_97

    .line 254
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "health: HealthServiceWrapper listening to instance "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mInstanceName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_97
    move-exception p0

    .line 254
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 255
    throw p0

    .line 235
    :cond_9c
    new-instance p0, Ljava/util/NoSuchElementException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    const-string p2, "IHealth service instance %s isn\'t available. Perhaps no permission?"

    .line 236
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 212
    :cond_ae
    throw v2
.end method

.method public static synthetic lambda$getHealthInfo$7(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;ILandroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3

    if-nez p1, :cond_a

    .line 168
    iget-object p1, p2, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Landroid/hardware/health/Translate;->h2aTranslate(Landroid/hardware/health/V1_0/HealthInfo;)Landroid/hardware/health/HealthInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    :cond_a
    return-void
.end method

.method public static synthetic lambda$getProperty$0(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 88
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_8

    int-to-long p2, p3

    .line 89
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$getProperty$1(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 95
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_8

    int-to-long p2, p3

    .line 96
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$getProperty$2(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 102
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_8

    int-to-long p2, p3

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$getProperty$3(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 109
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_8

    int-to-long p2, p3

    .line 110
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$getProperty$4(Landroid/util/MutableInt;Landroid/os/BatteryProperty;II)V
    .registers 4

    .line 116
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_8

    int-to-long p2, p3

    .line 117
    invoke-virtual {p1, p2, p3}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$getProperty$5(Landroid/util/MutableInt;Landroid/os/BatteryProperty;IJ)V
    .registers 5

    .line 123
    iput p2, p0, Landroid/util/MutableInt;->value:I

    if-nez p2, :cond_7

    .line 124
    invoke-virtual {p1, p3, p4}, Landroid/os/BatteryProperty;->setLong(J)V

    :cond_7
    return-void
.end method

.method private synthetic lambda$scheduleUpdate$6()V
    .registers 3

    const-string v0, "HealthServiceWrapperHidl"

    const-string v1, "HealthScheduleUpdate"

    .line 140
    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 142
    :try_start_7
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-nez p0, :cond_1b

    const-string/jumbo p0, "no health service"

    .line 144
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_21
    .catchall {:try_start_7 .. :try_end_17} :catchall_1f

    .line 151
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return-void

    .line 147
    :cond_1b
    :try_start_1b
    invoke-interface {p0}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_27

    :catchall_1f
    move-exception p0

    goto :goto_2b

    :catch_21
    move-exception p0

    :try_start_22
    const-string v1, "Cannot call update on health HAL"

    .line 149
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1f

    .line 151
    :goto_27
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return-void

    :goto_2b
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 152
    throw p0
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 70
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 74
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getHandlerThread()Landroid/os/HandlerThread;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method public getHealthInfo()Landroid/hardware/health/HealthInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    const/4 v0, 0x0

    if-nez p0, :cond_c

    return-object v0

    .line 164
    :cond_c
    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    invoke-direct {v1, v0}, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable-IA;)V

    .line 165
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;

    invoke-direct {v0, v1}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;)V

    invoke-interface {p0, v0}, Landroid/hardware/health/V2_0/IHealth;->getHealthInfo(Landroid/hardware/health/V2_0/IHealth$getHealthInfoCallback;)V

    .line 171
    iget-object p0, v1, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/health/HealthInfo;

    return-object p0
.end method

.method public getProperty(ILandroid/os/BatteryProperty;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "HealthGetProperty"

    .line 79
    invoke-static {v0}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceBegin(Ljava/lang/String;)V

    .line 81
    :try_start_5
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperHidl;->mLastService:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/health/V2_0/IHealth;

    if-eqz p0, :cond_54

    .line 83
    new-instance v0, Landroid/util/MutableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/MutableInt;-><init>(I)V

    packed-switch p1, :pswitch_data_62

    goto :goto_4e

    .line 114
    :pswitch_19
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda4;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeStatus(Landroid/hardware/health/V2_0/IHealth$getChargeStatusCallback;)V

    goto :goto_4e

    .line 121
    :pswitch_22
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda5;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getEnergyCounter(Landroid/hardware/health/V2_0/IHealth$getEnergyCounterCallback;)V

    goto :goto_4e

    .line 107
    :pswitch_2b
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda3;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCapacity(Landroid/hardware/health/V2_0/IHealth$getCapacityCallback;)V

    goto :goto_4e

    .line 100
    :pswitch_34
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentAverage(Landroid/hardware/health/V2_0/IHealth$getCurrentAverageCallback;)V

    goto :goto_4e

    .line 93
    :pswitch_3d
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getCurrentNow(Landroid/hardware/health/V2_0/IHealth$getCurrentNowCallback;)V

    goto :goto_4e

    .line 86
    :pswitch_46
    new-instance p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0, p2}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/os/BatteryProperty;)V

    invoke-interface {p0, p1}, Landroid/hardware/health/V2_0/IHealth;->getChargeCounter(Landroid/hardware/health/V2_0/IHealth$getChargeCounterCallback;)V

    .line 128
    :goto_4e
    iget p0, v0, Landroid/util/MutableInt;->value:I
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_5d

    .line 130
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    return p0

    .line 82
    :cond_54
    :try_start_54
    new-instance p0, Landroid/os/RemoteException;

    const-string/jumbo p1, "no health service"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 130
    invoke-static {}, Lcom/android/server/health/HealthServiceWrapperHidl;->traceEnd()V

    .line 131
    throw p0

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_22
        :pswitch_19
    .end packed-switch
.end method

.method public scheduleUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/android/server/health/HealthServiceWrapperHidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl;)V

    .line 138
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sehWriteEnableToParam(IZLjava/lang/String;)V
    .registers 8

    const-string p0, ", enable: "

    const-string v0, "HealthServiceWrapperHidl"

    :try_start_4
    const-string v1, "default"

    const/4 v2, 0x1

    .line 178
    invoke-static {v1, v2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->getService(Ljava/lang/String;Z)Lvendor/samsung/hardware/health/V2_0/ISehHealth;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 181
    invoke-interface {v1, p1, p2}, Lvendor/samsung/hardware/health/V2_0/ISehHealth;->sehWriteEnableToParam(IZ)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 183
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sehWriteEnableToParam["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: , result : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 179
    :cond_41
    new-instance v1, Landroid/os/RemoteException;

    const-string/jumbo v2, "no seh health service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4a} :catch_4a

    :catch_4a
    move-exception v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in sehWriteEnableToParam["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]: , offset: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_70
    return-void
.end method
