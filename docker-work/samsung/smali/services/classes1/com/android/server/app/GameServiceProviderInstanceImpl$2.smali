.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$2;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
        "Landroid/service/games/IGameSessionService;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$GoVlki2XvNlE5mcXginIklyRsLY(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->lambda$onBinderDied$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBinderDied$0()V
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmLock(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_7
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mdestroyAndClearAllGameSessionsLocked(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V

    .line 100
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method


# virtual methods
.method public onBinderDied()V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$2;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
