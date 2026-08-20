.class public final Lcom/android/server/companion/PermissionsUtils;
.super Ljava/lang/Object;
.source "PermissionsUtils.java"


# static fields
.field public static final DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sAppOpsService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

    .line 62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

    .line 63
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

    .line 65
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string v2, "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

    .line 67
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    const/4 v0, 0x0

    .line 229
    sput-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallerCanInteractWithUserId(Landroid/content/Context;I)Z
    .registers 4

    .line 107
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_8

    return v1

    :cond_8
    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 109
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 3

    .line 187
    invoke-static {p1, p2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerIsSystemOr(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/4 p0, 0x1

    return p0

    .line 189
    :cond_8
    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanInteractWithUserId(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_10
    invoke-static {p0}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z
    .registers 4

    .line 152
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    :cond_a
    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    .line 154
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static checkCallerIsSystemOr(ILjava/lang/String;)Z
    .registers 6

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 128
    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p0, :cond_12

    return v3

    .line 130
    :cond_12
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_19

    return v3

    :cond_19
    return v1
.end method

.method public static checkPackage(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 209
    :try_start_1
    invoke-static {}, Lcom/android/server/companion/PermissionsUtils;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_d

    if-nez p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :catch_d
    :goto_d
    return v0
.end method

.method public static enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 3

    .line 113
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    const/4 p1, 0x0

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 115
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 167
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 169
    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller (uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permissions to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_22

    goto :goto_25

    :cond_22
    const-string/jumbo p3, "manage associations"

    .line 171
    :goto_25
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for u"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const-string v0, "android.permission.MANAGE_COMPANION_DEVICES"

    .line 161
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enforceCallerIsSystemOr(ILjava/lang/String;)V
    .registers 6

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 139
    :cond_9
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, ")"

    if-ne v2, p0, :cond_39

    .line 145
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return-void

    .line 146
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t belong to calling uid ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_39
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling UserId ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not match the expected UserId ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V
    .registers 4

    .line 119
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    return-void

    .line 121
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanInteractWithUserId(Landroid/content/Context;I)V

    return-void
.end method

.method public static enforcePermissionsForAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    .registers 4

    .line 74
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceRequestDeviceProfilePermissions(Landroid/content/Context;Ljava/lang/String;I)V

    .line 76
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 77
    invoke-static {p0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceRequestSelfManagedPermission(Landroid/content/Context;I)V

    :cond_10
    return-void
.end method

.method public static enforceRequestDeviceProfilePermissions(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 86
    :cond_3
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 90
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1c

    return-void

    .line 93
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application must hold "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to associate with a device with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " profile."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported device profile: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceRequestSelfManagedPermission(Landroid/content/Context;I)V
    .registers 4

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-virtual {p0, v1, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 101
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Application does not hold android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .registers 2

    .line 217
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_1c

    .line 218
    const-class v0, Lcom/android/server/companion/PermissionsUtils;

    monitor-enter v0

    .line 219
    :try_start_7
    sget-object v1, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_17

    const-string v1, "appops"

    .line 221
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 220
    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    sput-object v1, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 223
    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v1

    .line 225
    :cond_1c
    :goto_1c
    sget-object v0, Lcom/android/server/companion/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method public static sanitizeWithCallerChecks(Landroid/content/Context;Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 198
    :cond_4
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v1

    .line 199
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-static {p0, v1, v2}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13

    return-object v0

    :cond_13
    return-object p1
.end method
