.class public Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;
.super Ljava/lang/Object;
.source "SehTestHal.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->InitTPA(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)V
    .registers 2

    .line 378
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverAcquiredEvent(II)V
    .registers 10

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAcquired(JIII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 384
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-void
.end method

.method public deliverAuthenticationResult(I)V
    .registers 9

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onAuthenticated(JIILjava/util/ArrayList;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    .line 411
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public deliverEnrollResult(I)V
    .registers 9

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmFaceId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v5

    move v6, p1

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onEnrollResult(JIII)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1d
    return-void
.end method

.method public deliverErrorEvent(II)V
    .registers 10

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmCallback(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal$2;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;->-$$Nest$fgetmUserId(Lcom/android/server/biometrics/sensors/face/hidl/SehTestHal;)I

    move-result v4

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/biometrics/face/V1_0/IBiometricsFaceClientCallback;->onError(JIII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 393
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-void
.end method
