.class public Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;
.super Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;
.source "Face10.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/Face10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalResultController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;
    }
.end annotation


# instance fields
.field public mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

.field public final mContext:Landroid/content/Context;

.field public mHalResultTestHalEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

.field public final mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

.field public final mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final mSensorId:I


# direct methods
.method public static synthetic $r8$lambda$1VQz4dbXiLh2KqIBXkM32WmC5ts(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onAuthenticatedInternal$1(IJLjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$45guoO6-AFhuEqCEs9U9Y5haeQw(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onError$3(JIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$EZccSDObKpNL8roG_ZDGV9HCNkI(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onRemoved$4(Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSOgENOdXjAnGH5O0VVxfjq3JDc(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onAcquired$2(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$V8t1N4VatjDBgx_XRdH2mnJQZRM(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onEnumerate$5(JILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zCI5bceNbwDHJrbAgADEZl6djRg(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->lambda$onEnrollResult$0(IIIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmLockoutResetDispatcher(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;)Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmHalResultTestHalEnabled(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$monAuthenticatedInternal(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIILjava/util/ArrayList;Z)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;)V
    .registers 8

    .line 236
    invoke-direct {p0}, Lvendor/samsung/hardware/biometrics/face/V2_0/ISehBiometricsFaceClientCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    .line 237
    iput p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    .line 238
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 239
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    .line 240
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 241
    iput-object p5, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    .line 242
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    return-void
.end method

.method private synthetic lambda$onAcquired$2(II)V
    .registers 4

    .line 367
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 368
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    if-nez v0, :cond_26

    .line 369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onAcquired for non-acquire client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Face10"

    .line 369
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 374
    :cond_26
    check-cast p0, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 376
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    .line 378
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    return-void
.end method

.method private synthetic lambda$onAuthenticatedInternal$1(IJLjava/util/ArrayList;)V
    .registers 12

    .line 318
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 319
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    const-string v2, "Face10"

    if-nez v1, :cond_26

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAuthenticated for non-authentication consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 320
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 325
    :cond_26
    move-object v1, v0

    check-cast v1, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    const/4 v3, 0x1

    if-lez p1, :cond_2e

    move v4, v3

    goto :goto_2f

    :cond_2e
    const/4 v4, 0x0

    .line 328
    :goto_2f
    new-instance v5, Landroid/hardware/face/Face;

    const-string v6, ""

    invoke-direct {v5, v6, p1, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    if-eqz v4, :cond_71

    .line 332
    instance-of p1, v0, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    if-eqz p1, :cond_71

    .line 333
    move-object p1, v0

    check-cast p1, Lcom/android/server/biometrics/sensors/face/hidl/FaceAuthenticationClient;

    .line 334
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semIsAllowedBackgroundAuthentication()Z

    move-result p2

    if-nez p2, :cond_71

    .line 335
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semGetDisplayId()I

    move-result p2

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/android/server/biometrics/Utils;->isTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_59

    .line 336
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->semVerifyTopActivity()V

    goto :goto_71

    .line 338
    :cond_59
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Background authentication detected, client: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_71
    :goto_71
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    if-eqz v4, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v3, 0x2

    :goto_7c
    invoke-static {p0, v3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monAuthenticatedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)V

    .line 346
    invoke-interface {v1, v5, v4, p4}, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V

    .line 349
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$onEnrollResult$0(IIIJ)V
    .registers 9

    const-string v0, "Face10"

    if-nez p1, :cond_47

    .line 260
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    .line 261
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_47

    .line 262
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    .line 264
    :try_start_1e
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdaemonRemove(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;I)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_26

    goto :goto_40

    :catch_26
    move-exception p0

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollResult: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_40
    const-string/jumbo p0, "onEnrollResult: remove registered face as enrollment is being cancelled"

    .line 268
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 274
    :cond_47
    iget v1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getLegacyInstance(I)Lcom/android/server/biometrics/sensors/face/FaceUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v1, v2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 276
    new-instance v1, Landroid/hardware/face/Face;

    invoke-direct {v1, p3, p2, p4, p5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 278
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 279
    instance-of p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    if-nez p4, :cond_7c

    .line 280
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnrollResult for non-enroll client: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 280
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_7c
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p4

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monEnrollResultExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V

    .line 288
    check-cast p0, Lcom/android/server/biometrics/sensors/face/hidl/FaceEnrollClient;

    .line 289
    invoke-virtual {p0, v1, p1}, Lcom/android/server/biometrics/sensors/EnrollClient;->onEnrollResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 291
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p2, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monEnrollResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic lambda$onEnumerate$5(JILjava/util/ArrayList;)V
    .registers 8

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnumerate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, p1, p2, p4, p3}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mdoTemplateSyncForUser(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;JLjava/util/ArrayList;I)V

    .line 472
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object p0

    .line 473
    instance-of p3, p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    if-nez p3, :cond_54

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onEnumerate for non-enumerate consumer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 474
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_54
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 481
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_81

    .line 484
    :goto_5d
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge v0, p3, :cond_85

    .line 485
    new-instance p3, Landroid/hardware/face/Face;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-direct {p3, v2, v1, p1, p2}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 486
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, p3, v1}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_81
    const/4 p1, 0x0

    .line 492
    invoke-interface {p0, p1, v0}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    :cond_85
    return-void
.end method

.method private synthetic lambda$onError$3(JIII)V
    .registers 12

    .line 392
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", client: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_28

    .line 394
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object p2

    goto :goto_29

    :cond_28
    const/4 p2, 0x0

    :goto_29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string p3, ")"

    const-string v2, "("

    const-string v3, ""

    if-eqz p2, :cond_53

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_54

    :cond_53
    move-object v4, v3

    :goto_54
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_75

    .line 396
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/hardware/face/FaceManager;->getErrorName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_75
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Face10"

    .line 393
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    instance-of p1, v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    if-nez p1, :cond_9f

    .line 398
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onError for non-error consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_9f
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p1

    invoke-static {p1, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monErrorExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    .line 407
    check-cast v0, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 408
    invoke-interface {v0, p4, p5}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    const/4 p1, 0x1

    if-ne p4, p1, :cond_ba

    const-string p1, "Got ERROR_HW_UNAVAILABLE"

    .line 411
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    if-eqz p0, :cond_ba

    .line 413
    invoke-interface {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;->onHardwareUnavailable()V

    .line 418
    :cond_ba
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)V

    .line 419
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$mstopOperation(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)V

    return-void
.end method

.method private synthetic lambda$onLockoutChanged$6(J)V
    .registers 6

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLockoutChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1f

    const/4 p1, 0x0

    goto :goto_32

    :cond_1f
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_31

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p1, p1, v1

    if-nez p1, :cond_2f

    goto :goto_31

    :cond_2f
    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    :goto_31
    const/4 p1, 0x2

    .line 514
    :goto_32
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutTracker:Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;

    invoke-virtual {p2, p1}, Lcom/android/server/biometrics/sensors/face/LockoutHalImpl;->setCurrentUserLockoutMode(I)V

    if-nez v0, :cond_40

    .line 517
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mLockoutResetDispatcher:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;

    iget p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mSensorId:I

    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher;->notifyLockoutResetCallbacks(I)V

    :cond_40
    return-void
.end method

.method private synthetic lambda$onRemoved$4(Ljava/util/ArrayList;J)V
    .registers 14

    .line 430
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mScheduler:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    move-result-object v0

    .line 431
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    const-string v2, "Face10"

    if-nez v1, :cond_26

    .line 432
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onRemoved for non-removal consumer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-static {v0}, Lcom/android/server/biometrics/Utils;->getClientName(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 432
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 437
    :cond_26
    check-cast v0, Lcom/android/server/biometrics/sensors/RemovalConsumer;

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v3, ""

    const/4 v4, 0x0

    if-nez v1, :cond_77

    move v1, v4

    .line 442
    :goto_32
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_7f

    .line 443
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 444
    new-instance v6, Landroid/hardware/face/Face;

    invoke-direct {v6, v3, v5, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 445
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v1

    add-int/lit8 v7, v7, -0x1

    .line 446
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed, faceId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", remaining: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-interface {v0, v6, v7}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 449
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v6

    invoke-static {v6, v3, v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monRemovedExt(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 454
    :cond_77
    new-instance p1, Landroid/hardware/face/Face;

    invoke-direct {p1, v3, v4, p2, p3}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-interface {v0, p1, v4}, Lcom/android/server/biometrics/sensors/RemovalConsumer;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 460
    :cond_7f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string p2, "face_unlock_re_enroll"

    invoke-static {p0, p2, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public onAcquired(JIII)V
    .registers 11

    .line 358
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monPreAcquired(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    return-void

    .line 361
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAcquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    sget-boolean p2, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    const-string p3, ")"

    const-string v1, "("

    const-string v2, ""

    if-eqz p2, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4a

    :cond_49
    move-object v3, v2

    :goto_4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6b

    .line 363
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/hardware/face/FaceManager;->getAcquiredName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_6b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Face10"

    .line 361
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JIILjava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 299
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public final onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;Z)V"
        }
    .end annotation

    .line 305
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmIsOperationStarted(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v0

    const-string v1, "Face10"

    if-nez v0, :cond_27

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onAuthenticated: skip ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after stop()"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 309
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAuthenticated: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_5d

    if-eqz p6, :cond_5d

    .line 310
    iget-boolean p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    if-nez p4, :cond_5d

    .line 311
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmIsAuthenticateResult(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    return-void

    .line 316
    :cond_5d
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance p6, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;

    move-object v0, p6

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IJLjava/util/ArrayList;)V

    invoke-virtual {p4, p6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnrollResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_3f

    .line 253
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fgetmDaemonIsCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 254
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$fputmShouldRemoveRegisteredFaceOnCancelling(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;Z)V

    .line 257
    :cond_3f
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move v3, p5

    move v4, p3

    move v5, p4

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;IIIJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnumerate(JLjava/util/ArrayList;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JILjava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JIII)V
    .registers 15

    .line 386
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHalResultTestHalEnabled:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$monPreError(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    return-void

    .line 391
    :cond_10
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;JIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLockoutChanged(J)V
    .registers 3

    const-string p0, "Face10"

    const-string/jumbo p1, "onLockoutChanged"

    .line 500
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoved(JLjava/util/ArrayList;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "Face10"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;Ljava/util/ArrayList;J)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sehOnAuthenticated(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sehOnAuthenticated: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Face10"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    .line 564
    invoke-static {p6}, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->setFidoResultData(Ljava/util/ArrayList;)V

    :cond_30
    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 566
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->onAuthenticatedInternal(JIILjava/util/ArrayList;Z)V

    return-void
.end method

.method public sehOnPreviewFrame(Landroid/os/HidlMemory;IIII)V
    .registers 7

    .line 545
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehOnPreviewFrame: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face10"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_34

    const-string/jumbo p0, "sehOnPreviewFrame: preview data is null"

    .line 547
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 550
    :cond_34
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    if-eqz p0, :cond_43

    const-string/jumbo p0, "sehOnPreviewFrame: previous preview is not processed yet"

    .line 551
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 555
    :cond_43
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p1}, Landroid/os/HidlMemoryUtil;->hidlMemoryToByteArray(Landroid/os/HidlMemory;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    .line 557
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    return-void
.end method

.method public sehOnPreviewUpdated(Ljava/util/ArrayList;IIII)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;IIII)V"
        }
    .end annotation

    .line 525
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sehOnPreviewUpdated: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Face10"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_73

    .line 526
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_34

    goto :goto_73

    .line 530
    :cond_34
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    if-eqz p0, :cond_43

    const-string/jumbo p0, "sehOnPreviewUpdated: previous preview is not processed yet"

    .line 531
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_43
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    const/4 p0, 0x0

    .line 536
    :goto_50
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_6b

    .line 537
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->mPreviewImage:[B

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_50

    .line 540
    :cond_6b
    invoke-static {}, Lcom/android/server/biometrics/sensors/face/hidl/Face10;->-$$Nest$sfgetmProviderExtImpl()Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;

    move-result-object p0

    invoke-static {p0, p2, p3, p5, p4}, Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;->-$$Nest$msendImageProcessed(Lcom/android/server/biometrics/sensors/face/hidl/Face10$ProviderExtensionImpl;IIII)V

    return-void

    :cond_73
    :goto_73
    const-string/jumbo p0, "sehOnPreviewUpdated: preview data is null or size is 0"

    .line 527
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCallback(Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController;->mCallback:Lcom/android/server/biometrics/sensors/face/hidl/Face10$HalResultController$Callback;

    return-void
.end method
