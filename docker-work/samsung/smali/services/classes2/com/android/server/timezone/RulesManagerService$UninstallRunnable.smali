.class public Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
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
    name = "UninstallRunnable"
.end annotation


# instance fields
.field public final mCallback:Landroid/app/timezone/ICallback;

.field public final mCheckToken:Lcom/android/server/timezone/CheckToken;

.field public final synthetic this$0:Lcom/android/server/timezone/RulesManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V
    .registers 4

    .line 363
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 365
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 370
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallStarted(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    :try_start_b
    iget-object v2, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v2}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmInstaller(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->stageUninstall()I

    move-result v2

    .line 376
    invoke-virtual {p0, v2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->sendUninstallNotificationIntentIfRequired(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_3b
    .catchall {:try_start_b .. :try_end_18} :catchall_38

    if-eqz v2, :cond_1f

    if-ne v2, v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v2, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move v2, v0

    :goto_20
    if-eqz v2, :cond_24

    move v3, v1

    goto :goto_25

    :cond_24
    move v3, v0

    .line 386
    :goto_25
    :try_start_25
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 387
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-static {v4, v3}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    .line 388
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v5, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v4, v5, v3}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$msendFinishedStatus(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_35} :catch_36
    .catchall {:try_start_25 .. :try_end_35} :catchall_6a

    goto :goto_55

    :catch_36
    move-exception v3

    goto :goto_3d

    :catchall_38
    move-exception v0

    move v2, v1

    goto :goto_6b

    :catch_3b
    move-exception v3

    move v2, v1

    .line 390
    :goto_3d
    :try_start_3d
    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    .line 391
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$smtoStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 390
    invoke-static {v4, v0}, Lcom/android/server/EventLogTags;->writeTimezoneUninstallComplete(Ljava/lang/String;I)V

    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string v5, "Failed to uninstall distro."

    .line 392
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCallback:Landroid/app/timezone/ICallback;

    invoke-static {v3, v4, v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$msendFinishedStatus(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    :try_end_55
    .catchall {:try_start_3d .. :try_end_55} :catchall_6a

    .line 396
    :goto_55
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmPackageTracker(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmOperationInProgress(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_6a
    move-exception v0

    .line 396
    :goto_6b
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {v3}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmPackageTracker(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->mCheckToken:Lcom/android/server/timezone/CheckToken;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 398
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmOperationInProgress(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 399
    throw v0
.end method

.method public final sendUninstallNotificationIntentIfRequired(I)V
    .registers 3

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_19

    .line 408
    :cond_6
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmIntentHelper(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationUnstaged()V

    goto :goto_19

    .line 405
    :cond_10
    iget-object p0, p0, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;->this$0:Lcom/android/server/timezone/RulesManagerService;

    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->-$$Nest$fgetmIntentHelper(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/RulesManagerIntentHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/timezone/RulesManagerIntentHelper;->sendTimeZoneOperationStaged()V

    :goto_19
    return-void
.end method
