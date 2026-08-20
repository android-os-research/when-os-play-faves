.class final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExternalVibratorService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;)V
    .registers 2

    .line 1773
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasExternalControlCapability()Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1936
    :goto_2
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 1937
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v2}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/VibratorController;

    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/android/server/vibrator/VibratorController;->hasCapability(J)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_27
    return v0
.end method

.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .registers 12

    .line 1777
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1778
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    .line 1780
    :cond_10
    sget-boolean v0, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    const/16 v2, -0x64

    if-nez v0, :cond_17

    return v2

    :cond_17
    const-string v0, "android.permission.VIBRATE"

    .line 1784
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 1783
    invoke-static {v0, v3, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_52

    const-string p0, "VibratorManagerService"

    .line 1786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1792
    :cond_52
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mfixupVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/VibrationAttributes;Landroid/os/CombinedVibration;)Landroid/os/VibrationAttributes;

    move-result-object v0

    const/4 v3, 0x3

    .line 1794
    invoke-virtual {v0, v3}, Landroid/os/VibrationAttributes;->isFlagSet(I)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1797
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationSettings(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/vibrator/VibrationSettings;->update()V

    .line 1803
    :cond_6d
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1804
    :try_start_74
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 1805
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v8

    .line 1804
    invoke-static {v6, v7, v8, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldIgnoreVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;ILjava/lang/String;Landroid/os/VibrationAttributes;)Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v6

    if-eqz v6, :cond_96

    .line 1807
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {v0, v1, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V

    .line 1808
    iput v2, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1809
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0, v0, v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1810
    iget p0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v3

    return p0

    .line 1812
    :cond_96
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    if-eqz v6, :cond_b6

    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1813
    invoke-virtual {v6, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 1816
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object p0

    iget p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    monitor-exit v3

    return p0

    .line 1818
    :cond_b6
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    if-nez v6, :cond_f1

    .line 1821
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v6

    if-eqz v6, :cond_ee

    .line 1822
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_FOR_EXTERNAL:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v6, v7}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mclearNextVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;)V

    .line 1823
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v6

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1826
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object v6

    if-eqz v6, :cond_eb

    .line 1827
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVirtualVibSoundHelper(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VirtualVibSoundHelper;

    move-result-object v6

    const-string v7, "cancel"

    invoke-virtual {v6, v7}, Lcom/android/server/vibrator/VirtualVibSoundHelper;->stopVirtualSound(Ljava/lang/String;)V

    :cond_eb
    move v7, v1

    move v6, v5

    goto :goto_105

    :cond_ee
    move v6, v1

    move v7, v6

    goto :goto_105

    .line 1840
    :cond_f1
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v6}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    invoke-virtual {v6}, Landroid/os/ExternalVibration;->mute()Z

    .line 1841
    iget-object v6, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object v7, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_SUPERSEDED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {v6, v7, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    move v6, v1

    move v7, v5

    .line 1849
    :goto_105
    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    new-instance v9, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    invoke-direct {v9, v8, p1, v4}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder-IA;)V

    invoke-static {v8, v9}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V

    .line 1850
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 1851
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v4}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v4

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v8}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationScaler(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationScaler;

    move-result-object v8

    .line 1852
    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1851
    invoke-virtual {v8, v0}, Lcom/android/server/vibrator/VibrationScaler;->getExternalVibrationScale(I)I

    move-result v0

    iput v0, v4, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1853
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v0

    iget v0, v0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:I

    .line 1854
    monitor-exit v3
    :try_end_137
    .catchall {:try_start_74 .. :try_end_137} :catchall_1e6

    if-eqz v6, :cond_161

    .line 1857
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationThread(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationThread;

    move-result-object v3

    const-wide/16 v8, 0x1388

    invoke-virtual {v3, v8, v9}, Lcom/android/server/vibrator/VibrationThread;->waitForThreadIdle(J)Z

    move-result v3

    if-nez v3, :cond_161

    const-string p1, "VibratorManagerService"

    const-string v0, "Timed out waiting for vibration to cancel"

    .line 1858
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1860
    :try_start_155
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_CANCELLING:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {p0, p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1862
    monitor-exit v3

    return v2

    :catchall_15e
    move-exception p0

    monitor-exit v3
    :try_end_160
    .catchall {:try_start_155 .. :try_end_160} :catchall_15e

    throw p0

    :cond_161
    if-nez v7, :cond_16f

    const-string v3, "VibratorManagerService"

    const-string v4, "Vibrator going under external control."

    .line 1868
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$msetExternalControl(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    .line 1872
    :cond_16f
    sget-boolean v3, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz v3, :cond_1b7

    .line 1873
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrationSettings(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationSettings;

    move-result-object v0

    .line 1874
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v3

    .line 1873
    invoke-virtual {v0, v3}, Lcom/android/server/vibrator/VibrationSettings;->getCurrentMagnitude(I)I

    move-result v0

    const-string v3, "VibratorManagerService"

    .line 1875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentMagnitude : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_19f

    move v1, v2

    goto :goto_1b1

    .line 1880
    :cond_19f
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v3}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmVibrators(Lcom/android/server/vibrator/VibratorManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/vibrator/VibratorController;

    if-eqz v3, :cond_1b1

    int-to-long v6, v0

    .line 1882
    invoke-virtual {v3, v6, v7}, Lcom/android/server/vibrator/VibratorController;->setIntensity(J)V

    .line 1888
    :cond_1b1
    :goto_1b1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mreportVibrationInfo(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V

    move v0, v1

    :cond_1b7
    const-string v1, "VibratorManagerService"

    .line 1892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playing external vibration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    sget-boolean v1, Lcom/samsung/android/vibrator/VibRune;->SUPPORT_ACH:Z

    if-eqz v1, :cond_1e5

    if-eq v0, v2, :cond_1e5

    .line 1897
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_1e5

    const-string p1, "VibratorManagerService"

    const-string v1, "Ach repeat vibration started"

    .line 1898
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0, v5}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    :cond_1e5
    return v0

    :catchall_1e6
    move-exception p0

    .line 1854
    :try_start_1e7
    monitor-exit v3
    :try_end_1e8
    .catchall {:try_start_1e7 .. :try_end_1e8} :catchall_1e6

    throw p0
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .registers 6

    .line 1914
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmLock(Lcom/android/server/vibrator/VibratorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1915
    :try_start_7
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentExternalVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 1916
    invoke-virtual {v1, p1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "VibratorManagerService"

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping external vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->isRepeating()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_46

    const-string p1, "VibratorManagerService"

    const-string v2, "Ach repeat vibration ended"

    .line 1921
    invoke-static {p1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fputmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;Z)V

    .line 1929
    :cond_46
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-static {p0, p1, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mendExternalVibrateLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$Status;Z)V

    .line 1932
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public shouldIgnoreExternalVibrationLocked(IIII)Z
    .registers 5

    const/4 p1, 0x5

    if-ne p2, p1, :cond_32

    .line 1948
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "VibratorManagerService"

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmCurrentVibration(Lcom/android/server/vibrator/VibratorManagerService;)Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->isRepeating()Z

    move-result p1

    if-eqz p1, :cond_24

    const-string p0, "Ignoring incoming ach vibration by sep repeat vibration"

    .line 1949
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 1952
    :cond_24
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibratorService;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {p0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$fgetmIsExternalVibrationRepeated(Lcom/android/server/vibrator/VibratorManagerService;)Z

    move-result p0

    if-eqz p0, :cond_32

    const-string p0, "Ignoring incoming ach vibration by ach repeat vibration"

    .line 1953
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_32
    const/4 p0, 0x0

    return p0
.end method
