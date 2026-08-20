.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$5;
.super Landroid/app/IProcessObserver$Stub;
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
.method public static synthetic $r8$lambda$9vG8JPx5HYUBB-Ah2s8lLCf6ITM(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->lambda$onProcessDied$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oou4iKkqIwcbeVRJV0UpHAwiEqw(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->lambda$onForegroundActivitiesChanged$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onForegroundActivitiesChanged$0(I)V
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monForegroundActivitiesChanged(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method

.method private synthetic lambda$onProcessDied$1(I)V
    .registers 2

    .line 172
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$monProcessDied(Lcom/android/server/app/GameServiceProviderInstanceImpl;I)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    .line 164
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 4

    .line 171
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p2}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmBackgroundExecutor(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$5$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/app/GameServiceProviderInstanceImpl$5;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
