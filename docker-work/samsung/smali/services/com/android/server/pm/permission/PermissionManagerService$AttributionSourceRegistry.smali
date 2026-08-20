.class public final Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributionSourceRegistry"
.end annotation


# instance fields
.field public final mAttributions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    .line 1017
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    .line 1014
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z
    .registers 4

    .line 1077
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1078
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/AttributionSource;

    if-eqz p0, :cond_17

    .line 1080
    invoke-virtual {p0, p1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_17
    const/4 p0, 0x0

    .line 1082
    monitor-exit v0

    return p0

    :catchall_1a
    move-exception p0

    .line 1083
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public registerAttributionSource(Landroid/content/AttributionSource;)V
    .registers 8

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1043
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    if-eq v1, v0, :cond_39

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_16

    goto :goto_39

    .line 1046
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot register attribution source for uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1047
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from uid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1050
    :cond_39
    :goto_39
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_4a

    .line 1056
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    goto :goto_4b

    :cond_4a
    move v2, v0

    :goto_4b
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 1058
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 1059
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_9a

    .line 1064
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1065
    invoke-virtual {v0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v1

    if-eqz v1, :cond_89

    .line 1066
    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_89

    .line 1067
    :cond_72
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot register forged attribution source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1071
    :cond_89
    :goto_89
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1072
    :try_start_8c
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$AttributionSourceRegistry;->mAttributions:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    monitor-exit v1

    return-void

    :catchall_97
    move-exception p0

    monitor-exit v1
    :try_end_99
    .catchall {:try_start_8c .. :try_end_99} :catchall_97

    throw p0

    .line 1060
    :cond_9a
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot register attribution source for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from uid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
