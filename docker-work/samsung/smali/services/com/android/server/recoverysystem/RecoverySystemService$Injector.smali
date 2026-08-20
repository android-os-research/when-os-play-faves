.class public Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 261
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-void
.end method


# virtual methods
.method public connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .registers 2

    .line 297
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;-><init>()V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->connectService()Z

    move-result v0

    if-nez v0, :cond_f

    .line 299
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x0

    :cond_f
    return-object p0
.end method

.method public getBootControl()Landroid/hardware/boot/V1_2/IBootControl;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    .line 310
    invoke-static {p0}, Landroid/hardware/boot/V1_0/IBootControl;->getService(Z)Landroid/hardware/boot/V1_0/IBootControl;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 316
    invoke-static {p0}, Landroid/hardware/boot/V1_2/IBootControl;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/boot/V1_2/IBootControl;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "RecoverySystemService"

    const-string v0, "Device doesn\'t implement boot control HAL V1_2."

    .line 318
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_15
    return-object p0

    .line 312
    :cond_16
    new-instance p0, Landroid/os/RemoteException;

    const-string v0, "Failed to get boot control HAL V1_0."

    invoke-direct {p0, v0}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 265
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTimeMillis()J
    .registers 3

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;
    .registers 1

    .line 269
    const-class p0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockSettingsInternal;

    return-object p0
.end method

.method public getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-object p0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .registers 2

    .line 273
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .registers 3

    .line 330
    :try_start_0
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return p0

    .line 332
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find uid for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverySystemService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getUncryptPackageFileName()Ljava/lang/String;
    .registers 1

    .line 289
    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUncryptPackageFileWriter()Ljava/io/FileWriter;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance p0, Ljava/io/FileWriter;

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public reportRebootEscrowLskfCapturedMetrics(III)V
    .registers 4

    const/16 p0, 0x154

    .line 353
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportRebootEscrowPreparationMetrics(III)V
    .registers 4
    .param p2    # I
        .annotation build Lcom/android/server/recoverysystem/RecoverySystemService$ResumeOnRebootActionsOnRequest;
        .end annotation
    .end param

    const/16 p0, 0x153

    .line 347
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportRebootEscrowRebootMetrics(IIIIZZII)V
    .registers 18

    const/16 v0, 0x155

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 360
    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZII)V

    return-void
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 277
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 281
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public threadSleep(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 325
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public uncryptPackageFileDelete()Z
    .registers 1

    .line 285
    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method
