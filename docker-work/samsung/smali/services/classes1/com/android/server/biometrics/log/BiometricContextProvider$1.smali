.class public Lcom/android/server/biometrics/log/BiometricContextProvider$1;
.super Landroid/hardware/biometrics/IBiometricContextListener$Stub;
.source "BiometricContextProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

.field public final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$MWW83ZCAy4S9E3iXr6ZwRlQhBqc(Lcom/android/server/biometrics/log/BiometricContextProvider$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->lambda$notifyChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;Landroid/os/Handler;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    iput-object p2, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricContextListener$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$notifyChanged$0()V
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$mnotifySubscribers(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    return-void
.end method


# virtual methods
.method public final notifyChanged()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 95
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_12

    .line 97
    :cond_d
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$mnotifySubscribers(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    :goto_12
    return-void
.end method

.method public onDozeChanged(Z)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fputmIsDozing(Lcom/android/server/biometrics/log/BiometricContextProvider;Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->notifyChanged()V

    return-void
.end method
