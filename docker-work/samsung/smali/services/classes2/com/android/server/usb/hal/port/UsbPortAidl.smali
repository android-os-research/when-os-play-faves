.class public final Lcom/android/server/usb/hal/port/UsbPortAidl;
.super Ljava/lang/Object;
.source "UsbPortAidl.java"

# interfaces
.implements Lcom/android/server/usb/hal/port/UsbPortHal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbPortAidl"

.field public static final USB_AIDL_SERVICE:Ljava/lang/String; = "android.hardware.usb.IUsb/default"

.field public static final USB_DATA_STATUS_DISABLED_CONTAMINANT:I = 0x3

.field public static final USB_DATA_STATUS_DISABLED_DEBUG:I = 0x6

.field public static final USB_DATA_STATUS_DISABLED_DOCK:I = 0x4

.field public static final USB_DATA_STATUS_DISABLED_FORCE:I = 0x5

.field public static final USB_DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final USB_DATA_STATUS_ENABLED:I = 0x1

.field public static final USB_DATA_STATUS_UNKNOWN:I

.field public static final sCallbacks:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/hardware/usb/IUsbOperationInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

.field public final mLock:Ljava/lang/Object;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public mProxy:Landroid/hardware/usb/IUsb;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public mSystemReady:Z

.field public mTransactionId:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSystemReady(Lcom/android/server/usb/hal/port/UsbPortAidl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCallbacks()Landroid/util/LongSparseArray;
    .registers 1

    sget-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 62
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    .line 167
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 168
    iput-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 169
    new-instance p1, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    iget-object p2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    iput-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    .line 170
    iget-object p1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static isServicePresent(Lcom/android/internal/util/IndentingPrintWriter;)Z
    .registers 3

    :try_start_0
    const-string v0, "android.hardware.usb.IUsb/default"

    .line 158
    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result p0
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    move-exception v0

    const-string v1, "connectToProxy: usb Aidl hal service not found."

    .line 160
    invoke-static {p0, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 8

    .line 136
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz v1, :cond_9

    .line 138
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_45

    return-void

    :cond_9
    :try_start_9
    const-string v1, "android.hardware.usb.IUsb/default"

    .line 142
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    .line 143
    invoke-static {v1}, Landroid/hardware/usb/IUsb$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 144
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mBinder:Landroid/os/IBinder;

    new-instance v2, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/hal/port/UsbPortAidl;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 145
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mHALCallback:Lcom/android/server/usb/hal/port/UsbPortAidl$HALCallback;

    invoke-interface {v1, v2}, Landroid/hardware/usb/IUsb;->setCallback(Landroid/hardware/usb/IUsbCallback;)V

    .line 146
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    iget-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mTransactionId:J

    invoke-interface {v1, v2, v3}, Landroid/hardware/usb/IUsb;->queryPortStatus(J)V
    :try_end_35
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_35} :catch_3d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_35} :catch_36
    .catchall {:try_start_9 .. :try_end_35} :catchall_45

    goto :goto_43

    :catch_36
    move-exception p0

    :try_start_37
    const-string v1, "connectToProxy: usb hal service not responding"

    .line 151
    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_43

    :catch_3d
    move-exception p0

    const-string v1, "connectToProxy: usb hal service not found. Did the service fail to start?"

    .line 148
    invoke-static {p1, v1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_37 .. :try_end_47} :catchall_45

    throw p0
.end method

