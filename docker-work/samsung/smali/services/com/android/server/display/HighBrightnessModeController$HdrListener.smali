.class Lcom/android/server/display/HighBrightnessModeController$HdrListener;
.super Landroid/view/SurfaceControlHdrLayerInfoListener;
.source "HighBrightnessModeController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HdrListener"
.end annotation


# instance fields
.field public mDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mIsBrightnessScaledUp:Z

.field public mIsBrightnessScaledUpPrev:Z

.field public mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public mToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$5nBRLXJjrQH10YjkHcgoPCiMBjM(Lcom/android/server/display/HighBrightnessModeController$HdrListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->lambda$onHdrInfoChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/view/SurfaceControlHdrLayerInfoListener;-><init>()V

    const/4 p1, 0x0

    .line 693
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 694
    iput-boolean p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    const-string p1, "display"

    .line 697
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    const/4 p1, 0x0

    .line 699
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 700
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method private synthetic lambda$onHdrInfoChanged$0()V
    .registers 4

    .line 780
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsHdrLayerPresent(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 785
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v2}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmUnthrottledBrightness(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v2

    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThrottlingReason(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    return-void
.end method


# virtual methods
.method public onHdrInfoChanged(Landroid/os/IBinder;IIII)V
    .registers 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v3, 0x0

    .line 709
    iput-boolean v3, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 711
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v4}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmSupportHdrSolution(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v4

    const-string v5, "HighBrightnessModeController"

    if-eqz v4, :cond_17c

    if-lez p2, :cond_17c

    .line 712
    iget-object v4, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v4}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v4

    iget-object v6, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v6}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 713
    iget-object v6, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v6}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v7}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 714
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 715
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->min(II)I

    move-result v8

    const-string v9, ", HdrLayerSize: "

    const-string v10, "brt scaled up: "

    const/4 v11, 0x1

    const-string/jumbo v12, "x"

    if-lez v6, :cond_113

    if-lez v8, :cond_113

    mul-int v13, v1, v2

    .line 719
    iget-object v14, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v14}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v14

    iget-object v15, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v15}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v15

    mul-int/2addr v14, v15

    int-to-float v15, v4

    int-to-float v3, v6

    div-float v16, v15, v3

    int-to-float v7, v7

    int-to-float v8, v8

    div-float/2addr v7, v8

    cmpl-float v8, v16, v7

    if-lez v8, :cond_69

    mul-float/2addr v3, v7

    .line 722
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_6e

    :cond_69
    div-float/2addr v15, v7

    .line 723
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    :goto_6e
    if-lez v8, :cond_71

    move v4, v6

    :cond_71
    mul-int v6, v4, v3

    int-to-float v7, v13

    int-to-float v8, v14

    div-float v8, v7, v8

    int-to-float v15, v6

    div-float/2addr v7, v15

    .line 729
    iget-object v15, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v15}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThresRatio(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v15

    cmpl-float v15, v7, v15

    if-ltz v15, :cond_84

    goto :goto_85

    :cond_84
    const/4 v11, 0x0

    :goto_85
    iput-boolean v11, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    .line 731
    iget-object v11, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v11}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmLogLevel(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v11

    if-gtz v11, :cond_95

    iget-boolean v11, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iget-boolean v15, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    if-eq v11, v15, :cond_155

    .line 732
    :cond_95
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), DisplaySize: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v2}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v2}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), deviceRatio: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " maxAvailSize: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), availRatio: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmThresRatio(Lcom/android/server/display/HighBrightnessModeController;)F

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_155

    .line 738
    :cond_113
    iget-object v3, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v3}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmLogLevel(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v3

    if-le v3, v11, :cond_155

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", DisplaySize: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmWidth(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHeight(Lcom/android/server/display/HighBrightnessModeController;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_155
    :goto_155
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmStaticVRR(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v1

    if-eqz v1, :cond_17c

    .line 745
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    if-eqz v1, :cond_17c

    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-nez v1, :cond_17c

    .line 747
    :try_start_165
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mDisplayManager:Landroid/hardware/display/IDisplayManager;

    iget-object v2, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x78

    invoke-interface {v1, v2, v3, v5}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string v1, "Request Vrr to 120Hz @HDR"

    .line 748
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_165 .. :try_end_176} :catch_177

    goto :goto_17c

    :catch_177
    const-string v1, "Error : RemoteException occured at acquireRefreshRateMinLimitToken"

    .line 750
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_17c
    :goto_17c
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    iput-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUpPrev:Z

    .line 757
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmStaticVRR(Lcom/android/server/display/HighBrightnessModeController;)Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 758
    iget-boolean v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mIsBrightnessScaledUp:Z

    if-nez v1, :cond_1a1

    .line 761
    :try_start_18c
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    if-eqz v1, :cond_1a1

    .line 762
    invoke-interface {v1}, Lcom/samsung/android/hardware/display/IRefreshRateToken;->release()V

    const/4 v1, 0x0

    .line 763
    iput-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->mRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    const-string v1, "Release Vrr @HDR"

    .line 764
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_18c .. :try_end_19b} :catch_19c

    goto :goto_1a1

    :catch_19c
    const-string v1, "Error : RemoteException occured at releaseRefreshRateMinLimitToken"

    .line 767
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_1a1
    :goto_1a1
    iget-object v1, v0, Lcom/android/server/display/HighBrightnessModeController$HdrListener;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHandler(Lcom/android/server/display/HighBrightnessModeController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/display/HighBrightnessModeController$HdrListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$HdrListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
