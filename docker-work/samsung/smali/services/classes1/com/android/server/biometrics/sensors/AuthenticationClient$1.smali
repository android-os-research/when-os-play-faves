.class public Lcom/android/server/biometrics/sensors/AuthenticationClient$1;
.super Ljava/lang/Object;
.source "AuthenticationClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/CoexCoordinator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/AuthenticationClient;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

.field public final synthetic val$byteToken:[B

.field public final synthetic val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

.field public final synthetic val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/AuthenticationClient;[BLcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .registers 5

    .line 269
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iput-object p3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iput-object p4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLifecycleAfterAuth()V
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void
.end method

.method public sendAuthenticationCanceled()V
    .registers 2

    .line 321
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    invoke-static {v0, p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$msendCancelOnly(Lcom/android/server/biometrics/sensors/AuthenticationClient;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    return-void
.end method

.method public sendAuthenticationResult(Z)V
    .registers 9

    const-string v0, "Biometrics/AuthenticationClient"

    if-eqz p1, :cond_2b

    .line 272
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 273
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    invoke-virtual {p1, v1}, Landroid/security/KeyStore;->addAuthToken([B)I

    move-result p1

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAuthToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_2b
    const-string p1, "Skipping addAuthToken"

    .line 276
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_30
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    if-eqz p1, :cond_83

    .line 283
    :try_start_34
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsRestricted(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result p1

    if-eqz p1, :cond_60

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmPromptPrivilegedFlags(Lcom/android/server/biometrics/sensors/AuthenticationClient;)I

    move-result p1

    if-eqz p1, :cond_45

    goto :goto_60

    .line 290
    :cond_45
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 293
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v6

    .line 290
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_88

    .line 284
    :cond_60
    :goto_60
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$listener:Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$identifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->val$byteToken:[B

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 287
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient$1;->this$0:Lcom/android/server/biometrics/sensors/AuthenticationClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->-$$Nest$fgetmIsStrongBiometric(Lcom/android/server/biometrics/sensors/AuthenticationClient;)Z

    move-result v6

    .line 284
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_7b
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_7b} :catch_7c

    goto :goto_88

    :catch_7c
    move-exception p0

    const-string p1, "Unable to notify listener"

    .line 297
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_88

    :cond_83
    const-string p0, "Client not listening"

    .line 300
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-void
.end method

.method public sendHapticFeedback()V
    .registers 1

    return-void
.end method
