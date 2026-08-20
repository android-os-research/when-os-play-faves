.class public Lcom/android/server/desktopmode/UiManager;
.super Ljava/lang/Object;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/UiManager$InternalUiCallback;,
        Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;,
        Lcom/android/server/desktopmode/UiManager$UiCommandHandler;
    }
.end annotation


# static fields
.field public static final BACKOFF_MILLIS:J = 0x3e8L

.field public static final DEFERRED_CALLBACK_MILLIS:J = 0x1388L

.field public static final MAX_BACKOFF_MILLIS:J = 0x927c0L

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBindServiceRunnable:Ljava/lang/Runnable;

.field public mBound:Z

.field public mChangingStandaloneMode:Z

.field public mConnectionBackoffAttempts:I

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDeferredConnectionCallback:Ljava/lang/Runnable;

.field public final mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

.field public final mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

.field public mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

.field public final mServiceConnection:Landroid/content/ServiceConnection;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public final mUnbindServiceRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$3q4W2c2C4TO47uJMRCwVsDUKWB4(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    return-void
.end method

.method public static synthetic $r8$lambda$4dfXb2i5dgPXaVCYqlkcm-AO4TI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$showNavBarIcon$17(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4lFeIRfbImo4EyPSOM5PhMs6IS8(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleNavBarIcon$18(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AN8Pgl7juWN_FGb8p8C7CPJXMos(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleStartActivity$24(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ChMJt-C8adODg57lAr0N0ZneROo(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showOverlay$7(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EFt0H7Dkc8mNwXaQjWlpf86h1ig(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowDialog$4(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HITdlGP-b58XtG2gyi5L3O1qEvE(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showDialog$3(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HOovWt10SJttCY0Foe8x3O9tBhI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$removeNavBarIcon$20(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hhm8sggZFwNgVtTqqoHF7e3yPWo(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleNavBarIcon$19(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HljO72uRnOXbAuR40n6eZLJJNkM(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$IY0-FdnxzHGU1MiEyYGl6e0FcOs(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$finishActivity$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LpfRWzIzDUY4kEQf8-oMINe8bbM(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$startActivity$23(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NH4yAi8CCxPCu5Iz3Gp_IJsFdxI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$PND6_2mD6s4-uaSNSVmI4gBWi9Q(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNavBarIcon$21(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q_NPQWSOeHUCAhr_lcrhy6NNB1k(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNavBarIcon$22(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VKgV5YfNeNc4chbuO8aEUcpN3YE(Lcom/android/server/desktopmode/UiManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->lambda$dismissDialog$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBgFor2YJbSKwsWYSiIBTIWiGVk(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$showNotification$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Yy5uArzzvabMchKt_2Va3vcE7M(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNotification$15(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gvda1Z1JbE6-dYr4HMbkTenRJSo(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleRemoveNotification$16(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h9Puf9kcVtXs6S3HOaqf0X2q2-s(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$showDialogOnUiService$5(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hITxF3bq-DePIy0BiHTev1ujzXo(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowOverlay$8(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jT2_e0gpCcrebEE2QGnE8sgc0sI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$removeNotification$14(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rP49qF19Kjn1Dg5BuT_iJJ6h7iI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$setCurrentUserId$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6XFN009pfr6zyjfLp__o02YQvI(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$w5YoqVmvb3liXpnQFvRCi021tcM(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindServiceIfHasNoUiElement()V

    return-void
.end method

.method public static synthetic $r8$lambda$wYtY6cAD7JFAJsgGWuFhJaUytvI(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$yVV0TMepI7AWlTpJH-wv5nUBa-8(Lcom/android/server/desktopmode/UiManager;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->lambda$dismissOverlay$9(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$zYUU_nuH2OF-m2ff4pVn9FxXc-s(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/UiManager;->lambda$handleShowNotification$13(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeathRecipient(Lcom/android/server/desktopmode/UiManager;)Landroid/os/IBinder$DeathRecipient;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeferredConnectionCallback(Lcom/android/server/desktopmode/UiManager;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/UiManager$UiCommandHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingUiCommands(Lcom/android/server/desktopmode/UiManager;)Lcom/android/server/desktopmode/PendingUiCommands;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/desktopmode/UiManager;)Lcom/samsung/android/desktopmode/IDesktopModeUiService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmConnectionBackoffAttempts(Lcom/android/server/desktopmode/UiManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/desktopmode/UiManager;Lcom/samsung/android/desktopmode/IDesktopModeUiService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostUnbindServiceRunnable(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mretryConnectionWithBackoff(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindService(Lcom/android/server/desktopmode/UiManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/desktopmode/IStateManager;)V
    .registers 6

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    .line 62
    new-instance v0, Lcom/android/server/desktopmode/UiManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$1;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 109
    new-instance v0, Lcom/android/server/desktopmode/UiManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$2;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    const/4 v1, 0x0

    .line 118
    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    .line 119
    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    const/16 v1, -0x2710

    .line 120
    iput v1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 123
    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    .line 124
    new-instance p1, Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-direct {p1}, Lcom/android/server/desktopmode/PendingUiCommands;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    .line 125
    new-instance p1, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    .line 126
    iput-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 127
    invoke-interface {p3, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 128
    new-instance p1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private synthetic lambda$dismissDialog$6(II)V
    .registers 3

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissDialog(II)V

    return-void
.end method

.method private synthetic lambda$dismissOverlay$9(II)V
    .registers 3

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->handleDismissOverlay(II)V

    return-void
.end method

.method private synthetic lambda$finishActivity$25(I)V
    .registers 2

    .line 630
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleFinishActivity(I)V

    return-void
.end method

.method private synthetic lambda$handleNavBarIcon$18(I)V
    .registers 2

    .line 533
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleNavBarIcon$19(I)V
    .registers 2

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNavBarIcon$21(I)V
    .registers 2

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNavBarIcon$22(I)V
    .registers 2

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNotification$15(I)V
    .registers 2

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleRemoveNotification$16(I)V
    .registers 2

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowDialog$4(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 240
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$11(I)V
    .registers 2

    .line 480
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$12(I)V
    .registers 2

    .line 486
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowNotification$13(I)V
    .registers 2

    .line 496
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$handleShowOverlay$8(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 388
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$handleStartActivity$24(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 579
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    .line 58
    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder supposed established connection but actual connection to service timed out, trying again"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 3

    .line 129
    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Binder died, reconnecting"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$removeNavBarIcon$20(I)V
    .registers 2

    .line 548
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$removeNotification$14(I)V
    .registers 2

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoveNotification(I)V

    return-void
.end method

.method private synthetic lambda$setCurrentUserId$2(I)V
    .registers 3

    .line 136
    iget v0, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    if-eq v0, p1, :cond_12

    .line 137
    iput p1, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 138
    iget-object p1, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p1}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    .line 139
    iget-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-eqz p1, :cond_12

    .line 140
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    :cond_12
    return-void
.end method

.method private synthetic lambda$showDialog$3(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$showDialogOnUiService$5(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 343
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$showNavBarIcon$17(I)V
    .registers 2

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleNavBarIcon(I)V

    return-void
.end method

.method private synthetic lambda$showNotification$10(I)V
    .registers 2

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleShowNotification(I)V

    return-void
.end method

.method private synthetic lambda$showOverlay$7(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 380
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method private synthetic lambda$startActivity$23(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    .line 572
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager;->handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method


# virtual methods
.method public final bindService()V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 168
    :cond_b
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService(), mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    .line 171
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.desktopmode.uiservice"

    const-string v2, "com.sec.android.desktopmode.uiservice.DesktopModeUiService"

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    :try_start_41
    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/desktopmode/UiManager;->mCurrentUserId:I

    .line 177
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 176
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-eqz v0, :cond_5e

    .line 180
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mDeferredConnectionCallback:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6a

    .line 183
    :cond_5e
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->retryConnectionWithBackoff()V
    :try_end_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_61} :catch_62

    goto :goto_6a

    :catch_62
    move-exception p0

    .line 186
    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to bind service"

    invoke-static {v0, v1, p0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6a
    return-void
.end method

.method public final bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z
    .registers 6

    .line 154
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 157
    :cond_6
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->bindService()V

    const/4 p0, 0x0

    return p0
.end method

.method public bindUiServiceWithPendingCommand(Ljava/lang/Runnable;)Z
    .registers 4

    const/16 v0, 0x384

    const/4 v1, -0x1

    .line 148
    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public dismissDialog(I)V
    .registers 3

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0, p1}, Lcom/android/server/desktopmode/UiManager;->dismissDialog(II)V

    return-void
.end method

.method public dismissDialog(II)V
    .registers 6

    .line 353
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_26
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public dismissOverlay(II)V
    .registers 6

    .line 426
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_2a
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/desktopmode/UiManager;II)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/UiManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "external overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "internal overlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentOverlayType(I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public finishActivity(I)V
    .registers 5

    .line 629
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishActivity(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_1e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentOverlayType(I)I
    .registers 5

    .line 459
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentOverlayType(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_2b

    .line 462
    :try_start_22
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->getCurrentOverlayType(I)I

    move-result p0
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_26} :catch_27

    return p0

    :catch_27
    move-exception p1

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_2b
    const/4 p0, -0x1

    return p0
.end method

.method public final handleDismissDialog(II)V
    .registers 6

    .line 359
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDismissDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_27
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_33

    .line 363
    :try_start_2b
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissDialog(II)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception v0

    .line 365
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 368
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/16 v1, 0x385

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleDismissOverlay(II)V
    .registers 6

    .line 432
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDismissOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_2b
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_37

    .line 436
    :try_start_2f
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->dismissOverlay(II)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception v0

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 441
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/16 v1, 0x385

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 442
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleFinishActivity(I)V
    .registers 6

    .line 634
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleFinishActivity(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_1f
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_2b

    .line 638
    :try_start_23
    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->finishActivity(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception v0

    .line 640
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 643
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    const/16 v1, 0x385

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 644
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V

    return-void
.end method

.method public final handleNavBarIcon(I)V
    .registers 10

    .line 530
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v0, 0x384

    const/4 v1, -0x1

    .line 532
    new-instance v2, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 538
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNavBarIcon(I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_34

    goto :goto_44

    :catch_34
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x384

    const/4 v6, -0x1

    .line 540
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_44
    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 693
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    return-void
.end method

.method public final handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V
    .registers 10

    .line 698
    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoteException(), preserve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_49

    if-eqz p6, :cond_49

    .line 700
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_44

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "handleRemoteException(), adding pending commands, type="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-static {p4}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", where="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 700
    invoke-static {v0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_44
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    :cond_49
    return-void
.end method

.method public final handleRemoveNavBarIcon(I)V
    .registers 10

    .line 552
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoveNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v0, 0x385

    const/4 v1, -0x1

    .line 554
    new-instance v2, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 560
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNavBarIcon(I)V

    .line 561
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_47

    :catch_37
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x385

    const/4 v6, -0x1

    .line 563
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda25;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_47
    return-void
.end method

.method public final handleRemoveNotification(I)V
    .registers 10

    .line 507
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleRemoveNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/16 v0, 0x385

    const/4 v1, -0x1

    .line 509
    new-instance v2, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 515
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->removeNotification(I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->postUnbindServiceRunnable()V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_36} :catch_37

    goto :goto_47

    :catch_37
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x385

    const/4 v6, -0x1

    .line 518
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda21;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_47
    return-void
.end method

.method public final handleShowDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 8

    .line 237
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const-string v1, ", dialogType="

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleShowDialog(), displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_27
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v2, 0x384

    .line 241
    invoke-virtual {p0, v2, p2, p1, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v3

    if-nez v3, :cond_35

    return-void

    .line 245
    :cond_35
    iget-boolean v3, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v3, :cond_60

    .line 246
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0, v2, p2, p1, v0}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 247
    sget-object p0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "showDialog() mChangingStandaloneMode!! displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_60
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_90

    .line 328
    :pswitch_64
    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showDialog() wrong type value!! dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 259
    :pswitch_80
    new-instance v0, Lcom/android/server/desktopmode/UiManager$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$3;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    goto :goto_8b

    .line 303
    :pswitch_86
    new-instance v0, Lcom/android/server/desktopmode/UiManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/UiManager$4;-><init>(Lcom/android/server/desktopmode/UiManager;)V

    .line 332
    :goto_8b
    :pswitch_8b
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/UiManager;->showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V

    return-void

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8b
        :pswitch_8b
        :pswitch_86
        :pswitch_80
        :pswitch_80
        :pswitch_64
        :pswitch_8b
        :pswitch_80
        :pswitch_8b
        :pswitch_80
    .end packed-switch
.end method

.method public final handleShowNotification(I)V
    .registers 10

    .line 477
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1f
    new-instance v0, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    const/16 v1, 0x384

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_2e

    return-void

    .line 484
    :cond_2e
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eqz v0, :cond_58

    .line 485
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    new-instance v3, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/server/desktopmode/PendingUiCommands;->queue(IIILjava/lang/Runnable;)V

    .line 487
    sget-object p0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleShowNotification(), mChangingStandaloneMode!!type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 493
    :cond_58
    :try_start_58
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0, p1}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showNotification(I)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_6e

    :catch_5e
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x384

    const/4 v6, -0x1

    .line 495
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda19;

    invoke-direct {v7, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_6e
    return-void
.end method

.method public final handleShowOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 13

    .line 385
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleShowOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2b
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda26;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v0, 0x384

    .line 389
    invoke-virtual {p0, v0, p2, p1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_39

    return-void

    :cond_39
    const/4 v0, 0x0

    if-eqz p3, :cond_41

    .line 395
    new-instance v0, Lcom/android/server/desktopmode/UiManager$5;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$5;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 419
    :cond_41
    :try_start_41
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showOverlay(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_47

    goto :goto_52

    :catch_47
    move-exception p1

    move-object v3, p1

    const/4 v4, 0x1

    const/16 v5, 0x384

    const/4 v7, -0x1

    move-object v2, p0

    move v6, p2

    .line 421
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_52
    return-void
.end method

.method public final handleStartActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 13

    .line 576
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStartActivity(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_23
    new-instance v8, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda14;

    invoke-direct {v8, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    const/16 v0, 0x384

    const/4 v1, -0x1

    .line 580
    invoke-virtual {p0, v0, p2, v1, v8}, Lcom/android/server/desktopmode/UiManager;->bindUiServiceWithPendingCommand(IIILjava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_32

    return-void

    .line 584
    :cond_32
    new-instance v0, Lcom/android/server/desktopmode/UiManager$6;

    invoke-direct {v0, p0, p3}, Lcom/android/server/desktopmode/UiManager$6;-><init>(Lcom/android/server/desktopmode/UiManager;Lcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    .line 622
    :try_start_37
    iget-object p3, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->startActivity(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_48

    :catch_3d
    move-exception p1

    move-object v3, p1

    const/4 v4, 0x1

    const/16 v5, 0x384

    const/4 v7, -0x1

    move-object v2, p0

    move v6, p2

    .line 624
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :goto_48
    return-void
.end method

.method public hasOverlay(II)Z
    .registers 6

    .line 446
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hasOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_2b
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_38

    .line 450
    :try_start_2f
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasOverlay(II)Z

    move-result p0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_33} :catch_34

    return p0

    :catch_34
    move-exception p1

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    :cond_38
    const/4 p0, 0x0

    return p0
.end method

.method public final postUnbindServiceRunnable()V
    .registers 4

    .line 652
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-nez v0, :cond_9

    return-void

    .line 655
    :cond_9
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 656
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_37

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    goto :goto_37

    .line 659
    :cond_1f
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "postUnbindServiceRunnable()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 662
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_37
    :goto_37
    return-void
.end method

.method public removeNavBarIcon(I)V
    .registers 5

    .line 546
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 548
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public removeNotification(I)V
    .registers 5

    .line 501
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 503
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final removeUnbindServiceRunnable()V
    .registers 2

    .line 648
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mUnbindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final retryConnectionWithBackoff()V
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 194
    iget v1, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 194
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 196
    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    iget-object v3, p0, Lcom/android/server/desktopmode/UiManager;->mBindServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    iget v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    .line 198
    sget-object v2, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind service on attempt "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/UiManager;->mConnectionBackoffAttempts:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " will try again in "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setChangingStandaloneMode(Z)V
    .registers 5

    .line 683
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    if-eq v0, p1, :cond_28

    .line 684
    iput-boolean p1, p0, Lcom/android/server/desktopmode/UiManager;->mChangingStandaloneMode:Z

    .line 685
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setChangingStandaloneMode(), mChangingStandaloneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-nez p1, :cond_28

    .line 687
    iget-object p0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/PendingUiCommands;->flushCommands()V

    :cond_28
    return-void
.end method

.method public setCurrentUserId(I)V
    .registers 4

    .line 135
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Utils;->runOnHandlerThread(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 7

    .line 228
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialog(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 231
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showDialog(ILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/desktopmode/UiManager;->showDialog(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public final showDialogOnUiService(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;Lcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback$Stub;)V
    .registers 13

    .line 338
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_17

    .line 340
    :try_start_4
    invoke-interface {v0, p1, p2, p4}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->showDialog(IILcom/samsung/android/desktopmode/IDesktopModeUiServiceCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_17

    :catch_8
    move-exception v2

    const/4 v3, 0x1

    const/16 v4, 0x384

    .line 342
    new-instance v7, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    move-object v1, p0

    move v5, p2

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;ZIIILjava/lang/Runnable;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public showNavBarIcon(I)V
    .registers 5

    .line 524
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNavBarIcon(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 526
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showNotification(I)V
    .registers 5

    .line 471
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotification(), type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 473
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/desktopmode/UiManager;I)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public showOverlay(II)V
    .registers 4

    const/4 v0, 0x0

    .line 373
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/desktopmode/UiManager;->showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    return-void
.end method

.method public showOverlay(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 7

    .line 377
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showOverlay(), where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->whereToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 377
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 380
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public startActivity(IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V
    .registers 7

    .line 569
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startActivity(), displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->removeUnbindServiceRunnable()V

    .line 572
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mHandler:Lcom/android/server/desktopmode/UiManager$UiCommandHandler;

    new-instance v1, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/desktopmode/UiManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/desktopmode/UiManager;IILcom/android/server/desktopmode/UiManager$InternalUiCallback;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->schedule(ILjava/lang/Runnable;)V

    return-void
.end method

.method public final unbindService()V
    .registers 4

    .line 203
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-nez v0, :cond_9

    return-void

    .line 206
    :cond_9
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_30

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbindService(), mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 209
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 210
    iput-boolean v1, p0, Lcom/android/server/desktopmode/UiManager;->mBound:Z

    .line 213
    :cond_3e
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    if-eqz v0, :cond_57

    .line 215
    :try_start_42
    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/UiManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4b
    .catch Ljava/util/NoSuchElementException; {:try_start_42 .. :try_end_4b} :catch_4c

    goto :goto_54

    :catch_4c
    move-exception v0

    .line 217
    sget-object v1, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unlink death recipient"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_54
    const/4 v0, 0x0

    .line 219
    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    :cond_57
    return-void
.end method

.method public final unbindServiceIfHasNoUiElement()V
    .registers 5

    .line 667
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 669
    :try_start_5
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mService:Lcom/samsung/android/desktopmode/IDesktopModeUiService;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeUiService;->hasUiElement()Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_13} :catch_18

    if-eqz v0, :cond_1c

    :cond_15
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1c

    :catch_18
    move-exception v0

    .line 671
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager;->handleRemoteException(Landroid/os/RemoteException;)V

    .line 674
    :cond_1c
    :goto_1c
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/server/desktopmode/UiManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbindServiceIfHasNoUiElement(), hasElement="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    if-nez v1, :cond_41

    .line 676
    iget-object v0, p0, Lcom/android/server/desktopmode/UiManager;->mPendingUiCommands:Lcom/android/server/desktopmode/PendingUiCommands;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/PendingUiCommands;->clear()V

    .line 677
    invoke-virtual {p0}, Lcom/android/server/desktopmode/UiManager;->unbindService()V

    :cond_41
    return-void
.end method
