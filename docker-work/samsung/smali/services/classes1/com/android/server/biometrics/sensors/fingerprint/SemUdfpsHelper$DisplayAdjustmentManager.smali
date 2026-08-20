.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;
.super Ljava/lang/Object;
.source "SemUdfpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayAdjustmentManager"
.end annotation


# instance fields
.field public mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

.field public mIsDisabled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .registers 5

    .line 792
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    monitor-enter v0

    .line 793
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "FingerprintService"

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.disable: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    if-eqz v1, :cond_27

    .line 797
    monitor-exit v0

    return-void

    :cond_27
    const/4 v1, 0x1

    .line 799
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_5d

    .line 801
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v1, :cond_38

    .line 802
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 804
    :cond_38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz p0, :cond_5b

    .line 805
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->onOpticalUdfpsStarted()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3f} :catch_40
    .catchall {:try_start_2a .. :try_end_3f} :catchall_5d

    goto :goto_5b

    :catch_40
    move-exception p0

    :try_start_41
    const-string v1, "FingerprintService"

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.disable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_5b
    :goto_5b
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_41 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public restore()V
    .registers 6

    .line 814
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;

    monitor-enter v0

    .line 815
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "FingerprintService"

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayAdjustmentManager.restore: start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_21
    iget-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    if-nez v1, :cond_27

    .line 819
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_5d

    return-void

    .line 822
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-nez v1, :cond_35

    .line 823
    const-class v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 825
    :cond_35
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mColorDisplayServiceInternal:Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    if-eqz v1, :cond_58

    .line 826
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->onOpticalUdfpsStopped()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3c} :catch_3d
    .catchall {:try_start_27 .. :try_end_3c} :catchall_5d

    goto :goto_58

    :catch_3d
    move-exception v1

    :try_start_3e
    const-string v2, "FingerprintService"

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayAdjustmentManager.restore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_58
    :goto_58
    const/4 v1, 0x0

    .line 831
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsHelper$DisplayAdjustmentManager;->mIsDisabled:Z

    .line 832
    monitor-exit v0

    return-void

    :catchall_5d
    move-exception p0

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3e .. :try_end_5f} :catchall_5d

    throw p0
.end method
