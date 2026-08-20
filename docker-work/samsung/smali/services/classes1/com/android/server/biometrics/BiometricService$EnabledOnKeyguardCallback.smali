.class public final Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;
.super Ljava/lang/Object;
.source "BiometricService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "EnabledOnKeyguardCallback"
.end annotation


# instance fields
.field public final mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 3

    .line 430
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 433
    :try_start_7
    invoke-interface {p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "BiometricService"

    const-string p2, "Unable to linkToDeath"

    .line 435
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const-string v0, "BiometricService"

    const-string v1, "Enabled callback binder died"

    .line 452
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public notify(ZI)V
    .registers 5

    const-string v0, "BiometricService"

    .line 441
    :try_start_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->mCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-interface {v1, p1, p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_7} :catch_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    goto :goto_1e

    :catch_8
    move-exception p0

    const-string p1, "Failed to invoke onChanged"

    .line 446
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e

    :catch_f
    move-exception p1

    const-string p2, "Death while invoking notify"

    .line 443
    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1e
    return-void
.end method
