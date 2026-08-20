.class public Lcom/android/server/biometrics/BiometricService$1;
.super Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;->createBiometricSensorReceiver(J)Landroid/hardware/biometrics/IBiometricSensorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public static synthetic $r8$lambda$3RdUGnZ64m_KzloH6TlMyXIqoc8(Lcom/android/server/biometrics/BiometricService$1;JI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onAuthenticationFailed$2(JI)V

    return-void
.end method

.method public static synthetic $r8$lambda$EQ7FO6B3xzx6wSo2x9cvNZ8Rzr4(Lcom/android/server/biometrics/BiometricService$1;JIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onAcquired$5(JIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zed6Bp-2lrFGy6SQgMvgSdBpxUg(Lcom/android/server/biometrics/BiometricService$1;JIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onError$3(JIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$ha3HKib_A-0ZnDsMIiF7tIWxyZ8(Lcom/android/server/biometrics/BiometricService$1;JIIII)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onError$4(JIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$i2TYjs5iM8xnR7KsCG-YEjKedNw(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onSemAuthenticationSucceeded$0(JI[BLandroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yC0q12BADxpmpjvNnGKhrckgnCA(Lcom/android/server/biometrics/BiometricService$1;JI[B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/BiometricService$1;->lambda$onAuthenticationSucceeded$1(JI[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .registers 4

    .line 459
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricSensorReceiver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAcquired$5(JIII)V
    .registers 12

    .line 496
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnAcquired(Lcom/android/server/biometrics/BiometricService;JIII)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationFailed$2(JI)V
    .registers 4

    .line 476
    iget-object p0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationRejected(Lcom/android/server/biometrics/BiometricService;JI)V

    return-void
.end method

.method private synthetic lambda$onAuthenticationSucceeded$1(JI[B)V
    .registers 11

    .line 469
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    const/4 v5, 0x0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[BLandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic lambda$onError$3(JIIII)V
    .registers 14

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationTimedOut(Lcom/android/server/biometrics/BiometricService;JIIII)V

    return-void
.end method

.method private synthetic lambda$onError$4(JIIII)V
    .registers 14

    .line 489
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleOnError(Lcom/android/server/biometrics/BiometricService;JIIII)V

    return-void
.end method

.method private synthetic lambda$onSemAuthenticationSucceeded$0(JI[BLandroid/os/Bundle;)V
    .registers 12

    .line 463
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$mhandleAuthenticationSucceeded(Lcom/android/server/biometrics/BiometricService;JI[BLandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onAcquired(III)V
    .registers 13

    .line 496
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v8, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationFailed(I)V
    .registers 6

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onAuthenticationFailed"

    .line 475
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v3, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticationSucceeded(I[B)V
    .registers 11

    .line 469
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v7, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[B)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(IIII)V
    .registers 15

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1a

    .line 486
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v9, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIII)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_30

    .line 489
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v9, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda2;

    move-object v1, v9

    move-object v2, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$1;JIIII)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_30
    return-void
.end method

.method public onSemAuthenticationSucceeded(I[BLandroid/os/Bundle;)V
    .registers 13

    .line 463
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$1;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService;->-$$Nest$fgetmHandler(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$1;->val$requestId:J

    new-instance v8, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/BiometricService$1;JI[BLandroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
