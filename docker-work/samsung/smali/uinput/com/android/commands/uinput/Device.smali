.class public Lcom/android/commands/uinput/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/uinput/Device$DeviceCallback;,
        Lcom/android/commands/uinput/Device$DeviceHandler;
    }
.end annotation


# static fields
.field private static final MSG_CLOSE_UINPUT_DEVICE:I = 0x2

.field private static final MSG_INJECT_EVENT:I = 0x3

.field private static final MSG_OPEN_UINPUT_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UinputDevice"


# instance fields
.field private final mAbsInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCond:Ljava/lang/Object;

.field private final mConfiguration:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

.field private final mId:I

.field private final mOutputStream:Ljava/io/OutputStream;

.field private final mThread:Landroid/os/HandlerThread;

.field private mTimeToSend:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mAbsInfo:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mConfiguration:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/android/commands/uinput/Device;)I
    .registers 1

    iget p0, p0, Lcom/android/commands/uinput/Device;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOutputStream(Lcom/android/commands/uinput/Device;)Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, Lcom/android/commands/uinput/Device;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smnativeCloseUinputDevice(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/commands/uinput/Device;->nativeCloseUinputDevice(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeConfigure(II[I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/commands/uinput/Device;->nativeConfigure(II[I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeInjectEvent(JIII)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/commands/uinput/Device;->nativeInjectEvent(JIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smnativeOpenUinputDevice(Ljava/lang/String;IIIIILcom/android/commands/uinput/Device$DeviceCallback;)J
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/commands/uinput/Device;->nativeOpenUinputDevice(Ljava/lang/String;IIIIILcom/android/commands/uinput/Device$DeviceCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smnativeSetAbsInfo(IILandroid/os/Parcel;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/commands/uinput/Device;->nativeSetAbsInfo(IILandroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-string v0, "uinputcommand_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIILandroid/util/SparseArray;ILandroid/util/SparseArray;)V
    .registers 13
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vid"    # I
    .param p4, "pid"    # I
    .param p5, "bus"    # I
    .param p7, "ffEffectsMax"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III",
            "Landroid/util/SparseArray<",
            "[I>;I",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p6, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .local p8, "absInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    .line 73
    iput p1, p0, Lcom/android/commands/uinput/Device;->mId:I

    .line 74
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UinputDeviceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mThread:Landroid/os/HandlerThread;

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Lcom/android/commands/uinput/Device$DeviceHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/commands/uinput/Device$DeviceHandler;-><init>(Lcom/android/commands/uinput/Device;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    .line 77
    iput-object p6, p0, Lcom/android/commands/uinput/Device;->mConfiguration:Landroid/util/SparseArray;

    .line 78
    iput-object p8, p0, Lcom/android/commands/uinput/Device;->mAbsInfo:Landroid/util/SparseArray;

    .line 79
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/android/commands/uinput/Device;->mOutputStream:Ljava/io/OutputStream;

    .line 80
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 81
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 82
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 83
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 84
    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 85
    iput p7, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 86
    if-eqz p2, :cond_3e

    .line 87
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    goto :goto_5f

    .line 89
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 92
    :goto_5f
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 93
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/uinput/Device;->mTimeToSend:J

    .line 94
    return-void
.end method

.method private static native nativeCloseUinputDevice(J)V
.end method

.method private static native nativeConfigure(II[I)V
.end method

.method private static native nativeInjectEvent(JIII)V
.end method

.method private static native nativeOpenUinputDevice(Ljava/lang/String;IIIIILcom/android/commands/uinput/Device$DeviceCallback;)J
.end method

.method private static native nativeSetAbsInfo(IILandroid/os/Parcel;)V
.end method


# virtual methods
.method public addDelay(I)V
    .registers 6
    .param p1, "delay"    # I

    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/commands/uinput/Device;->mTimeToSend:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/commands/uinput/Device;->mTimeToSend:J

    .line 114
    return-void
.end method

.method public close()V
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 122
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/commands/uinput/Device;->mTimeToSend:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/uinput/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 124
    :try_start_19
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_26

    .line 125
    :try_start_1c
    iget-object v2, p0, Lcom/android/commands/uinput/Device;->mCond:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 126
    monitor-exit v1

    .line 128
    goto :goto_27

    .line 126
    :catchall_23
    move-exception v2

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_23

    .end local v0    # "msg":Landroid/os/Message;
    .end local p0    # "this":Lcom/android/commands/uinput/Device;
    :try_start_25
    throw v2
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_26} :catch_26

    .line 127
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local p0    # "this":Lcom/android/commands/uinput/Device;
    :catch_26
    move-exception v1

    .line 129
    :goto_27
    return-void
.end method

.method public injectEvent([I)V
    .registers 6
    .param p1, "events"    # [I

    .line 103
    iget-object v0, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/commands/uinput/Device;->mHandler:Lcom/android/commands/uinput/Device$DeviceHandler;

    iget-wide v2, p0, Lcom/android/commands/uinput/Device;->mTimeToSend:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/commands/uinput/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 105
    return-void
.end method
