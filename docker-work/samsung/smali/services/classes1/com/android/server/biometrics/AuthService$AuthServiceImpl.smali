.class public final Lcom/android/server/biometrics/AuthService$AuthServiceImpl;
.super Landroid/hardware/biometrics/IAuthService$Stub;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AuthServiceImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/AuthService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/AuthService;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IAuthService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthService;Lcom/android/server/biometrics/AuthService$AuthServiceImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;-><init>(Lcom/android/server/biometrics/AuthService;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "authenticate: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] from pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 242
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    if-ne v4, v1, :cond_37

    .line 244
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_58

    .line 246
    :cond_37
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "User "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is requesting authentication of userid: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 251
    :goto_58
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    const-string v2, "authenticate()"

    invoke-static {v1, v3, v6, v2}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckAppOps(Lcom/android/server/biometrics/AuthService;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v8, -0x1

    if-nez v1, :cond_79

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Denied by app ops: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v8

    :cond_79
    if-eqz p1, :cond_f2

    if-eqz v5, :cond_f2

    if-eqz v6, :cond_f2

    if-nez p7, :cond_83

    goto/16 :goto_f2

    .line 262
    :cond_83
    invoke-static {v3, v7}, Lcom/android/server/biometrics/Utils;->isForeground(II)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not foreground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v8

    .line 267
    :cond_9e
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->containsTestConfigurations()Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 268
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.TEST_BIOMETRIC"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_b7

    .line 270
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 275
    :cond_b7
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->containsPrivateApiConfigurations()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 276
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 280
    :cond_c2
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->semGetPrivilegedFlag()I

    move-result v1

    if-nez v1, :cond_ce

    .line 281
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->semGetBiometricType()I

    move-result v1

    if-eqz v1, :cond_d3

    .line 282
    :cond_ce
    iget-object v1, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPrivilegedPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 286
    :cond_d3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 288
    :try_start_d7
    iget-object v0, v0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/hardware/biometrics/IBiometricService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J

    move-result-wide v0
    :try_end_e9
    .catchall {:try_start_d7 .. :try_end_e9} :catchall_ed

    .line 291
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v0

    :catchall_ed
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    throw v0

    :cond_f2
    :goto_f2
    const-string v1, "Unable to authenticate, one or more null arguments"

    .line 257
    invoke-virtual {p0, v1, p5}, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V

    return-wide v8
.end method

.method public final authenticateFastFail(Ljava/lang/String;Landroid/hardware/biometrics/IBiometricServiceReceiver;)V
    .registers 4

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "authenticateFastFail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x5

    const/4 v0, 0x0

    .line 300
    :try_start_18
    invoke-interface {p2, v0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(III)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_22

    :catch_1c
    move-exception p0

    const-string p2, "authenticateFastFail failed to notify caller"

    .line 302
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method

.method public canAuthenticate(Ljava/lang/String;II)I
    .registers 9
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_c

    .line 335
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 337
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 340
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 342
    :try_start_15
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->canAuthenticate(Ljava/lang/String;III)I

    move-result p0

    const-string p1, "AuthService"

    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canAuthenticate, userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callingUserId: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", authenticators: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_15 .. :try_end_4d} :catchall_51

    .line 351
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_51
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelAuthentication: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    if-eqz p1, :cond_43

    if-nez p2, :cond_2d

    goto :goto_43

    .line 319
    :cond_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 321
    :try_start_31
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/IBiometricService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_3e

    .line 323
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    throw p0

    :cond_43
    :goto_43
    const-string p0, "Unable to cancel authentication, one or more null arguments"

    .line 315
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createTestSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AuthService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 202
    :try_start_25
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    .line 203
    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_37

    .line 205
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_37
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    throw p0
.end method

.method public getAuthenticatorIds(I)[J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_13

    .line 413
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have android.permission.USE_BIOMETRIC_INTERNAL permission."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 418
    :try_start_17
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getAuthenticatorIds(I)[J

    move-result-object p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_25
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    throw p0
.end method

.method public getButtonLabel(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 448
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 450
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 453
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 455
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 456
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result p1

    .line 460
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result p1

    if-eqz p1, :cond_67

    const/4 p2, 0x1

    if-eq p1, p2, :cond_59

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_3d

    .line 474
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104024e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    .line 471
    :cond_3d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10404f7

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    .line 468
    :cond_4b
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104052f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_68

    .line 465
    :cond_59
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040bfe

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_66
    .catchall {:try_start_15 .. :try_end_66} :catchall_6c

    goto :goto_68

    :cond_67
    const/4 p0, 0x0

    .line 480
    :goto_68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_6c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 481
    throw p0
.end method

.method public getPromptMessage(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 491
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p1, v0, :cond_c

    .line 494
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 496
    :cond_c
    iget-object v1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 499
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 501
    :try_start_15
    iget-object v3, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v3}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v3

    .line 502
    invoke-interface {v3, p2, p1, v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getCurrentModality(Ljava/lang/String;III)I

    move-result p1

    .line 505
    invoke-static {p3}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result p2

    .line 508
    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$smgetCredentialBackupModality(I)I

    move-result p1

    if-eqz p1, :cond_9b

    const/4 p3, 0x1

    if-eq p1, p3, :cond_8d

    const/4 p3, 0x2

    if-eq p1, p3, :cond_6f

    const/16 p3, 0x8

    if-eq p1, p3, :cond_51

    if-eqz p2, :cond_43

    .line 539
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040258

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    .line 542
    :cond_43
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104024f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    :cond_51
    if-eqz p2, :cond_61

    .line 530
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x104050b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    .line 533
    :cond_61
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x10404fa

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    :cond_6f
    if-eqz p2, :cond_7f

    .line 520
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040542

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    .line 523
    :cond_7f
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040531

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_9c

    .line 514
    :cond_8d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x1040bff

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9a
    .catchall {:try_start_15 .. :try_end_9a} :catchall_a0

    goto :goto_9c

    :cond_9b
    const/4 p0, 0x0

    .line 550
    :goto_9c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_a0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    throw p0
.end method

.method public getSensorProperties(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 218
    :try_start_f
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmInjector(Lcom/android/server/biometrics/AuthService;)Lcom/android/server/biometrics/AuthService$Injector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/AuthService$Injector;->getBiometricService()Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/hardware/biometrics/IBiometricService;->getSensorProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_21

    .line 220
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_21
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    throw p0
.end method

.method public getSettingName(ILjava/lang/String;I)Ljava/lang/CharSequence;
    .registers 8
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 564
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    goto :goto_11

    .line 566
    :cond_c
    iget-object p1, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p1}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 569
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 571
    :try_start_15
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v0

    .line 572
    invoke-interface {v0, p3}, Landroid/hardware/biometrics/IBiometricService;->getSupportedModalities(I)I

    move-result p3

    if-eqz p3, :cond_a5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_97

    const/4 v0, 0x2

    if-eq p3, v0, :cond_89

    const/4 v1, 0x4

    const v2, 0x104024e

    if-eq p3, v1, :cond_7e

    const/16 v1, 0x8

    if-eq p3, v1, :cond_70

    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_40

    .line 597
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    :cond_40
    and-int/lit8 p3, p3, -0x2

    if-ne p3, v0, :cond_52

    .line 603
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040541

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    :cond_52
    if-ne p3, v1, :cond_62

    .line 607
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x104050a

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 611
    :cond_62
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040257

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 590
    :cond_70
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x10404f7

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 584
    :cond_7e
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 587
    :cond_89
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x104052f

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_a6

    .line 581
    :cond_97
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const p3, 0x1040bfe

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_a4
    .catchall {:try_start_15 .. :try_end_a4} :catchall_aa

    goto :goto_a6

    :cond_a5
    const/4 p0, 0x0

    .line 619
    :goto_a6
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_aa
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 620
    throw p0
.end method

.method public getUiPackage()Ljava/lang/String;
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TEST_BIOMETRIC"

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10402fa

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/hardware/biometrics/IBiometricService;->hasEnrolledBiometrics(ILjava/lang/String;)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw p0
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/hardware/biometrics/IBiometricService;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw p0
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 371
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 372
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 374
    :try_start_d
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/hardware/biometrics/IBiometricService;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    .line 376
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw p0
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {v0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/AuthService;)V

    .line 429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 431
    :try_start_9
    iget-object p0, p0, Lcom/android/server/biometrics/AuthService$AuthServiceImpl;->this$0:Lcom/android/server/biometrics/AuthService;

    invoke-static {p0}, Lcom/android/server/biometrics/AuthService;->-$$Nest$fgetmBiometricService(Lcom/android/server/biometrics/AuthService;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/hardware/biometrics/IBiometricService;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1b

    .line 434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    throw p0
.end method
