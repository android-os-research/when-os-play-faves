.class public final Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "RecoverySystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/recoverysystem/RecoverySystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 373
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_9

    .line 379
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService;->onSystemServicesReady()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 385
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/recoverysystem/RecoverySystemService;-><init>(Landroid/content/Context;Lcom/android/server/recoverysystem/RecoverySystemService-IA;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;->mRecoverySystemService:Lcom/android/server/recoverysystem/RecoverySystemService;

    const-string/jumbo v1, "recovery"

    .line 386
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
