.class public abstract Lcom/android/server/devicepolicy/UpdateInstaller;
.super Ljava/lang/Object;
.source "UpdateInstaller.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UpdateInstaller"


# instance fields
.field public mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

.field public mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field public mContext:Landroid/content/Context;

.field public mCopiedUpdateFile:Ljava/io/File;

.field public mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$zmBAvKNO5Ea2huCLVWTgilzOSD8(Lcom/android/server/devicepolicy/UpdateInstaller;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->lambda$startInstallUpdate$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    .line 57
    iput-object p3, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    .line 58
    iput-object p2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 59
    iput-object p4, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 60
    iput-object p5, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-void
.end method

.method private synthetic lambda$startInstallUpdate$0()V
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->copyUpdateFileToDataOtaPackageDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    const-string v1, "Error while copying file."

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    return-void

    .line 83
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->installUpdateInThread()V

    return-void
.end method


# virtual methods
.method public final calculateBatteryPercentage(Landroid/content/Intent;)F
    .registers 4

    const-string/jumbo p0, "level"

    const/4 v0, -0x1

    .line 101
    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo v1, "scale"

    .line 102
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    mul-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public cleanupUpdateFile()V
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 140
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_f
    return-void
.end method

.method public final copyToFile(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    :try_start_5
    new-instance p1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mUpdateFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_20

    .line 134
    :try_start_c
    invoke-static {p1, v0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_16

    .line 135
    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_20

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_16
    move-exception p0

    .line 131
    :try_start_17
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    :try_start_1c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    :try_start_21
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_29

    :catchall_25
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_29
    throw p0
.end method

.method public final copyUpdateFileToDataOtaPackageDir()Ljava/io/File;
    .registers 4

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->createNewFileWithPermissions()Ljava/io/File;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->copyToFile(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    const-string v1, "UpdateInstaller"

    const-string v2, "Failed to copy update file to OTA directory"

    .line 112
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    .line 115
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v1, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final createNewFileWithPermissions()Ljava/io/File;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    new-instance p0, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/ota_package"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "update"

    const-string v1, ".zip"

    .line 121
    invoke-static {v0, v1, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    const/16 v0, 0x1e4

    const/4 v1, -0x1

    .line 123
    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    return-object p0
.end method

.method public abstract installUpdateInThread()V
.end method

.method public final isBatteryLevelSufficient()Z
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/UpdateInstaller;->calculateBatteryPercentage(Landroid/content/Intent;)F

    move-result v1

    const-string/jumbo v2, "plugged"

    const/4 v3, -0x1

    .line 94
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v3

    :goto_21
    if-eqz v0, :cond_2d

    .line 96
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_37

    goto :goto_38

    .line 97
    :cond_2d
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    int-to-float p0, p0

    cmpl-float p0, v1, p0

    if-ltz p0, :cond_37

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    return v2
.end method

.method public notifyCallbackOnError(ILjava/lang/String;)V
    .registers 4

    .line 145
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->cleanupUpdateFile()V

    const/16 v0, 0x4a

    .line 147
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 151
    :try_start_10
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCallback:Landroid/app/admin/StartInstallingUpdateCallback;

    invoke-interface {p0, p1, p2}, Landroid/app/admin/StartInstallingUpdateCallback;->onStartInstallingUpdateError(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string p1, "UpdateInstaller"

    const-string p2, "Error while calling callback"

    .line 153
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1e
    return-void
.end method

.method public notifyCallbackOnSuccess()V
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->cleanupUpdateFile()V

    .line 159
    iget-object p0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v0, "deviceowner"

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->powerManagerReboot(Ljava/lang/String;)V

    return-void
.end method

.method public startInstallUpdate()V
    .registers 4

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mCopiedUpdateFile:Ljava/io/File;

    .line 67
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/UpdateInstaller;->isBatteryLevelSufficient()Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x5

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The battery level must be above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v2, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_NOT_CHARGING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while not charging or above "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/UpdateInstaller;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    iget v2, v2, Lcom/android/server/devicepolicy/DevicePolicyConstants;->BATTERY_THRESHOLD_CHARGING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " while charging"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/UpdateInstaller;->notifyCallbackOnError(ILjava/lang/String;)V

    return-void

    .line 75
    :cond_34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/devicepolicy/UpdateInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/UpdateInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/UpdateInstaller;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 p0, 0xa

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setPriority(I)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
