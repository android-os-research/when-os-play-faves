.class public Lcom/samsung/android/server/continuity/SemContinuityService;
.super Lcom/android/server/SystemService;
.source "SemContinuityService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_Service"


# instance fields
.field public final mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {p1}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->createInstance(Landroid/content/Context;)Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    return-void
.end method

.method public static isSupported()Z
    .registers 1

    .line 25
    invoke-static {}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported()Z

    move-result v0

    return v0
.end method

.method public static isSupportedCopyPaste()Z
    .registers 1

    const/16 v0, 0x8

    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "[MCF_DS_SYS]_Service"

    const-string/jumbo v1, "onStart"

    .line 38
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    const-string v1, "SemContinuityService"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUserStarting : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[MCF_DS_SYS]_Service"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 3

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUserStopping : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[MCF_DS_SYS]_Service"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .registers 5

    if-eqz p1, :cond_b

    .line 49
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 50
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserSwitching : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[MCF_DS_SYS]_Service"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/AbstractSemContinuityServiceImpl;->onUserSwitching(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocking : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_Service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/continuity/SemContinuityService;->mSvcImpl:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->onUserUnlocking(Landroid/os/UserHandle;)V

    return-void
.end method