.method public enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    .registers 7

    .line 176
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_20

    const/4 p1, 0x6

    .line 178
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy is null. Retry ! opID: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 180
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3d

    return-void

    .line 185
    :cond_20
    :try_start_20
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/usb/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_3d

    goto :goto_3b

    :catch_24
    move-exception p1

    .line 187
    :try_start_25
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set contaminant detection. opID:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 190
    :goto_3b
    monitor-exit v0

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 15

    .line 363
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_6
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v2, 0x1

    if-nez v1, :cond_27

    const/4 p2, 0x6

    .line 368
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableLimitPowerTransfer: Proxy is null. Retry !opID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v1, v3}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 371
    invoke-interface {p5, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_25} :catch_92
    .catchall {:try_start_6 .. :try_end_25} :catchall_90

    .line 372
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_90

    return-void

    :cond_27
    move-wide v3, p3

    .line 374
    :goto_28
    :try_start_28
    sget-object v1, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 375
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    int-to-long v3, v1

    goto :goto_28

    :cond_3a
    cmp-long v5, v3, p3

    if-eqz v5, :cond_5d

    const/4 v5, 0x4

    .line 378
    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_5d} :catch_92
    .catchall {:try_start_28 .. :try_end_5d} :catchall_90

    .line 382
    :cond_5d
    :try_start_5d
    invoke-virtual {v1, v3, v4, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 383
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v1, p1, p2, v3, v4}, Landroid/hardware/usb/IUsb;->limitPowerTransfer(Ljava/lang/String;ZJ)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_65} :catch_66
    .catchall {:try_start_5d .. :try_end_65} :catchall_90

    goto :goto_b1

    :catch_66
    move-exception p2

    .line 385
    :try_start_67
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableLimitPowerTransfer: Failed while invoking AIDL HAL portID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " opID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p5, :cond_8a

    .line 389
    invoke-interface {p5, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 391
    :cond_8a
    sget-object p2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_8f} :catch_92
    .catchall {:try_start_67 .. :try_end_8f} :catchall_90

    goto :goto_b1

    :catchall_90
    move-exception p0

    goto :goto_b3

    :catch_92
    move-exception p2

    .line 394
    :try_start_93
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLimitPowerTransfer: Failed to call onOperationComplete portID="

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opID:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 398
    :goto_b1
    monitor-exit v0

    return-void

    :goto_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_90

    throw p0
.end method

.method public enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 16

    .line 319
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 324
    :try_start_a
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v3, 0x1

    if-nez v2, :cond_2b

    const/4 p2, 0x6

    .line 325
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableUsbData: Proxy is null. Retry !opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v2, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 328
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_99
    .catchall {:try_start_a .. :try_end_29} :catchall_97

    .line 329
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_97

    return v1

    :cond_2b
    move-wide v4, p3

    .line 331
    :goto_2c
    :try_start_2c
    sget-object v2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3e

    .line 332
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v2

    int-to-long v4, v2

    goto :goto_2c

    :cond_3e
    cmp-long v6, v4, p3

    if-eqz v6, :cond_61

    const/4 v6, 0x4

    .line 335
    iget-object v7, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enableUsbData: operationID exists ! opID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " key:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_61} :catch_95
    .catchall {:try_start_2c .. :try_end_61} :catchall_97

    .line 339
    :cond_61
    :try_start_61
    invoke-virtual {v2, v4, v5, p5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 340
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, p2, v4, v5}, Landroid/hardware/usb/IUsb;->enableUsbData(Ljava/lang/String;ZJ)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_69} :catch_6b
    .catchall {:try_start_61 .. :try_end_69} :catchall_97

    .line 356
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_97

    return v3

    :catch_6b
    move-exception p2

    .line 342
    :try_start_6c
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableUsbData: Failed to invoke enableUsbData: portID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 345
    invoke-interface {p5, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 346
    sget-object p2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p2, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_93} :catch_95
    .catchall {:try_start_6c .. :try_end_93} :catchall_97

    .line 347
    :try_start_93
    monitor-exit v0

    return v1

    :catch_95
    move-exception p2

    goto :goto_9b

    :catchall_97
    move-exception p0

    goto :goto_c1

    :catch_99
    move-exception p2

    move-wide v4, p3

    .line 350
    :goto_9b
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbData: Failed to call onOperationComplete portID="

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 353
    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v4, v5}, Landroid/util/LongSparseArray;->remove(J)V

    .line 354
    monitor-exit v0

    return v1

    .line 357
    :goto_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_93 .. :try_end_c2} :catchall_97

    throw p0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14

    .line 404
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_6
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v2, 0x1

    if-nez v1, :cond_27

    const/4 v1, 0x6

    .line 409
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableUsbDataWhileDocked: Proxy is null. Retry !opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 412
    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_25} :catch_92
    .catchall {:try_start_6 .. :try_end_25} :catchall_90

    .line 413
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_90

    return-void

    :cond_27
    move-wide v3, p2

    .line 415
    :goto_28
    :try_start_28
    sget-object v1, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3a

    .line 416
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    int-to-long v3, v1

    goto :goto_28

    :cond_3a
    cmp-long v5, v3, p2

    if-eqz v5, :cond_5d

    const/4 v5, 0x4

    .line 419
    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableUsbDataWhileDocked: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_5d} :catch_92
    .catchall {:try_start_28 .. :try_end_5d} :catchall_90

    .line 424
    :cond_5d
    :try_start_5d
    invoke-virtual {v1, v3, v4, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v1, p1, v3, v4}, Landroid/hardware/usb/IUsb;->enableUsbDataWhileDocked(Ljava/lang/String;J)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_65} :catch_66
    .catchall {:try_start_5d .. :try_end_65} :catchall_90

    goto :goto_b1

    :catch_66
    move-exception v1

    .line 427
    :try_start_67
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableUsbDataWhileDocked: error while invoking halportID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " opID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz p4, :cond_8a

    .line 431
    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 433
    :cond_8a
    sget-object p4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_8f} :catch_92
    .catchall {:try_start_67 .. :try_end_8f} :catchall_90

    goto :goto_b1

    :catchall_90
    move-exception p0

    goto :goto_b3

    :catch_92
    move-exception p4

    .line 436
    :try_start_93
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableUsbDataWhileDocked: Failed to call onOperationComplete portID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 440
    :goto_b1
    monitor-exit v0

    return-void

    :goto_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_93 .. :try_end_b4} :catchall_90

    throw p0
