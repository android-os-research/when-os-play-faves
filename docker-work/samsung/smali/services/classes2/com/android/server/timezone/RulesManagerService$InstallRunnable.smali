.class public Lcom/android/server/timezone/RulesManagerService$InstallRunnable;
.super Ljava/lang/Object;
.source "RulesManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezone/RulesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallRunnable"
.end annotation


# instance fields
.field public final mCallback:Landroid/app/timezone/ICallback;

.field public final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field public final mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field public final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 5

    .line 263
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 265
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 266
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method


# virtual methods
.method public final mapInstallerResultToApiCode(I)I
    .registers 4

    if-eqz p1, :cond_13

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_12

    const/4 v1, 0x3

    if-eq p1, p0, :cond_11

    const/4 p0, 0x4

    if-eq p1, v1, :cond_10

    if-eq p1, p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x5

    :cond_10
    return p0

    :cond_11
    return v1

    :cond_12
    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallStarted(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 276
    :try_start_b
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mDistroParcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_d} :catch_5f
    .catchall {:try_start_b .. :try_end_d} :catchall_5c

    .line 280
    :try_start_d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;Z)V

    .line 282
    new-instance v4, Lcom/android/timezone/distro/TimeZoneDistro;

    invoke-direct {v4, v3}, Lcom/android/timezone/distro/TimeZoneDistro;-><init>(Ljava/io/InputStream;)V

    .line 283
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmInstaller(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageInstallWithErrorCode(Lcom/android/timezone/distro/TimeZoneDistro;)I

    move-result v3

    .line 286
    invoke-virtual {p0, v3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->sendInstallNotificationIntentIfRequired(I)V

    .line 288
    invoke-virtual {p0, v3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mapInstallerResultToApiCode(I)I

    move-result v3

    .line 289
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 290
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v3}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$msendFinishedStatus(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_50

    .line 295
    :try_start_3c
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_4d
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4b

    .line 302
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmPackageTracker(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    goto :goto_84

    :catchall_4b
    move-exception v2

    goto :goto_90

    :catch_4d
    move-exception v2

    move v3, v0

    goto :goto_61

    :catchall_50
    move-exception v3

    if-eqz v2, :cond_5b

    .line 276
    :try_start_53
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v2

    :try_start_58
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw v3
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5c} :catch_5f
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v2

    move v0, v1

    goto :goto_90

    :catch_5f
    move-exception v2

    move v3, v1

    :goto_61
    :try_start_61
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to install distro."

    .line 296
    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 298
    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v2, v0}, Lcom/android/server/EventLogTags;->writeTimezoneInstallComplete(Ljava/lang/String;I)V

    .line 299
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v2, v4, v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$msendFinishedStatus(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_79
    .catchall {:try_start_61 .. :try_end_79} :catchall_8e

    .line 302
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmPackageTracker(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    :goto_84
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmOperationInProgress(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_8e
    move-exception v2

    move v0, v3

    .line 302
    :goto_90
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmPackageTracker(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v0}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 304
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmOperationInProgress(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 305
    throw v2
.end method

.method public final sendInstallNotificationIntentIfRequired(I)V
    .registers 2

    if-nez p1, :cond_b

    .line 310
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmIntentHelper(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    :cond_b
    return-void
.end method
