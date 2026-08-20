.class public abstract Lcom/android/server/location/injector/LocationPermissionsHelper;
.super Ljava/lang/Object;
.source "LocationPermissionsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;
    }
.end annotation


# instance fields
.field public final mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mFreezedUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;",
            ">;"
        }
    .end annotation
.end field

.field public mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

.field public final mPauseReasonByCaller:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/location/LocationConstants$PAUSED_BY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$lKCg2BmNlpm5OljPVUK7TaO84ps(Lcom/android/server/location/injector/LocationPermissionsHelper;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->onAppOpsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/injector/AppOpsHelper;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    iput-object p1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

    .line 68
    new-instance v0, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/LocationPermissionsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/injector/LocationPermissionsHelper;)V

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/AppOpsHelper;->addListener(Lcom/android/server/location/injector/AppOpsHelper$LocationAppOpListener;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getReasonByCaller(I)Landroid/location/LocationConstants$PAUSED_BY;
    .registers 3

    .line 158
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationConstants$PAUSED_BY;

    return-object p0
.end method

.method public final hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_13

    .line 113
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 117
    :cond_13
    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->asPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 118
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 123
    :cond_2d
    iget-object v1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 124
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object p2, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 128
    :cond_4d
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mAppOps:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-static {p1}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/injector/AppOpsHelper;->checkOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_67

    .line 130
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 132
    :cond_67
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mPauseReasonByCaller:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_76
    return p1
.end method

.method public abstract hasPermission(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
.end method

.method public final notifyLocationPermissionsChanged(I)V
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 79
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final notifyLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 3

    .line 72
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 73
    invoke-interface {v0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;->onLocationPermissionsChanged(Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final onAppOpsChanged(Ljava/lang/String;)V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper;->sendOpChanged(Ljava/lang/String;)V

    .line 89
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->notifyLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onFreezeStateChanged(ZI)V
    .registers 5

    .line 141
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    if-eqz p1, :cond_19

    .line 146
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 148
    :cond_19
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mFreezedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 151
    :goto_22
    iget-object v0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    if-eqz v0, :cond_29

    .line 152
    invoke-virtual {v0, p1, p2}, Lcom/android/server/location/nsflp/NSPermissionHelper;->sendFreezeStateChanged(ZI)V

    .line 154
    :cond_29
    invoke-virtual {p0, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->notifyLocationPermissionsChanged(I)V

    return-void
.end method

.method public final removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setNSPermissionHelper(Lcom/android/server/location/nsflp/NSPermissionHelper;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/android/server/location/injector/LocationPermissionsHelper;->mNSPermissionHelper:Lcom/android/server/location/nsflp/NSPermissionHelper;

    return-void
.end method
