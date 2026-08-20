.class public final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$Dumpable;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_RECEIVE_MSG:I = 0x2

.field public static final CEC_DISABLED_DROP_MSG:I = 0x4

.field public static final CEC_DISABLED_IGNORE:I = 0x1

.field public static final CEC_DISABLED_LOG_WARNING:I = 0x2

.field public static final EMPTY_BODY:[B

.field public static final HDMI_CEC_HAL_DEATH_COOKIE:I = 0x161

.field public static final INITIAL_HDMI_MESSAGE_HISTORY_SIZE:I = 0xfa

.field public static final INVALID_PHYSICAL_ADDRESS:I = 0xffff

.field public static final MAX_DEDICATED_ADDRESS:I = 0xb

.field public static final NUM_LOGICAL_ADDRESS:I = 0x10

.field public static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field public mControlHandler:Landroid/os/Handler;

.field public final mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public mIoHandler:Landroid/os/Handler;

.field public mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field public final mMessageHistoryLock:Ljava/lang/Object;

.field public final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field public final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHdmiCecAtomWriter(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapperImpl(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiControlService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCallingUid(Lcom/android/server/hdmi/HdmiCecController;)I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAllocateLogicalAddress(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->handleHotplug(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleIncomingCecCommand(II[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrunDevicePolling(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPollMessage(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smbuildBody(I[B)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 88
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V
    .registers 6

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 142
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 155
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 156
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-void
.end method

.method public static buildBody(I[B)[B
    .registers 5

    .line 283
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v2, 0x0

    .line 284
    aput-byte p0, v0, v2

    .line 285
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 5

    .line 171
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11-IA;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Unable to use cec@1.1"

    .line 176
    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl-IA;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    return-object p0
.end method

.method public static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 4

    .line 185
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V

    .line 186
    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Couldn\'t get tv.cec service."

    .line 188
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V

    return-object v0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 394
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_14

    .line 398
    :cond_a
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 400
    :try_start_f
    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_12
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_f .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public final addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 764
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 765
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    return-void
.end method

.method public final addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 771
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 772
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 774
    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final addHotplugEventToHistory(IZ)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 758
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 759
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    return-void
.end method

.method public addLogicalAddress(I)I
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 306
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 307
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 308
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(I)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x2

    return p0
.end method

.method public allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 5
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 219
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final assertRunOnIoThread()V
    .registers 2

    .line 541
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 542
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on io thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .registers 2

    .line 547
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 548
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearLogicalAddress()V
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 321
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 322
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "CEC message history:"

    .line 803
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 805
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 806
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 807
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_16

    .line 809
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public enableAudioReturnChannel(IZ)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 415
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 416
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(IZ)V

    return-void
.end method

.method public flush(Ljava/lang/Runnable;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 568
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCallingUid()I
    .registers 2

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    :cond_b
    return p0
.end method

.method public getMessageHistorySize()I
    .registers 3

    .line 778
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 780
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getPhysicalAddress()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 337
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 1

    .line 291
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVendorId()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 359
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId()I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .registers 1
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 348
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion()I

    move-result p0

    return p0
.end method

.method public final handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 13
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v1, 0x0

    move v2, v1

    :goto_17
    const/16 v3, 0x10

    if-ge v2, v3, :cond_41

    .line 245
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 247
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v3

    .line 246
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForCecVersion(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_41
    const/16 v2, 0xf

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_47
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_72

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move v6, v1

    :goto_56
    if-ge v6, v4, :cond_6b

    .line 256
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v7, v8, v5}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v7

    if-eqz v7, :cond_68

    move v6, v5

    goto :goto_6c

    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    :cond_6b
    move v6, v1

    :goto_6c
    if-nez v6, :cond_47

    .line 264
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_72
    new-array v0, v4, [Ljava/lang/Object;

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v5

    const/4 p2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p2

    const-string p2, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    .line 270
    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_96

    .line 273
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {p2, p0, p3, p1, v2}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    :cond_96
    return-void
.end method

.method public final handleHotplug(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 750
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 751
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hotplug event:[port:%d, connected:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addHotplugEventToHistory(IZ)V

    .line 753
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    return-void
.end method

.method public final handleIncomingCecCommand(II[B)V
    .registers 9
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 699
    array-length v0, p3

    const-string v1, "HdmiCecController"

    if-nez v0, :cond_e

    const-string p0, "Message with empty body received."

    .line 700
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 704
    aget-byte v2, p3, v0

    array-length v3, p3

    const/4 v4, 0x1

    .line 705
    invoke-static {p3, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    .line 704
    invoke-static {p1, p2, v2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p3

    .line 707
    invoke-virtual {p3}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v2

    if-eqz v2, :cond_35

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[R]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    invoke-virtual {p0, v4, p3}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->incomingMessageDirection(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result p2

    .line 714
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V

    .line 717
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final incomingMessageDirection(II)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne p2, v2, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    .line 727
    :goto_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 728
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_2e

    move v0, v1

    :cond_2e
    if-ne v3, p2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_32
    if-nez v0, :cond_38

    if-eqz v2, :cond_38

    const/4 p0, 0x3

    return p0

    :cond_38
    if-eqz v0, :cond_3e

    if-eqz v2, :cond_3e

    const/4 p0, 0x4

    return p0

    :cond_3e
    return v1
.end method

.method public final init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V
    .registers 4

    .line 196
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    return-void
.end method

.method public final isAcceptableAddress(I)Z
    .registers 3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 583
    :cond_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isAllocatedLocalDeviceAddress(I)Z

    move-result p0

    return p0
.end method

.method public isConnected(I)Z
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 427
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 428
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    move-result p0

    return p0
.end method

.method public maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 617
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 618
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_20

    if-ne v1, v2, :cond_12

    goto :goto_20

    .line 624
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    if-nez p1, :cond_19

    return-void

    .line 629
    :cond_19
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 628
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 589
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 590
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 591
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 592
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->isCecTransportMessage(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received when cec disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    :cond_31
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-nez v0, :cond_44

    return-void

    .line 603
    :cond_44
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_51

    .line 606
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_57

    :cond_51
    const/4 v1, -0x1

    if-eq v0, v1, :cond_57

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    :cond_57
    :goto_57
    return-void
.end method

.method public final pickPollCandidates(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 462
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_a

    .line 458
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    :goto_a
    const/high16 v0, 0x30000

    and-int/2addr p1, v0

    .line 467
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/high16 v1, 0x10000

    const/16 v2, 0xe

    if-eq p1, v1, :cond_2e

    :goto_18
    if-ltz v2, :cond_45

    .line 479
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 480
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-gt p1, v2, :cond_45

    .line 471
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_45
    return-object v0
.end method

.method public pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 11
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 445
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 448
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v2

    .line 449
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v1, p2

    move v3, p4

    move-object v4, p1

    .line 450
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method public final runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 15
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 493
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    if-eqz p4, :cond_1d

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 495
    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "[P]:AllocatedAddress=%s"

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    :cond_1d
    return-void

    .line 501
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 504
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v0

    move-object v2, p0

    move v3, p1

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOnIoThread(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 557
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 562
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 634
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 635
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 653
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 654
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 655
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendPollMessage(III)Z
    .registers 10
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p3, :cond_33

    .line 526
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    sget-object v3, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 527
    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_13

    return v3

    :cond_13
    if-eq v2, v3, :cond_30

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "Failed to send a polling message(%d->%d) with return code %d"

    .line 533
    invoke-static {v2, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_33
    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 383
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 386
    :cond_a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageHistorySize(I)Z
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0xfa

    if-ge p1, v1, :cond_6

    return v0

    .line 787
    :cond_6
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 789
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 790
    :try_start_e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    if-ge p1, v3, :cond_27

    .line 791
    :goto_16
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    sub-int/2addr v3, p1

    if-ge v0, v3, :cond_27

    .line 792
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 796
    :cond_27
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 797
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 798
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :catchall_31
    move-exception p0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setOption(IZ)V
    .registers 6
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 370
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 371
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setOption: [flag:%d, enabled:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetOption(IZ)V

    return-void
.end method
