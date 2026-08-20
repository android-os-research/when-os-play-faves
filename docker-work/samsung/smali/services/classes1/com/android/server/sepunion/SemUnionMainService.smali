.class public Lcom/android/server/sepunion/SemUnionMainService;
.super Lcom/android/server/SystemService;
.source "SemUnionMainService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemUnionMainService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5

    .line 36
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBootPhase = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 29
    sget-object v0, Lcom/android/server/sepunion/SemUnionMainService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    const-string/jumbo v1, "sepunion"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 31
    const-class v0, Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    iget-object v1, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object v1, v1, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 42
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserStarting(I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserStopped(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserStopping(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserSwitching(II)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 52
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserUnlocked(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 47
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainService;->mImpl:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->onUserUnlocking(I)V

    return-void
.end method
