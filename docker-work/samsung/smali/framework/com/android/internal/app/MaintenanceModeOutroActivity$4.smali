.class Lcom/android/internal/app/MaintenanceModeOutroActivity$4;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "MaintenanceModeOutroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MaintenanceModeOutroActivity;->confirmSecureLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/MaintenanceModeOutroActivity;

    .line 220
    iput-object p1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onAuthenticationSucceeded$0$com-android-internal-app-MaintenanceModeOutroActivity$4()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$mexitMaintenanceMode(Lcom/android/internal/app/MaintenanceModeOutroActivity;)V

    .line 234
    return-void
.end method

.method synthetic blacklist lambda$onAuthenticationSucceeded$1$com-android-internal-app-MaintenanceModeOutroActivity$4()V
    .registers 3

    .line 236
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmProgressView(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmExitButton(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 238
    return-void
.end method

.method public whitelist onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 3
    .param p1, "errorCode"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 223
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 224
    return-void
.end method

.method public whitelist onAuthenticationFailed()V
    .registers 1

    .line 243
    invoke-super {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    .line 244
    return-void
.end method

.method public whitelist onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .registers 6
    .param p1, "result"    # Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    .line 229
    invoke-super {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmExitButton(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmWm(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v1}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmProgressView(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v2}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmViewWindowParams(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 235
    iget-object v0, p0, Lcom/android/internal/app/MaintenanceModeOutroActivity$4;->this$0:Lcom/android/internal/app/MaintenanceModeOutroActivity;

    invoke-static {v0}, Lcom/android/internal/app/MaintenanceModeOutroActivity;->-$$Nest$fgetmRootView(Lcom/android/internal/app/MaintenanceModeOutroActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/MaintenanceModeOutroActivity$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/MaintenanceModeOutroActivity$4;)V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    return-void
.end method
