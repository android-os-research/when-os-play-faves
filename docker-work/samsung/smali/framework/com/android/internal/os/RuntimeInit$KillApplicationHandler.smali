.class Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KillApplicationHandler"
.end annotation


# instance fields
.field private final blacklist mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/RuntimeInit$LoggingHandler;)V
    .registers 3
    .param p1, "loggingHandler"    # Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iput-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    .line 190
    return-void
.end method

.method private blacklist ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 246
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    iget-boolean v0, v0, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->mTriggered:Z

    if-nez v0, :cond_d

    .line 248
    :try_start_6
    iget-object v0, p0, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->mLoggingHandler:Lcom/android/internal/os/RuntimeInit$LoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/RuntimeInit$LoggingHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_c

    .line 251
    goto :goto_d

    .line 249
    :catchall_c
    move-exception v0

    .line 253
    :cond_d
    :goto_d
    return-void
.end method


# virtual methods
.method public whitelist test-api uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 7
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 195
    const/16 v0, 0xa

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit$KillApplicationHandler;->ensureLogging(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 198
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmCrashing()Z

    move-result v1
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_38

    if-eqz v1, :cond_16

    .line 223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 224
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 198
    return-void

    .line 199
    :cond_16
    const/4 v1, 0x1

    :try_start_17
    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfputmCrashing(Z)V

    .line 204
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 205
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->stopProfiling()V

    .line 209
    :cond_27
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$sfgetmApplicationObject()Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    invoke-direct {v3, p2}, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    goto :goto_47

    .line 211
    :catchall_38
    move-exception v1

    .line 212
    .local v1, "t2":Ljava/lang/Throwable;
    :try_start_39
    instance-of v2, v1, Landroid/os/DeadObjectException;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_53

    if-eqz v2, :cond_3e

    goto :goto_47

    .line 216
    :cond_3e
    :try_start_3e
    const-string v2, "AndroidRuntime"

    const-string v3, "Error reporting crash"

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/RuntimeInit;->-$$Nest$smClog_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_46

    .line 219
    goto :goto_47

    .line 217
    :catchall_46
    move-exception v2

    .line 223
    .end local v1    # "t2":Ljava/lang/Throwable;
    :goto_47
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 224
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 225
    nop

    .line 226
    return-void

    .line 223
    :catchall_53
    move-exception v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 224
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 225
    throw v1
.end method
