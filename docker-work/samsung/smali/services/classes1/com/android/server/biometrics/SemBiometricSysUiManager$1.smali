.class public Lcom/android/server/biometrics/SemBiometricSysUiManager$1;
.super Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;
.source "SemBiometricSysUiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBiometricSysUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;


# direct methods
.method public static synthetic $r8$lambda$7BK08Fh_jAk2ITfVj-K8buGqRyk(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onSysUiDismissed$1(II[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$SyoyJ8op5SCHbcZYn8_B_um8PUY(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onError$0(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vy_ZypAhtdW8dZYE5-GrrIqjU_8(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->lambda$onEvent$2(III)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/SemBiometricSysUiManager;)V
    .registers 2

    .line 558
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onError$0(III)V
    .registers 4

    .line 573
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiErrorEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method private synthetic lambda$onEvent$2(III)V
    .registers 4

    .line 589
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;III)V

    return-void
.end method

.method private synthetic lambda$onSysUiDismissed$1(II[B)V
    .registers 4

    .line 581
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiDismissedEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II[B)V

    return-void
.end method


# virtual methods
.method public onError(III)V
    .registers 6

    .line 570
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEvent(III)V
    .registers 6

    .line 586
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_29

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_29
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSysUiDismissed(II[B)V
    .registers 6

    .line 578
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSysUiDismissed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_23
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {v0}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/SemBiometricSysUiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBiometricSysUiManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricSysUiManager$1;II[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(II)V
    .registers 5

    .line 562
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricSysUiManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_23
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricSysUiManager$1;->this$0:Lcom/android/server/biometrics/SemBiometricSysUiManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricSysUiManager;->-$$Nest$mnotifySysUiTouchEvent(Lcom/android/server/biometrics/SemBiometricSysUiManager;II)V

    return-void
.end method
