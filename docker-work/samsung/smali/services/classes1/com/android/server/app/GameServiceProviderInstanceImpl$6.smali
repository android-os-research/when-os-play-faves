.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$6;
.super Landroid/service/games/IGameServiceController$Stub;
.source "GameServiceProviderInstanceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public static synthetic $r8$lambda$WIDqRyEdcRifogwX4TIvY2UzmFI(Lcom/android/server/app/GameServiceProviderInstanceImpl$6;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->lambda$createGameSession$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2

    .line 182
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/service/games/IGameServiceController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$createGameSession$0(I)V
    .registers 2

    .line 189
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$mcreateGameSession(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method


# virtual methods
.method public createGameSession(I)V
    .registers 5
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.MANAGE_GAME_ACTIVITY"
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmContext(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_GAME_ACTIVITY"

    const-string v2, "createGameSession()"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$6;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {v0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/app/GameServiceProviderInstanceImpl$6$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$6;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