.end method

.method public getUsbHalVersion()I
    .registers 3
    .annotation build Landroid/hardware/usb/UsbManager$UsbHalVersion;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-eqz p0, :cond_12

    .line 117
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    const/4 p0, 0x4

    const/4 v0, 0x0

    const-string v1, "USB HAL AIDL version: USB_HAL_V2_0"

    .line 118
    invoke-static {p0, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    const/16 p0, 0x14

    return p0

    .line 115
    :cond_12
    :try_start_12
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "IUsb not initialized yet"

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1a
    move-exception p0

    .line 117
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public queryPortStatus(J)V
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_20

    const/4 v1, 0x6

    .line 197
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy is null. Retry ! opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 199
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3c

    return-void

    .line 203
    :cond_20
    :try_start_20
    invoke-interface {v1, p1, p2}, Landroid/hardware/usb/IUsb;->queryPortStatus(J)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24
    .catchall {:try_start_20 .. :try_end_23} :catchall_3c

    goto :goto_3a

    :catch_24
    move-exception p0

    const/4 v1, 0x0

    .line 205
    :try_start_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceStart: Failed to query port status. opID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 208
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_26 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14

    .line 279
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    const/4 v2, 0x1

    if-nez v1, :cond_29

    const/4 v1, 0x6

    .line 285
    iget-object v3, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "resetUsbPort: Proxy is null. Retry !opID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 288
    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_97
    .catchall {:try_start_9 .. :try_end_29} :catchall_95

    :cond_29
    move-wide v3, p2

    .line 290
    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3c

    .line 291
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result v1

    int-to-long v3, v1

    goto :goto_2a

    :cond_3c
    cmp-long v5, v3, p2

    if-eqz v5, :cond_60

    const/4 v5, 0x4

    .line 294
    iget-object v6, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "resetUsbPort: operationID exists ! opID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_60} :catch_93
    .catchall {:try_start_2a .. :try_end_60} :catchall_95

    .line 298
    :cond_60
    :try_start_60
    invoke-virtual {v1, v3, v4, p4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 299
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v1, p1, v3, v4}, Landroid/hardware/usb/IUsb;->resetUsbPort(Ljava/lang/String;J)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_68} :catch_69
    .catchall {:try_start_60 .. :try_end_68} :catchall_95

    goto :goto_be

    :catch_69
    move-exception v1

    .line 301
    :try_start_6a
    iget-object v5, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resetUsbPort: Failed to resetUsbPort: portID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "opId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    invoke-interface {p4, v2}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V

    .line 305
    sget-object p4, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p4, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_92} :catch_93
    .catchall {:try_start_6a .. :try_end_92} :catchall_95

    goto :goto_be

    :catch_93
    move-exception p4

    goto :goto_99

    :catchall_95
    move-exception p0

    goto :goto_c0

    :catch_97
    move-exception p4

    move-wide v3, p2

    .line 308
    :goto_99
    :try_start_99
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetUsbPort: Failed to call onOperationComplete portID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p4}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 311
    sget-object p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->remove(J)V

    .line 313
    :goto_be
    monitor-exit v0

    return-void

    :goto_c0
    monitor-exit v0
    :try_end_c1
    .catchall {:try_start_99 .. :try_end_c1} :catchall_95

    throw p0
