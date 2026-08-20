.class Landroid/app/AppOpsManager$1;
.super Landroid/app/AppOpsManager$OnOpNotedCallback;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 263
    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpNotedCallback;-><init>()V

    return-void
.end method

.method private blacklist reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V
    .registers 7
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 280
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smisCollectingStackTraces()Z

    move-result v0

    if-nez v0, :cond_7

    .line 281
    return-void

    .line 283
    :cond_7
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$sfgetsConfig()Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v0

    .line 284
    .local v0, "config":Lcom/android/internal/app/MessageSamplingConfig;
    invoke-virtual {p1}, Landroid/app/SyncNotedAppOp;->getOp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getSampledOpCode()I

    move-result v2

    const/16 v3, 0x79

    invoke-static {v1, v2, v3}, Landroid/app/AppOpsManager;->leftCircularDistance(III)I

    move-result v1

    .line 285
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getAcceptableLeftDistance()I

    move-result v2

    if-le v1, v2, :cond_2f

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/app/MessageSamplingConfig;->getExpirationTimeSinceBootMillis()J

    move-result-wide v1

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4d

    .line 288
    :cond_2f
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetFormattedStackTrace()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "stackTrace":Ljava/lang/String;
    :try_start_33
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/app/AppOpsManager;->-$$Nest$smgetService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 292
    if-nez v2, :cond_40

    const-string v4, ""

    goto :goto_41

    :cond_40
    move-object v4, v2

    .line 291
    :goto_41
    invoke-interface {v3, v4, p1, v1}, Lcom/android/internal/app/IAppOpsService;->reportRuntimeAppOpAccessMessageAndGetConfig(Ljava/lang/String;Landroid/app/SyncNotedAppOp;Ljava/lang/String;)Lcom/android/internal/app/MessageSamplingConfig;

    move-result-object v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->-$$Nest$sfputsConfig(Lcom/android/internal/app/MessageSamplingConfig;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_48} :catch_49

    .line 295
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_4d

    .line 293
    :catch_49
    move-exception v2

    .line 294
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 297
    .end local v1    # "stackTrace":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public whitelist onAsyncNoted(Landroid/app/AsyncNotedAppOp;)V
    .registers 2
    .param p1, "asyncOp"    # Landroid/app/AsyncNotedAppOp;

    .line 272
    return-void
.end method

.method public whitelist onNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 266
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 267
    return-void
.end method

.method public whitelist onSelfNoted(Landroid/app/SyncNotedAppOp;)V
    .registers 2
    .param p1, "op"    # Landroid/app/SyncNotedAppOp;

    .line 276
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$1;->reportStackTraceIfNeeded(Landroid/app/SyncNotedAppOp;)V

    .line 277
    return-void
.end method
