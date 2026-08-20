.class public Lcom/android/server/os/NativeTombstoneManagerService;
.super Lcom/android/server/SystemService;
.source "NativeTombstoneManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeTombstoneManagerService"


# instance fields
.field public mManager:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x226

    if-ne p1, v0, :cond_9

    .line 47
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Lcom/android/server/os/NativeTombstoneManager;->onSystemReady()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 40
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManagerService;->mManager:Lcom/android/server/os/NativeTombstoneManager;

    .line 41
    const-class p0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