.end method

.method public serviceDied()V
    .registers 4

    .line 128
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Usb AIDL hal service died"

    const/4 v2, 0x6

    invoke-static {v2, v0, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 130
    :try_start_c
    iput-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    .line 131
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 132
    invoke-virtual {p0, v1}, Lcom/android/server/usb/hal/port/UsbPortAidl;->connectToProxy(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void

    :catchall_13
    move-exception p0

    .line 131
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public switchDataRole(Ljava/lang/String;IJ)V
    .registers 9

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_20

    const/4 p1, 0x6

    .line 259
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy is null. Retry ! opID:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 261
    monitor-exit v0

    return-void

    .line 264
    :cond_20
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v2, p2

    .line 265
    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setDataRole(B)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_5d

    .line 267
    :try_start_29
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_5d

    goto :goto_5b

    :catch_2f
    move-exception v1

    .line 269
    :try_start_30
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the USB data role: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newDataRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 269
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 273
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public switchMode(Ljava/lang/String;IJ)V
    .registers 9

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_20

    const/4 p1, 0x6

    .line 215
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy is null. Retry ! opID:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 217
    monitor-exit v0

    return-void

    .line 220
    :cond_20
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v2, p2

    .line 221
    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setMode(B)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_5d

    .line 223
    :try_start_29
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_5d

    goto :goto_5b

    :catch_2f
    move-exception v1

    .line 225
    :try_start_30
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the USB port mode: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newMode="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 230
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public switchPowerRole(Ljava/lang/String;IJ)V
    .registers 9

    .line 236
    iget-object v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    if-nez v1, :cond_20

    const/4 p1, 0x6

    .line 238
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy is null. Retry ! opID:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 240
    monitor-exit v0

    return-void

    .line 243
    :cond_20
    new-instance v1, Landroid/hardware/usb/PortRole;

    invoke-direct {v1}, Landroid/hardware/usb/PortRole;-><init>()V

    int-to-byte v2, p2

    .line 244
    invoke-virtual {v1, v2}, Landroid/hardware/usb/PortRole;->setPowerRole(B)V
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_5d

    .line 246
    :try_start_29
    iget-object v2, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mProxy:Landroid/hardware/usb/IUsb;

    invoke-interface {v2, p1, v1, p3, p4}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f
    .catchall {:try_start_29 .. :try_end_2e} :catchall_5d

    goto :goto_5b

    :catch_2f
    move-exception v1

    .line 248
    :try_start_30
    iget-object p0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the USB power role: portId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", newPowerRole="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "opID:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 252
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public systemReady()V
    .registers 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/server/usb/hal/port/UsbPortAidl;->mSystemReady:Z

    return-void
.end method
