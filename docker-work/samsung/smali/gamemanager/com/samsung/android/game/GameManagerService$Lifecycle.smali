.class public Lcom/samsung/android/game/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "gamemanager"

.field private static final TAG:Ljava/lang/String; = "GameManager$Lifecycle"


# instance fields
.field private mGameManagerService:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/samsung/android/game/GameManagerService;

    invoke-direct {v0, p1}, Lcom/samsung/android/game/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService$Lifecycle;->mGameManagerService:Lcom/samsung/android/game/GameManagerService;

    .line 77
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase, phase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager$Lifecycle"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$Lifecycle;->mGameManagerService:Lcom/samsung/android/game/GameManagerService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/GameManagerService;->onBootPhase(I)V

    .line 89
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 81
    const-string v0, "GameManager$Lifecycle"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$Lifecycle;->mGameManagerService:Lcom/samsung/android/game/GameManagerService;

    const-string v1, "gamemanager"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/game/GameManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 83
    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .registers 4
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserStopped, userHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager$Lifecycle"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$Lifecycle;->mGameManagerService:Lcom/samsung/android/game/GameManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/GameManagerService;->onUserStopped(I)V

    .line 95
    return-void
.end method
