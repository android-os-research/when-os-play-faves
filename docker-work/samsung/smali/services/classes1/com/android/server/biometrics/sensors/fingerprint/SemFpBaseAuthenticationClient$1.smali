.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;
.super Ljava/lang/Object;
.source "SemFpBaseAuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsSysUiImpl$SysUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->initForUdfps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;)V
    .registers 2

    .line 341
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSysUiDismissed()V
    .registers 1

    .line 344
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onUserCanceled()V

    return-void
.end method

.method public onSysUiError(II)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_8

    if-ne p2, v1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    if-eqz p1, :cond_21

    .line 352
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->isKeyguard()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 353
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/16 p2, 0x8

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$fputmErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V

    .line 354
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/16 p2, 0x1388

    invoke-static {p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->-$$Nest$fputmVendorErrorEscrow(Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;I)V

    .line 356
    :cond_21
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->wasAuthAttempted()Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 357
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->cancel()V

    goto :goto_35

    .line 359
    :cond_2f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpBaseAuthenticationClient;->onError(II)V

    :goto_35
    return-void
.end method
