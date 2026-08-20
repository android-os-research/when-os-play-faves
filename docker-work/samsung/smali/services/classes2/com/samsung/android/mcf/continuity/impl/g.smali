.class public Lcom/samsung/android/mcf/continuity/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager;


# static fields
.field public static final e:Ljava/lang/String; = "ContinuityDiscoveryManagerImpl"


# instance fields
.field public final a:Lcom/samsung/android/mcf/continuity/impl/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Lcom/samsung/android/mcf/continuity/impl/c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Lcom/samsung/android/mcf/continuity/impl/s;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$QEAWScAj8Bdq8R3hswa5Athovo4(Lcom/samsung/android/mcf/continuity/impl/g;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/mcf/continuity/impl/g;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$dMfpvonehAsFBue-fhtUlOJI0yM(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/g;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mcf/continuity/impl/d;Lcom/samsung/android/mcf/continuity/impl/c;Lcom/samsung/android/mcf/continuity/impl/s;)V
    .registers 4
    .param p1    # Lcom/samsung/android/mcf/continuity/impl/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/impl/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/mcf/continuity/impl/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    iput-object p2, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    iput-object p3, p0, Lcom/samsung/android/mcf/continuity/impl/g;->c:Lcom/samsung/android/mcf/continuity/impl/s;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/mcf/continuity/impl/g;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private synthetic a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    new-instance v1, Lcom/samsung/android/mcf/continuity/impl/g$a;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/g$a;-><init>(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/continuity/impl/d;->j()Z

    move-result p1

    if-nez p1, :cond_22

    const-string p1, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v0, "startDiscovery"

    const-string v1, "fail sendStartDiscoveryCommand"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    :cond_22
    return-void
.end method

.method private synthetic c()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->l()Z

    return-void
.end method


# virtual methods
.method public a()Lcom/samsung/android/mcf/continuity/impl/c$b;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/g$b;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/g$b;-><init>(Lcom/samsung/android/mcf/continuity/impl/g;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b()V
    .registers 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$b;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->c:Lcom/samsung/android/mcf/continuity/impl/s;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/s;->a()V

    return-void
.end method

.method public checkApStatus(Ljava/lang/String;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;)Z
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$ApStatusCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "checkApStatus"

    const-string v3, "ContinuityDiscoveryManagerImpl"

    if-nez v0, :cond_25

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unknown deviceId : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, v2, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/g;->a()Lcom/samsung/android/mcf/continuity/impl/c$b;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$b;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/continuity/impl/d;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "fail sendCheckApStatusCommand : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/g;->b:Lcom/samsung/android/mcf/continuity/impl/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/mcf/continuity/impl/c;->a(Lcom/samsung/android/mcf/continuity/impl/c$b;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_7a
    const/4 p0, 0x1

    return p0
.end method

.method public getBtMac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string p0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "ContinuityDiscoveryManagerImpl"

    const-string p1, "getBtMac"

    const-string p2, "Need BLUETOOTH_SCAN permission"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_13
    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getBtMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContinuitySimpleMessageManager()Lcom/samsung/android/mcf/continuity/api/ContinuitySimpleMessageManager;
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->c:Lcom/samsung/android/mcf/continuity/impl/s;

    return-object p0
.end method

.method public getNearbyMyDevices()Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcf/continuity/api/ContinuityNearbyMyDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string v1, "getNearbyMyDevices"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getThisDeviceId()Ljava/lang/String;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getThisDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4c

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->d()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getThisDeviceId"

    const-string v1, "ContinuityDiscoveryManagerImpl"

    if-eqz p0, :cond_45

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_45

    :cond_1d
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/CipherUtil;->getBtMacHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->getInstance()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceIdHolder;->setThisDeviceId(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->secureMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_4c

    :cond_45
    :goto_45
    const-string p0, "null or empty btMac"

    invoke-static {v1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4c
    :goto_4c
    return-object v0
.end method

.method public startAdvertisement()Z
    .registers 4

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "startAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->i()Z

    const/4 p0, 0x1

    return p0
.end method

.method public startDiscovery(Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)Z
    .registers 5
    .param p1    # Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "startDiscovery"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/mcf/continuity/impl/g;Lcom/samsung/android/mcf/continuity/api/ContinuityDiscoveryManager$DiscoveryListener;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public stopAdvertisement()Z
    .registers 4

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "stopAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0}, Lcom/samsung/android/mcf/continuity/impl/d;->k()Z

    const/4 p0, 0x1

    return p0
.end method

.method public stopDiscovery()Z
    .registers 4

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "stopDiscovery"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/mcf/continuity/impl/g$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/mcf/continuity/impl/g;)V

    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public updateAdvertisement([B)Z
    .registers 5
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContinuityDiscoveryManagerImpl"

    const-string/jumbo v1, "updateAdvertisement"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/g;->a:Lcom/samsung/android/mcf/continuity/impl/d;

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/continuity/impl/d;->a([B)Z

    move-result p0

    return p0
.end method
