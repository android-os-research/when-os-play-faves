.class public Lcom/samsung/android/bbccommon/ContainerParamsWrapper;
.super Ljava/lang/Object;
.source "ContainerParamsWrapper.java"


# instance fields
.field private ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Landroid/content/Intent;)Lcom/samsung/android/bbccommon/ContainerParamsWrapper;
    .registers 3

    .line 12
    new-instance v0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;

    invoke-direct {v0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;-><init>()V

    const-string v1, "creation_params"

    .line 14
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/container/ContainerCreationParams;

    .line 15
    iput-object p0, v0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    return-object v0
.end method


# virtual methods
.method public getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    return-object p0
.end method

.method protected getParams()Lcom/samsung/android/knox/container/ContainerCreationParams;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    return-object p0
.end method

.method public getSimplePasswordEnabled()Z
    .registers 1

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getSimplePasswordEnabled()Z

    move-result p0

    return p0
.end method

.method public isUserManaged()Z
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->getConfigurationType()Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->isUserManaged()Z

    move-result p0

    return p0
.end method

.method public setLockType()V
    .registers 2

    .line 31
    iget-object p0, p0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setLockType(I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iget-object p0, p0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/samsung/android/bbccommon/ContainerParamsWrapper;->ccp:Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setPassword(Ljava/lang/String;)V

    return-void
.end method
