.class public abstract Lcom/android/server/health/HealthServiceWrapper;
.super Ljava/lang/Object;
.source "HealthServiceWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/android/server/health/HealthInfoCallback;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_5

    move-object v1, v0

    goto :goto_a

    .line 88
    :cond_5
    new-instance v1, Lcom/android/server/health/HealthRegCallbackAidl;

    invoke-direct {v1, p0}, Lcom/android/server/health/HealthRegCallbackAidl;-><init>(Lcom/android/server/health/HealthInfoCallback;)V

    :goto_a
    new-instance v2, Lcom/android/server/health/HealthServiceWrapper$1;

    invoke-direct {v2}, Lcom/android/server/health/HealthServiceWrapper$1;-><init>()V

    if-nez p0, :cond_12

    goto :goto_17

    .line 90
    :cond_12
    new-instance v0, Lcom/android/server/health/HealthHalCallbackHidl;

    invoke-direct {v0, p0}, Lcom/android/server/health/HealthHalCallbackHidl;-><init>(Lcom/android/server/health/HealthInfoCallback;)V

    :goto_17
    new-instance p0, Lcom/android/server/health/HealthServiceWrapper$2;

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapper$2;-><init>()V

    new-instance v3, Lcom/android/server/health/HealthServiceWrapper$3;

    invoke-direct {v3}, Lcom/android/server/health/HealthServiceWrapper$3;-><init>()V

    .line 87
    invoke-static {v1, v2, v0, p0, v3}, Lcom/android/server/health/HealthServiceWrapper;->create(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)Lcom/android/server/health/HealthServiceWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)Lcom/android/server/health/HealthServiceWrapper;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceManagerStub;)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 120
    :catch_6
    new-instance p0, Lcom/android/server/health/HealthServiceWrapperHidl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/health/HealthServiceWrapperHidl;-><init>(Lcom/android/server/health/HealthServiceWrapperHidl$Callback;Lcom/android/server/health/HealthServiceWrapperHidl$IServiceManagerSupplier;Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;)V

    return-object p0
.end method


# virtual methods
.method public abstract getHandlerThread()Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public abstract getHealthInfo()Landroid/hardware/health/HealthInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getProperty(ILandroid/os/BatteryProperty;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract scheduleUpdate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sehWriteEnableToParam(IZLjava/lang/String;)V
.end method
