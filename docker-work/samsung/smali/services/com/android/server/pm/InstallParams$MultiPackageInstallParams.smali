.class public final Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;
.super Lcom/android/server/pm/HandlerParams;
.source "InstallParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/InstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MultiPackageInstallParams"
.end annotation


# instance fields
.field public final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;"
        }
    .end annotation
.end field

.field public final mCurrentState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/InstallArgs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/pm/InstallParams;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmChildParams(Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallParams;Lcom/android/server/pm/InstallParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/InstallParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/InstallParams;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/InstallParams;

    .line 513
    invoke-virtual {p2}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 514
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_31

    .line 517
    iput-object p3, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    const/4 p1, 0x0

    .line 518
    :goto_12
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_23

    .line 519
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallParams;

    .line 520
    iput-object p0, p2, Lcom/android/server/pm/InstallParams;->mParentInstallParams:Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 522
    :cond_23
    new-instance p1, Landroid/util/ArrayMap;

    iget-object p2, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    return-void

    .line 515
    :cond_31
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "No child sessions found!"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public handleReturnCode()V
    .registers 2

    .line 534
    iget-object p0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallParams;

    .line 535
    invoke-virtual {v0}, Lcom/android/server/pm/InstallParams;->handleReturnCode()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public handleStartCopy()V
    .registers 2

    .line 527
    iget-object p0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallParams;

    .line 528
    invoke-virtual {v0}, Lcom/android/server/pm/InstallParams;->handleStartCopy()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public tryProcessInstallRequest(Lcom/android/server/pm/InstallArgs;I)V
    .registers 8

    .line 540
    iget-object v0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    iget-object p1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    iget-object p2, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mChildParams:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_18

    return-void

    .line 545
    :cond_18
    iget-object p1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 546
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_36

    return-void

    .line 548
    :cond_36
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_22

    .line 549
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_42

    :cond_41
    move p1, v0

    .line 553
    :goto_42
    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 554
    iget-object v1, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_57
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    new-instance v3, Lcom/android/server/pm/InstallRequest;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallArgs;

    new-instance v4, Lcom/android/server/pm/PackageInstalledInfo;

    invoke-direct {v4, p1}, Lcom/android/server/pm/PackageInstalledInfo;-><init>(I)V

    invoke-direct {v3, v2, v4}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallArgs;Lcom/android/server/pm/PackageInstalledInfo;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 558
    :cond_77
    iget-object p0, p0, Lcom/android/server/pm/InstallParams$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/InstallParams;

    if-ne p1, v0, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    :goto_7d
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/InstallParams;->-$$Nest$mprocessInstallRequestsAsync(Lcom/android/server/pm/InstallParams;ZLjava/util/List;)V

    return-void
.end method
