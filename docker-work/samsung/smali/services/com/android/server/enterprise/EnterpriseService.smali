.class public final Lcom/android/server/enterprise/EnterpriseService;
.super Ljava/lang/Object;
.source "EnterpriseService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EnterpriseService"

.field public static sEdmsInstance:Ljava/lang/Object;

.field public static final sInitializedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLazyServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sPolicyServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$x8Tln4y79hpLWL5fbq9B-6jiM-k(Ljava/lang/String;Landroid/content/Context;)Landroid/os/IBinder;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseService;->lambda$addLazySystemService$0(Ljava/lang/String;Landroid/content/Context;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sInitializedList:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLazySystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 2

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    sget-object p1, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p1, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/EnterpriseService$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IServiceCreator;)V

    return-void
.end method

.method public static addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_12

    .line 26
    instance-of v0, p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    if-eqz v0, :cond_12

    instance-of v0, p1, Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 32
    :try_start_a
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    check-cast p1, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    return-void

    .line 28
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addPolicyService failed because it\'s not enterprise service"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addSystemService(Ljava/lang/String;Lcom/android/server/enterprise/EnterpriseServiceCallback;)V
    .registers 3

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    invoke-static {p0, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 71
    invoke-interface {p1, p0, v0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 72
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 73
    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseService;->addPolicyService(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public static getEdmsInstance()Ljava/lang/Object;
    .registers 1

    .line 66
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public static getPolicyService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 21
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getPolicyServices()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/EnterpriseServiceCallback;",
            ">;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/android/server/enterprise/EnterpriseService;->sPolicyServices:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static invokeSystemReadyIfNeeded()V
    .registers 5

    .line 78
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyServices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    :try_start_18
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/enterprise/EnterpriseService;->invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28

    goto :goto_c

    :catch_28
    move-exception v2

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeSystemReadyIfNeeded() failed in"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnterpriseService"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_47
    return-void
.end method

.method public static invokeSystemReadyIfNeeded(Lcom/android/server/enterprise/EnterpriseServiceCallback;Ljava/lang/String;)V
    .registers 4

    .line 89
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sInitializedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 90
    invoke-interface {p0}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->systemReady()V

    .line 91
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Error on calling system ready for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EnterpriseService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method

.method public static synthetic lambda$addLazySystemService$0(Ljava/lang/String;Landroid/content/Context;)Landroid/os/IBinder;
    .registers 3

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addLazySystemService : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EnterpriseService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    return-object p0
.end method

.method public static setEdmsInstance(Ljava/lang/Object;)V
    .registers 1

    .line 62
    sput-object p0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    return-void
.end method

.method public static wakeUpLazyServices()V
    .registers 4

    .line 53
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sLazyServiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 54
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 55
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/EnterpriseServiceCallback;

    .line 57
    move-object v3, v2

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v2, v1, v3}, Lcom/android/server/enterprise/EnterpriseServiceCallback;->notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_6

    :cond_22
    return-void
.end method
