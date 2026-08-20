.class public Lcom/samsung/android/knox/analytics/util/UserManagerHelper;
.super Ljava/lang/Object;
.source "UserManagerHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final USER_TYPE_BBC:I = 0x6

.field public static final USER_TYPE_COM:I = 0x5

.field public static final USER_TYPE_COWP:I = 0x9

.field public static final USER_TYPE_COWPP:I = 0xa

.field public static final USER_TYPE_DO:I = 0x2

.field public static final USER_TYPE_DO_PREMIUM:I = 0x3

.field public static final USER_TYPE_LEGACY_CL:I = 0x4

.field public static final USER_TYPE_PO:I = 0x0

.field public static final USER_TYPE_PO_PREMIUM:I = 0x1

.field public static final USER_TYPE_REGULAR:I = 0x7

.field public static final USER_TYPE_SECURE_FOLDER:I = 0x8


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_17

    const-string v0, "device_policy"

    .line 187
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_17

    .line 189
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v1, "getDevicePolicyManagerService(): could not get DevicePolicyManager!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mDevicePolicyManagerService:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public getDoPackageName()Ljava/lang/String;
    .registers 4

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, ""

    const/4 v1, 0x1

    .line 120
    :try_start_b
    invoke-interface {p0, v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 122
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_17

    move-object v0, p0

    goto :goto_1f

    :catch_17
    move-exception p0

    .line 125
    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "isDoActive(): Exception in DPMS.getDeviceOwnerComponent - "

    invoke-static {v1, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDoPackageName(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPoPackageName()Ljava/lang/String;
    .registers 6

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5c

    if-nez v0, :cond_e

    goto :goto_5c

    :cond_e
    const/4 v2, 0x1

    .line 91
    :try_start_f
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_54

    const-string v1, ""

    if-eqz v0, :cond_3d

    .line 98
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 100
    :try_start_27
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 102
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_33} :catch_34

    goto :goto_1b

    :catch_34
    move-exception v2

    .line 105
    sget-object v3, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v4, "getPoPackageName() - Remote exception: "

    invoke-static {v3, v4, v2}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 109
    :cond_3d
    sget-object p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPoPackageName(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_54
    move-exception p0

    .line 93
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "getPoPackageName() - Runtime exception: "

    invoke-static {v0, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5c
    :goto_5c
    return-object v1
.end method

.method public getPoPackageName(I)Ljava/lang/String;
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const-string v0, ""

    .line 72
    :try_start_a
    invoke-interface {p0, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 74
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_16

    move-object v0, p0

    goto :goto_1e

    :catch_16
    move-exception p0

    .line 77
    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "getPoPackageName() - Remote exception: "

    invoke-static {v1, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPoPackageName(int userId): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 201
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    .line 203
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserType(I)I
    .registers 5

    .line 147
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v1, :cond_28

    const-string p0, "getUserType(): UserInfo is null!"

    .line 150
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 154
    :cond_28
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 p0, 0x8

    return p0

    .line 158
    :cond_31
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 p0, 0x2

    return p0

    .line 162
    :cond_39
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_4a

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isCOWP()Z

    move-result p0

    if-eqz p0, :cond_48

    const/16 p0, 0x9

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0

    :cond_4a
    const/4 p0, 0x7

    return p0
.end method

.method public isAnyPOActive()Z
    .registers 7

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_c

    return v1

    :cond_c
    const/4 v2, 0x1

    .line 46
    :try_start_d
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_4f

    .line 52
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 54
    :try_start_21
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p0, v3}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_27} :catch_2b

    if-eqz v3, :cond_15

    move v1, v2

    goto :goto_15

    :catch_2b
    move-exception v3

    .line 58
    sget-object v4, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v5, "isAnyPOActive() - Remote exception: "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    .line 61
    :cond_34
    sget-object p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAnyPOActive(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_4f
    move-exception p0

    .line 48
    sget-object v0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "isAnyPOActive() - Runtime exception: "

    invoke-static {v0, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final isCOWP()Z
    .registers 4

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 178
    :cond_8
    :try_start_8
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    .line 180
    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v1, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public isDoActive()Z
    .registers 4

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getDevicePolicyManagerService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 138
    :cond_8
    :try_start_8
    invoke-interface {p0}, Landroid/app/admin/IDevicePolicyManager;->hasDeviceOwner()Z

    move-result v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_15

    :catch_d
    move-exception p0

    .line 140
    sget-object v1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    const-string v2, "isDoActive(): Exception in DPMS.hasDeviceOwner - "

    invoke-static {v1, v2, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_15
    sget-object p0, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDoActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
