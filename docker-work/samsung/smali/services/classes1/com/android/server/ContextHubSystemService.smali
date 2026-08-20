.class public Lcom/android/server/ContextHubSystemService;
.super Lcom/android/server/SystemService;
.source "ContextHubSystemService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContextHubSystemService"


# instance fields
.field public mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

.field public mInit:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$holR3HvtZa3riYs7PkDas5SvJIU(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/ContextHubSystemService;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ContextHubSystemService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ContextHubSystemService;Landroid/content/Context;)V

    const-string p1, "Init ContextHubSystemService"

    invoke-static {v0, p1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .registers 3

    .line 38
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {v0, p1}, Lcom/android/server/location/contexthub/ContextHubService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_1d

    const-string p1, "ContextHubSystemService"

    const-string/jumbo v0, "onBootPhase: PHASE_SYSTEM_SERVICES_READY"

    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    const-string v0, "Wait for ContextHubSystemService init"

    invoke-static {p1, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/server/ContextHubSystemService;->mInit:Ljava/util/concurrent/Future;

    .line 53
    iget-object p1, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    const-string v0, "contexthub"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_1d
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 59
    iget-object p0, p0, Lcom/android/server/ContextHubSystemService;->mContextHubService:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubService;->onUserChanged()V

    return-void
.end method
