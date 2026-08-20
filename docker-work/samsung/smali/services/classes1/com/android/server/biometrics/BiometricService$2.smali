.class public Lcom/android/server/biometrics/BiometricService$2;
.super Lcom/android/server/biometrics/SemBiometricSysUiReceiver;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;->createSysUiReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public static synthetic $r8$lambda$923Ub56O82vs1v5tiH05WhY7ZXU(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onTryAgainPressed$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$9x7fxog_sDcah_2XFzrPGYEs33g(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDialogAnimatedIn$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$EL6moDBvIcdCiQEWBZBUsvRkcwI(Lcom/android/server/biometrics/BiometricService$2;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onTryAgainPressed$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GBf_3WAnuYN57nRvmGfbdf1yqSA(Lcom/android/server/biometrics/BiometricService$2;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onSystemEvent$3(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$GoyywMddRNtExzREFzIzBfGSvog(Lcom/android/server/biometrics/BiometricService$2;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDeviceCredentialPressed$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ja8KFZmdBI4bIU8sjeZl2x_vk6Y(Lcom/android/server/biometrics/BiometricService$2;JI[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onDialogDismissed$0(JI[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$jmdcez1e2uDvDWO-eSoGAXzMyPE(Lcom/android/server/biometrics/BiometricService$2;JII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$2;->lambda$onSysUiError$6(JII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 4

    .line 503
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    invoke-direct {p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDeviceCredentialPressed$2(J)V
    .registers 3

    .line 517
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDeviceCredentialPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method private synthetic lambda$onDialogAnimatedIn$4(J)V
    .registers 3

    .line 527
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDialogAnimatedIn(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method private synthetic lambda$onDialogDismissed$0(JI[B)V
    .registers 5

    .line 507
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnDismissed(Lcom/android/server/biometrics/BiometricService;JI[B)V

    return-void
.end method

.method private synthetic lambda$onSysUiError$6(JII)V
    .registers 5

    .line 542
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnErrorFromSysUi(Lcom/android/server/biometrics/BiometricService;JII)V

    return-void
.end method

.method private synthetic lambda$onSystemEvent$3(JI)V
    .registers 4

    .line 522
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnSystemEvent(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method private synthetic lambda$onTryAgainPressed$1(J)V
    .registers 3

    .line 512
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnTryAgainPressed(Lcom/android/server/biometrics/BiometricService;J)V

    return-void
.end method

.method private synthetic lambda$onTryAgainPressed$5(I)V
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnSwitchingSensorPressed(Lcom/android/server/biometrics/BiometricService;I)V

    return-void
.end method


# virtual methods
.method public onDeviceCredentialPressed()V
    .registers 5

    .line 517
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDialogAnimatedIn()V
    .registers 5

    .line 527
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDialogDismissed(I[B)V
    .registers 11

    .line 507
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v7, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSysUiError(II)V
    .registers 11

    .line 542
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v7, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$2;JII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSystemEvent(I)V
    .registers 6

    .line 522
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTryAgainPressed()V
    .registers 5

    .line 512
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTryAgainPressed(I)V
    .registers 4

    if-eqz p1, :cond_11

    .line 534
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14

    .line 536
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService$2;->onTryAgainPressed()V

    :goto_14
    return-void
.end method
