.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OpticalSensorHelper"
.end annotation


# static fields
.field public static final DISPLAY_PANEL_TYPE_PATH:Ljava/lang/String; = "sys/class/lcd/panel/window_type"

.field public static final MAX_BRIGHTNESS_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/mask_brightness"


# instance fields
.field public mBinderForDisplayStateLimit:Landroid/os/IBinder;

.field public mBrightnessColor:Ljava/lang/String;

.field public mBrightnessColorForLowBrightness:Ljava/lang/String;

.field public mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

.field public mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

.field public mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayPanelType:Ljava/lang/String;

.field public final mMaskClientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxBrightness:F

.field public mNits:I

.field public mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

.field public mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;


# direct methods
.method public static synthetic $r8$lambda$7AwnHfXse1PJUsaI-Wy8TxiLuno(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->lambda$writeMaxBrightnessInfo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zrXPD_Fy9VOz0zqyWmtdD3uAyAc(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->restoreDisplayAdjustFunc()V

    return-void
.end method

.method public static synthetic $r8$lambda$zxXDFRsK9YijhzKCUZWjjix8R28(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->disableDisplayAdjustFunc()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessColor(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBrightnessColorForLowBrightness(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayPanelType(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayPanelType:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaskClientList(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBrightness(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)F
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNits(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)I
    .registers 1

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;)V
    .registers 2

    .line 563
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 546
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    const/4 p1, 0x0

    .line 547
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    .line 552
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    .line 564
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez p1, :cond_24

    .line 565
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    .line 566
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    :cond_24
    return-void
.end method

.method private synthetic lambda$writeMaxBrightnessInfo$0()V
    .registers 3

    .line 702
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/mask_brightness"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    float-to-int p0, p0

    .line 703
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 702
    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    return-void
.end method


# virtual methods
.method public addMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 11

    .line 650
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 651
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->hasMaskClient(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p0, "FingerprintService"

    .line 652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMaskView: already registered client: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    .line 654
    :cond_2d
    new-instance v7, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;ZI)V

    .line 655
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iput-object v7, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    .line 658
    :goto_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final disableDisplayAdjustFunc()V
    .registers 2

    .line 600
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    if-nez v0, :cond_b

    .line 601
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    .line 603
    :cond_b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->disable()V

    return-void
.end method

.method public disableFunctionForLightSource()V
    .registers 3

    .line 584
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_5

    return-void

    .line 587
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getMaskClient(Landroid/os/IBinder;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;
    .registers 4

    .line 623
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public handleCalibrationMode(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p3, v1, :cond_1c

    .line 685
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    if-eqz v1, :cond_d

    .line 686
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->destroy()V

    .line 687
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    .line 689
    :cond_d
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;

    const/4 v6, 0x1

    move-object v2, v0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;Landroid/os/IBinder;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    goto :goto_2e

    .line 691
    :cond_1c
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    if-nez p1, :cond_29

    const-string p0, "FingerprintService"

    const-string/jumbo p1, "handleCalibrationMode: No Calibration Client"

    .line 692
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 694
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->destroy()V

    .line 695
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    :goto_2e
    return-void
.end method

.method public final hasMaskClient(Landroid/os/IBinder;)Z
    .registers 3

    .line 614
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    .line 615
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4

    .line 571
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    if-nez v0, :cond_a

    .line 572
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->setBrightnessConfigs(Landroid/content/Context;[Ljava/lang/String;)V

    .line 573
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->writeMaxBrightnessInfo(Landroid/content/Context;)V

    .line 576
    :cond_a
    :try_start_a
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "sys/class/lcd/panel/window_type"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object p1

    if-eqz p1, :cond_27

    .line 577
    array-length p2, p1

    if-eqz p2, :cond_27

    new-instance p2, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p2, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_29

    :cond_27
    const-string p1, "No file"

    :goto_29
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayPanelType:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string p1, "FingerprintService"

    const-string p2, "getDisplayPanelType : "

    .line 579
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_34
    return-void
.end method

.method public removeMaskView(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 662
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    monitor-enter p2

    .line 663
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->getMaskClient(Landroid/os/IBinder;)Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 665
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 666
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 667
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->destroy()V

    const/4 p1, 0x0

    .line 668
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    goto :goto_68

    .line 670
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->destroy()V

    .line 671
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_68

    .line 672
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaskClientList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    const-string p1, "FingerprintService"

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeMaskView: new current client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mCurClient:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$MaskClient;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_51
    const-string p0, "FingerprintService"

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeMaskView: No registered client:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_68
    :goto_68
    monitor-exit p2

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit p2
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public final restoreDisplayAdjustFunc()V
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    if-eqz v0, :cond_a

    .line 608
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->restore()V

    const/4 v0, 0x0

    .line 609
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    :cond_a
    return-void
.end method

.method public restoreFunctionForLightSource(J)V
    .registers 5

    .line 592
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_5

    return-void

    .line 595
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableDisableFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mRunnableRestoreFunctionForLightSource:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final setBrightnessConfigs(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 7

    const/16 v0, 0x20d

    .line 746
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    const-string v1, "FingerprintService"

    if-eqz p2, :cond_68

    .line 749
    :try_start_8
    array-length p1, p2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_9} :catch_66

    const-string/jumbo v0, "setBrightnessConfigs: node = "

    if-lez p1, :cond_2b

    .line 750
    :try_start_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    aget-object p1, p2, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    .line 753
    :cond_2b
    array-length p1, p2

    const/4 v2, 0x3

    if-le p1, v2, :cond_47

    .line 754
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p2, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    aget-object p1, p2, v2

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBrightnessColor:Ljava/lang/String;

    .line 757
    :cond_47
    array-length p1, p2

    const/4 v0, 0x4

    if-le p1, v0, :cond_9f

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": setBrightnessConfigs for calibration in low brightness = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    aget-object p1, p2, v0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBrightnessColorForLowBrightness:Ljava/lang/String;

    goto :goto_9f

    :catch_66
    move-exception p1

    goto :goto_87

    :cond_68
    const-string/jumbo p2, "setBrightnessConfigs: failed to read from HAL"

    .line 762
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1070063

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 766
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p1, v0, :cond_9f

    .line 768
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_86} :catch_66

    goto :goto_9f

    .line 772
    :goto_87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBrightnessNitsValue: failure to read nits info: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_9f
    :goto_9f
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 775
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setBrightnessConfigs: nits = ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    return-void
.end method

.method public setDisplayStateLimit(Z)V
    .registers 3

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-nez v0, :cond_15

    .line 634
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 635
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    :cond_15
    if-eqz p1, :cond_20

    .line 639
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(Landroid/os/IBinder;I)V

    goto :goto_32

    .line 642
    :cond_20
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateLimit(Landroid/os/IBinder;I)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    goto :goto_32

    :catch_29
    move-exception p0

    const-string p1, "FingerprintService"

    const-string/jumbo v0, "setDisplayStateLimit: "

    .line 645
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_32
    return-void
.end method

.method public final updateBrightnessCorrespondingToNits(Landroid/content/Context;)V
    .registers 9

    .line 708
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    const-string/jumbo v1, "updateBrightnessCorrespondingToNits: "

    const-string v2, "FingerprintService"

    if-gtz p1, :cond_9d

    const-string p1, "DisplaySolution"

    .line 710
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    move-result-object p1

    if-eqz p1, :cond_7b

    .line 714
    :try_start_18
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    invoke-interface {p1, v3}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v3

    iput v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    cmpg-float v3, v3, v0

    if-gtz v3, :cond_7b

    .line 717
    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mNits:I

    const/4 v4, 0x0

    :goto_27
    if-gt v4, v3, :cond_3d

    add-int v5, v3, v4

    shr-int/lit8 v5, v5, 0x1

    .line 720
    invoke-interface {p1, v5}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v6

    iput v6, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    cmpl-float v6, v6, v0

    if-lez v6, :cond_3a

    add-int/lit8 v4, v5, 0x1

    goto :goto_27

    :cond_3a
    add-int/lit8 v3, v5, -0x1

    goto :goto_27

    .line 727
    :cond_3d
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 728
    invoke-interface {p1, v3}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_63} :catch_64

    goto :goto_7b

    :catch_64
    move-exception p1

    .line 732
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_7b
    :goto_7b
    iget p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_9d

    .line 736
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateBrightnessCorrespondingToNits: use default value, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x439f8000    # 319.0f

    .line 737
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    .line 740
    :cond_9d
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_b7

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->mMaxBrightness:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b7
    return-void
.end method

.method public final writeMaxBrightnessInfo(Landroid/content/Context;)V
    .registers 3

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;->updateBrightnessCorrespondingToNits(Landroid/content/Context;)V

    .line 702
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$OpticalSensorHelper;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
