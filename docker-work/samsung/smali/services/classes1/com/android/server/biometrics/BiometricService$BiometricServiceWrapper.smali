.class public final Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;
.super Landroid/hardware/biometrics/IBiometricService$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BiometricServiceWrapper"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method public static synthetic $r8$lambda$5DBri_5h7ojpzNVJ6cAQiVHfTBo(Lcom/android/server/biometrics/BiometricSensor;Lcom/android/server/biometrics/BiometricSensor;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->lambda$registerAuthenticator$3(Lcom/android/server/biometrics/BiometricSensor;Lcom/android/server/biometrics/BiometricSensor;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PXJ39HmAOQ_iQk6UdOH6h3NXZ5w(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->lambda$cancelAuthentication$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$grRwYtYgUJcI8f_4rh_e-gLfMN8(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->lambda$onReadyForAuthentication$0(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$pMOuIP1i438nB-TfouHy3mHYp4U(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->lambda$authenticate$1(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    return-void
.end method

.method private synthetic lambda$authenticate$1(Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V
    .registers 20

    move-object v0, p0

    .line 630
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticate(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method private synthetic lambda$cancelAuthentication$2(J)V
    .registers 3

    .line 645
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleCancelAuthentication(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method private synthetic lambda$onReadyForAuthentication$0(JI)V
    .registers 4

    .line 594
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnReadyForAuthentication(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method public static synthetic lambda$registerAuthenticator$3(Lcom/android/server/biometrics/BiometricSensor;Lcom/android/server/biometrics/BiometricSensor;)I
    .registers 2

    .line 736
    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    iget p1, p1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public authenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)J
    .registers 23

    move-object v1, p0

    move-object/from16 v10, p7

    .line 600
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    if-eqz p1, :cond_70

    if-eqz p5, :cond_70

    if-eqz p6, :cond_70

    if-nez v10, :cond_11

    goto :goto_70

    .line 607
    :cond_11
    invoke-static/range {p7 .. p7}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(Landroid/hardware/biometrics/PromptInfo;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 611
    invoke-static/range {p7 .. p7}, Lcom/android/server/biometrics/Utils;->combineAuthenticatorBundles(Landroid/hardware/biometrics/PromptInfo;)V

    .line 614
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->isUseDefaultTitle()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 615
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/biometrics/PromptInfo;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 623
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040c4c

    .line 624
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {v10, v0}, Landroid/hardware/biometrics/PromptInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 629
    :cond_3a
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmRequestCounter(Lcom/android/server/biometrics/BiometricService;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 630
    iget-object v0, v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-wide v3, v11

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/os/IBinder;JJILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/hardware/biometrics/PromptInfo;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v11

    .line 608
    :cond_68
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid authenticator configuration"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_70
    :goto_70
    const-string v0, "BiometricService"

    const-string v1, "Unable to authenticate, one or more null arguments"

    .line 603
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public canAuthenticate(Ljava/lang/String;III)I
    .registers 7
    .param p4    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 651
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAuthenticate: User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Authenticators="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BiometricService"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-static {p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result p3

    if-eqz p3, :cond_44

    .line 662
    :try_start_31
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 663
    invoke-static {p0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    .line 664
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getCanAuthenticateResult()I

    move-result p0
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3b} :catch_3c

    return p0

    :catch_3c
    move-exception p0

    const-string p1, "Remote exception"

    .line 666
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0

    .line 658
    :cond_44
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid authenticator configuration"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .registers 6

    .line 638
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 640
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 641
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 642
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 643
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 645
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;J)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 563
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 564
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_d

    .line 565
    iget-object p0, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {p0, p2, p3}, Landroid/hardware/biometrics/IBiometricAuthenticator;->createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;

    move-result-object p0

    return-object p0

    .line 569
    :cond_24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown sensor for createTestSession: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 907
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 911
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 913
    :try_start_13
    array-length v0, p3

    if-lez v0, :cond_83

    const-string v0, "--proto"

    const/4 v4, 0x0

    aget-object v5, p3, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 914
    array-length p2, p3

    const/4 v0, 0x1

    if-le p2, v0, :cond_30

    const-string p2, "--clear-scheduler-buffer"

    aget-object p3, p3, v0

    .line 915
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    goto :goto_31

    :cond_30
    move v0, v4

    .line 916
    :goto_31
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ClearSchedulerBuffer: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const-wide v5, 0x10e00000002L

    .line 919
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Lcom/android/server/biometrics/AuthSession;->getState()I

    move-result v4

    .line 918
    :cond_59
    invoke-virtual {p2, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 920
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_64
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    .line 921
    iget-object p1, p1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 922
    invoke-interface {p1, v0}, Landroid/hardware/biometrics/IBiometricAuthenticator;->dumpSensorServiceStateProto(Z)[B

    move-result-object p1

    const-wide v4, 0x20b00000001L

    .line 923
    invoke-virtual {p2, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    goto :goto_64

    .line 925
    :cond_7f
    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto :goto_88

    .line 927
    :cond_83
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mdumpInternal(Lcom/android/server/biometrics/BiometricService;Ljava/io/PrintWriter;)V
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_88} :catch_8e
    .catchall {:try_start_13 .. :try_end_88} :catchall_8c

    .line 932
    :goto_88
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_95

    :catchall_8c
    move-exception p0

    goto :goto_96

    :catch_8e
    move-exception p0

    :try_start_8f
    const-string p1, "Remote exception"

    .line 930
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8f .. :try_end_94} :catchall_8c

    goto :goto_88

    :goto_95
    return-void

    .line 932
    :goto_96
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    throw p0
.end method

.method public getAuthenticatorIds(I)[J
    .registers 11

    const-string v0, "BiometricService"

    .line 764
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/BiometricSensor;

    .line 769
    :try_start_20
    iget-object v4, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 770
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 769
    invoke-interface {v4, p1, v5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v4

    .line 771
    iget-object v5, v3, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v5, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getAuthenticatorId(I)J

    move-result-wide v5

    if-eqz v4, :cond_4c

    .line 772
    invoke-virtual {v3}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v7

    const/16 v8, 0xf

    invoke-static {v7, v8}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 774
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 776
    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sensor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", sensorId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hasEnrollments: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cannot participate in Keystore operations"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_77} :catch_78

    goto :goto_14

    :catch_78
    move-exception v3

    const-string v4, "RemoteException"

    .line 781
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 785
    :cond_7f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [J

    const/4 p1, 0x0

    .line 786
    :goto_86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_9b

    .line 787
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_86

    :cond_9b
    return-object p0
.end method

.method public getCurrentModality(Ljava/lang/String;III)I
    .registers 7
    .param p4    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 854
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentModality: User="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", Authenticators="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BiometricService"

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    invoke-static {p4}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result p3

    if-eqz p3, :cond_4c

    .line 865
    :try_start_31
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 866
    invoke-static {p0, p1, p2, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcreatePreAuthInfo(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;II)Lcom/android/server/biometrics/PreAuthInfo;

    move-result-object p0

    .line 867
    invoke-virtual {p0}, Lcom/android/server/biometrics/PreAuthInfo;->getPreAuthenticateStatus()Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_43} :catch_44

    return p0

    :catch_44
    move-exception p0

    const-string p1, "Remote exception"

    .line 869
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0

    .line 861
    :cond_4c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid authenticator configuration"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentStrength(I)I
    .registers 4

    .line 836
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 838
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 839
    iget v1, v0, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v1, p1, :cond_d

    .line 840
    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result p0

    return p0

    .line 843
    :cond_22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
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

    .line 576
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 582
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    .line 583
    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/biometrics/SensorPropertiesInternal;->from(Landroid/hardware/biometrics/SensorPropertiesInternal;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v1

    .line 584
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_2c
    return-object v0
.end method

.method public getSupportedModalities(I)I
    .registers 5
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    .line 876
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSupportedModalities: Authenticators="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isValidAuthenticatorConfig(I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 885
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isCredentialRequested(I)Z

    move-result v0

    .line 889
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->isBiometricRequested(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 891
    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->getPublicBiometricStrength(I)I

    move-result p1

    .line 894
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 895
    invoke-virtual {v1}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v2

    .line 896
    invoke-static {v2, p1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 897
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    or-int/2addr v0, v1

    goto :goto_38

    :cond_52
    return v0

    .line 881
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid authenticator configuration"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasEnrolledBiometrics(ILjava/lang/String;)Z
    .registers 4

    .line 673
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 676
    :try_start_5
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricSensor;

    .line 677
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricAuthenticator;->hasEnrolledTemplates(ILjava/lang/String;)Z

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_23

    if-eqz v0, :cond_d

    const/4 p0, 0x1

    return p0

    :catch_23
    move-exception p0

    const-string p1, "BiometricService"

    const-string p2, "Remote exception"

    .line 682
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .registers 5

    .line 757
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$InvalidationTracker;->start(Landroid/content/Context;Ljava/util/ArrayList;IILandroid/hardware/biometrics/IInvalidationCallback;)Lcom/android/server/biometrics/BiometricService$InvalidationTracker;

    return-void
.end method

.method public onReadyForAuthentication(JI)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 594
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public declared-synchronized registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .registers 15
    .param p3    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    monitor-enter p0

    .line 692
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    const-string v0, "BiometricService"

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_8f

    const/16 v0, 0xf

    if-eq p3, v0, :cond_43

    const/16 v0, 0xff

    if-eq p3, v0, :cond_43

    const/16 v0, 0xfff

    if-ne p3, v0, :cond_3b

    goto :goto_43

    .line 711
    :cond_3b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unsupported strength"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 714
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/BiometricSensor;

    .line 715
    iget v1, v1, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-eq v1, p1, :cond_5c

    goto :goto_4b

    .line 716
    :cond_5c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot register duplicate authenticator"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 720
    :cond_64
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v1, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v2, v9

    move-object v3, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;-><init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mBiometricStrengthController:Lcom/android/server/biometrics/BiometricStrengthController;

    invoke-virtual {p1}, Lcom/android/server/biometrics/BiometricStrengthController;->updateStrengths()V

    .line 736
    iget-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p1, p1, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_97

    .line 738
    monitor-exit p0

    return-void

    .line 699
    :cond_8f
    :try_start_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authenticator must not be null. Did you forget to modify the core/res/res/values/xml overlay for config_biometric_sensors?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;I)V
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 745
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmEnabledOnKeyguardCallbacks(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    :try_start_15
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getEnabledOnKeyguard(I)Z

    move-result p0

    invoke-interface {p1, p0, p2}, Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;->onChanged(ZI)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_29

    :catch_21
    move-exception p0

    const-string p1, "BiometricService"

    const-string p2, "Remote exception"

    .line 750
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_29
    return-void
.end method

.method public resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V
    .registers 11

    .line 795
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mgetSensorForId(Lcom/android/server/biometrics/BiometricService;I)Lcom/android/server/biometrics/BiometricSensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricSensor;->getCurrentStrength()I

    move-result v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isAtLeastStrength(II)Z

    move-result v0

    const-string v1, "BiometricService"

    if-nez v0, :cond_33

    .line 800
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Sensor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is does not meet the required strength to request resetLockout"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 805
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetLockoutTimeBound: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSensors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_58
    :goto_58
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_be

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/BiometricSensor;

    .line 810
    iget v3, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    if-ne v3, p3, :cond_69

    goto :goto_58

    .line 814
    :cond_69
    :try_start_69
    iget-object v3, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 815
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/hardware/biometrics/IBiometricAuthenticator;->getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v3

    .line 816
    iget-boolean v4, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresHardwareAuthToken:Z

    if-eqz v4, :cond_83

    iget-boolean v3, v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->resetLockoutRequiresChallenge:Z

    if-nez v3, :cond_83

    const/4 v3, 0x1

    goto :goto_84

    :cond_83
    const/4 v3, 0x0

    :goto_84
    xor-int/lit8 v4, v4, 0x1

    if-nez v3, :cond_8a

    if-eqz v4, :cond_58

    .line 822
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resetLockout from: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/biometrics/BiometricSensor;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, v2, Lcom/android/server/biometrics/BiometricSensor;->impl:Landroid/hardware/biometrics/IBiometricAuthenticator;

    invoke-interface {v2, p1, p2, p4, p5}, Landroid/hardware/biometrics/IBiometricAuthenticator;->resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    :try_end_b6
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_b6} :catch_b7

    goto :goto_58

    :catch_b7
    move-exception v2

    const-string v3, "Remote exception"

    .line 829
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :cond_be
    return-void
.end method

.method public semAddFailedAttempt(II)V
    .registers 3

    .line 950
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 951
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->addFailedAttempt(II)V

    return-void
.end method

.method public semGetFailedAttempts(I)I
    .registers 2

    .line 962
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 963
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->getFailedAttempts(I)I

    move-result p0

    return p0
.end method

.method public semGetPromptInfo(I)Landroid/hardware/biometrics/PromptInfo;
    .registers 3

    .line 940
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 941
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthSession:Lcom/android/server/biometrics/AuthSession;

    if-eqz p0, :cond_14

    .line 942
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/AuthSession;->semContainCookie(I)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 943
    iget-object p0, p0, Lcom/android/server/biometrics/AuthSession;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-object p0

    :cond_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public semResetFailedAttempts(II)V
    .registers 3

    .line 956
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mcheckInternalPermission(Lcom/android/server/biometrics/BiometricService;)V

    .line 957
    invoke-static {}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->get()Lcom/android/server/biometrics/SemBiometricLockoutTracker;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBiometricLockoutTracker;->resetFailedAttempts(II)V

    return-void
.end method
