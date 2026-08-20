.class public Lcom/android/server/vr/XrManagerInternalImpl;
.super Lcom/android/server/vr/XrManagerInternal;
.source "XrManagerInternalImpl.java"


# instance fields
.field public final mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 6
    invoke-direct {p0}, Lcom/android/server/vr/XrManagerInternal;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public getXrManagerService()Lcom/android/server/vr/XrManagerService;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-object p0
.end method

.method public isARServiceInstalled()Z
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/XrManagerService;->isArDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 28
    :cond_a
    iget-object p0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isARServiceInstalled()Z

    move-result p0

    return p0
.end method

.method public isConnected()Z
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {v0}, Lcom/android/server/vr/XrManagerService;->isArDeveloperMode()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x1

    return p0

    .line 20
    :cond_a
    iget-object p0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isConnect()Z

    move-result p0

    return p0
.end method

.method public isVrServiceInstalled()Z
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/server/vr/XrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isVrServiceInstalled()Z

    move-result p0

    return p0
.end method
