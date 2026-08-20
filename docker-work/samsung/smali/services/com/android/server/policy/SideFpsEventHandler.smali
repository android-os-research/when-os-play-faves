.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"


# static fields
.field public static final DEBOUNCE_DELAY_MILLIS:I = 0x1f4


# instance fields
.field public mBiometricState:I

.field public final mContext:Landroid/content/Context;

.field public mDialog:Landroid/app/Dialog;

.field public final mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public final mDialogSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$fH7hPQkY3fiIR82_41-rzgJY7Dc(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$showConfirmDialog$2(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h484Xt8W_Hnfldvyndgac2XgE40(Landroid/content/DialogInterface;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$showConfirmDialog$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pgsGnyzJyhQ5wxh4oXVOBGo_WhU(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 1

    invoke-static {p0}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$1(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w8Y_QVkMEmmYt4yn48du9UsG14M(Lcom/android/server/policy/SideFpsEventHandler;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/app/Dialog;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Landroid/app/Dialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .registers 5

    .line 73
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Ljava/util/function/Supplier;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/os/PowerManager;",
            "Ljava/util/function/Supplier<",
            "Landroid/app/AlertDialog$Builder;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 79
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 82
    iput-object p4, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogSupplier:Ljava/util/function/Supplier;

    const/4 p2, 0x0

    .line 83
    iput p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    .line 84
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.SCREEN_OFF"

    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;)V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Landroid/app/Dialog;

    :cond_7
    return-void
.end method

.method public static synthetic lambda$new$1(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 2

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic lambda$showConfirmDialog$2(Landroid/os/PowerManager;JLandroid/content/DialogInterface;I)V
    .registers 5

    .line 154
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p3, 0x4

    const/4 p4, 0x0

    .line 155
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public static synthetic lambda$showConfirmDialog$3(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 161
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static showConfirmDialog(Landroid/app/AlertDialog$Builder;Landroid/os/PowerManager;JILandroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_5

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    if-eqz v1, :cond_c

    const p4, 0x104056e

    goto :goto_f

    :cond_c
    const p4, 0x104056a

    :goto_f
    if-eqz v1, :cond_15

    const v2, 0x104056b

    goto :goto_18

    :cond_15
    const v2, 0x1040567

    :goto_18
    if-eqz v1, :cond_1e

    const v3, 0x104056d

    goto :goto_21

    :cond_1e
    const v3, 0x1040569

    :goto_21
    if-eqz v1, :cond_27

    const v1, 0x104056c

    goto :goto_2a

    :cond_27
    const v1, 0x1040568

    .line 150
    :goto_2a
    invoke-virtual {p0, p4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 151
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p4, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;-><init>(Landroid/os/PowerManager;J)V

    .line 152
    invoke-virtual {p0, v3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda3;-><init>()V

    .line 161
    invoke-virtual {p0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0, p5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7e1

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method


# virtual methods
.method public onFingerprintSensorReady()V
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 184
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 186
    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    return-void
.end method

.method public onSinglePressDetected(J)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method
