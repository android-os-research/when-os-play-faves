.class public Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field public final mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public final mOnStartFinished:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public static synthetic $r8$lambda$CCQiwfp2PGPBhxvTh_LyQ8HNctE(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService$Lifecycle;->lambda$onUserSwitching$2(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxV7IL0QHEjIgNnhuBbpakF4-Bg(Lcom/android/server/usb/UsbService$Lifecycle;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbService$Lifecycle;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qmdad0vVWvbdnrgHDwubUuyX8fQ(Lcom/android/server/usb/UsbService$Lifecycle;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbService$Lifecycle;->lambda$onBootPhase$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    .line 105
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method private synthetic lambda$onBootPhase$1()V
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    .line 128
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .registers 3

    .line 115
    new-instance v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    const-string/jumbo v1, "usb"

    .line 116
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 117
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnStartFinished:Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onUserSwitching$2(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbService;->-$$Nest$monSwitchUser(Lcom/android/server/usb/UsbService;I)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    const-string v0, "UsbService"

    const/16 v1, 0x226

    if-ne p1, v1, :cond_16

    const-string p1, "UsbService -> SystemService.PHASE_ACTIVITY_MANAGER_READY"

    .line 124
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance p1, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;)V

    const-string p0, "UsbService$Lifecycle#onBootPhase"

    invoke-static {p1, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_29

    :cond_16
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_29

    const-string p1, "UsbService -> SystemService.PHASE_BOOT_COMPLETED"

    .line 131
    invoke-static {v0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mOnActivityManagerPhaseFinished:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    .line 133
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->bootCompleted()V

    :cond_29
    :goto_29
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 114
    new-instance v0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;)V

    const-string p0, "UsbService$Lifecycle#onStart"

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbService;->-$$Nest$monStopUser(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 139
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 150
    iget-object p0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbService;->onUnlockUser(I)V

    return-void
.end method
