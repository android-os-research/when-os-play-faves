.class public final Lcom/android/server/app/GameServiceController;
.super Ljava/lang/Object;
.source "GameServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "GameServiceController"


# instance fields
.field public volatile mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public volatile mActiveGameServiceProviderPackage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

.field public mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

.field public volatile mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

.field public volatile mGameServiceProviderOverride:Ljava/lang/String;

.field public final mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

.field public volatile mHasBootCompleted:Z

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$a3O72hiYpbFn47wdnz-HC0iXPMA(Lcom/android/server/app/GameServiceController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameServiceController;->evaluateActiveGameServiceProvider()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceController;)Ljava/util/concurrent/Executor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mevaluateActiveGameServiceProvider(Lcom/android/server/app/GameServiceController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/app/GameServiceController;->evaluateActiveGameServiceProvider()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelector;Lcom/android/server/app/GameServiceProviderInstanceFactory;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    .line 74
    iput-object p4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

    .line 75
    iput-object p2, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 76
    iput-object p3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

    return-void
.end method


# virtual methods
.method public final evaluateActiveGameServiceProvider()V
    .registers 7

    .line 150
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-nez v0, :cond_5

    return-void

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_8
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelector;

    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 156
    invoke-interface {v1, v2, v3}, Lcom/android/server/app/GameServiceProviderSelector;->get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    move-object v3, v2

    goto :goto_1b

    .line 160
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1b
    if-nez v1, :cond_1f

    move-object v1, v2

    goto :goto_23

    .line 164
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceConfiguration;->getGameServiceComponentConfiguration()Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    move-result-object v1

    .line 166
    :goto_23
    invoke-virtual {p0, v3}, Lcom/android/server/app/GameServiceController;->evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 169
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_32

    .line 172
    monitor-exit v0

    return-void

    .line 175
    :cond_32
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    if-eqz v3, :cond_55

    const-string v3, "GameServiceController"

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping Game Service provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    invoke-interface {v3}, Lcom/android/server/app/GameServiceProviderInstance;->stop()V

    .line 179
    iput-object v2, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    .line 182
    :cond_55
    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 183
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    if-nez v1, :cond_5d

    .line 184
    monitor-exit v0

    return-void

    :cond_5d
    const-string v1, "GameServiceController"

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting Game Service provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactory;

    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 190
    invoke-interface {v1, v2}, Lcom/android/server/app/GameServiceProviderInstanceFactory;->create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstance;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    .line 192
    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstance;

    invoke-interface {p0}, Lcom/android/server/app/GameServiceProviderInstance;->start()V

    .line 193
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p0

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_8 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public final evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 203
    :cond_9
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 204
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    :cond_15
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 214
    :cond_20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 220
    new-instance v1, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;-><init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public notifyNewForegroundUser(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public notifyUserStarted(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_5

    return-void

    .line 93
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public notifyUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 118
    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_16

    return-void

    :cond_16
    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceController;->setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public notifyUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 103
    invoke-virtual {v0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    if-nez p1, :cond_16

    return-void

    .line 112
    :cond_16
    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBootComplete()V
    .registers 3

    .line 80
    iget-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    .line 85
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 139
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    return-void

    .line 143
    :cond_b
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 145
    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setGameServiceProvider(Ljava/lang/String;)V
    .registers 3

    .line 127
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_b

    return-void

    .line 131
    :cond_b
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 133
    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
