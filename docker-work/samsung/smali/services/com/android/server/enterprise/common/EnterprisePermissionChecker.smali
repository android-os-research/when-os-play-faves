.class public final Lcom/android/server/enterprise/common/EnterprisePermissionChecker;
.super Ljava/lang/Object;
.source "EnterprisePermissionChecker.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EnterprisePermissionChecker"

.field public static sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/common/EnterprisePermissionChecker;
    .registers 2

    .line 55
    sget-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 56
    :cond_b
    sget-object p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    return-object p0
.end method


# virtual methods
.method public enforceAuthorization(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string/jumbo v1, "version"

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 86
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 87
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 88
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 91
    :cond_2a
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, v0, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_33

    goto :goto_57

    .line 93
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from service "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not authorized to be called!!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    :goto_57
    return-void
.end method

.method public enforceCallingOrSelfPermissions(Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_52

    .line 60
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_52

    :cond_9
    const/4 v0, 0x0

    .line 65
    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_15} :catch_16

    goto :goto_29

    :catch_16
    move-exception v1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_51

    .line 71
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_29} :catch_2a

    :goto_29
    return-void

    :catch_2a
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    :cond_4b
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_51
    throw v1

    :cond_52
    :goto_52
    const-string p0, "EnterprisePermissionChecker"

    const-string/jumbo p1, "no permission provided"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    if-nez v0, :cond_e

    .line 49
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    iput-object v0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 51
    :cond_e
    iget-object p0, p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method
