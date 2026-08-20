.class public final Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;
.super Lcom/android/server/pm/HandlerParams;
.source "VerificationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/VerificationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MultiPackageVerificationParams"
.end annotation


# instance fields
.field public final mChildParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mVerificationState:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/pm/VerificationParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/VerificationParams;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/VerificationParams;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/VerificationParams;",
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

    .line 949
    invoke-virtual {p1}, Lcom/android/server/pm/HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/pm/HandlerParams;-><init>(Landroid/os/UserHandle;Lcom/android/server/pm/PackageManagerService;)V

    .line 950
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_33

    .line 953
    iput-object p2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    const/4 p3, 0x0

    .line 955
    :goto_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_21

    .line 956
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    .line 957
    iput-object p0, v0, Lcom/android/server/pm/VerificationParams;->mParentVerificationParams:Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;

    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    .line 959
    :cond_21
    new-instance p2, Landroid/util/ArraySet;

    iget-object p3, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    .line 960
    iget-object p1, p1, Lcom/android/server/pm/VerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iput-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-void

    .line 951
    :cond_33
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "No child sessions found!"

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public handleReturnCode()V
    .registers 2

    .line 972
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    .line 973
    invoke-virtual {v0}, Lcom/android/server/pm/VerificationParams;->handleReturnCode()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public handleStartCopy()V
    .registers 2

    .line 965
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    .line 966
    invoke-virtual {v0}, Lcom/android/server/pm/VerificationParams;->handleStartCopy()V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public trySendVerificationCompleteNotification(Lcom/android/server/pm/VerificationParams;)V
    .registers 6

    .line 978
    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mChildParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_14

    return-void

    .line 984
    :cond_14
    iget-object p1, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mVerificationState:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/VerificationParams;

    .line 985
    invoke-static {v0}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmRet(Lcom/android/server/pm/VerificationParams;)I

    move-result v3

    if-eq v3, v2, :cond_1a

    .line 988
    invoke-static {v0}, Lcom/android/server/pm/VerificationParams;->-$$Nest$fgetmErrorMessage(Lcom/android/server/pm/VerificationParams;)Ljava/lang/String;

    move-result-object p1

    move v2, v3

    goto :goto_35

    :cond_34
    move-object p1, v1

    .line 993
    :goto_35
    :try_start_35
    iget-object p0, p0, Lcom/android/server/pm/VerificationParams$MultiPackageVerificationParams;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p0, v1, v2, p1, v0}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3f} :catch_40

    goto :goto_47

    :catch_40
    const-string p0, "PackageManager"

    const-string p1, "Observer no longer exists."

    .line 996
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-void
.end method
