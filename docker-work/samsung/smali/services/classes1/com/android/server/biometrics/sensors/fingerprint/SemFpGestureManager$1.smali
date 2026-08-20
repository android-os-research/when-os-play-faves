.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;
.super Landroid/app/SynchronousUserSwitchObserver;
.source "SemFpGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->registerUserSwitchObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;


# direct methods
.method public static synthetic $r8$lambda$OvvyBEREpXUueN0PfvAIqndXuiY(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->lambda$onUserSwitching$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$hLoox7i1y223LFSi05gLlwxQyHs(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->lambda$onUserSwitchComplete$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-direct {p0}, Landroid/app/SynchronousUserSwitchObserver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onUserSwitchComplete$1(I)V
    .registers 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitchComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FingerprintService.Gesture"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mupdateGestureSettingValue(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    .line 305
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$fgetmIsEnabledGestureMainSetting(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 306
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mturnOnGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    :cond_29
    return-void
.end method

.method private synthetic lambda$onUserSwitching$0()V
    .registers 1

    .line 297
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$mturnOffGestureMode(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .registers 4

    .line 302
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserSwitching(I)V
    .registers 3

    .line 297
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;->-$$Nest$fgetmH(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpGestureManager$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
