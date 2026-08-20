.class public Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;
.super Ljava/lang/Object;
.source "PersonaManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "PersonaManagerAdapter"

.field public static sInstance:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

.field public mUserMgr:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    monitor-enter v0

    .line 29
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    if-nez v1, :cond_10

    if-eqz p0, :cond_10

    .line 30
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 32
    :cond_10
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object p0

    :catchall_14
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public exists(I)Z
    .registers 2

    .line 122
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result p0

    return p0
.end method

.method public getAdminComponentName(I)Landroid/content/ComponentName;
    .registers 2

    .line 138
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes(I)I
    .registers 2

    .line 203
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAttributes(I)I

    move-result p0

    return p0
.end method

.method public getFocusedLauncherId()I
    .registers 1

    .line 143
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedLauncherId()I

    move-result p0

    return p0
.end method

.method public getFocusedUserWithActivityManager()I
    .registers 4

    const/4 v0, 0x0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 105
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result p0

    :goto_f
    move v0, p0

    goto :goto_2b

    .line 107
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_f

    :catch_23
    move-exception p0

    const-string v1, "PersonaManagerAdapter"

    const-string v2, "getFocusedUserWithActivityManager() failed. so return owner id"

    .line 110
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return v0
.end method

.method public getKnoxContainerVersionString()Ljava/lang/String;
    .registers 1

    .line 88
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxContainerVersion_3_0_0()I
    .registers 1

    .line 208
    sget-object p0, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_3_0_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->getVersionNumber()I

    move-result p0

    return p0
.end method

.method public getKnoxIds(Z)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getKnoxInfo()Landroid/os/Bundle;
    .registers 1

    .line 83
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getMinPersonaId()I
    .registers 1

    const/16 p0, 0x64

    return p0
.end method

.method public final getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_11

    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    .line 43
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mPersonaMgr:Lcom/samsung/android/knox/SemPersonaManager;

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 50
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    return-object p0
.end method

.method public isAppSeparationUserId(I)Z
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isAppSeparationUserId(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public isContainerAgent(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.knox.containeragent"

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isContainerCore(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.knox.containercore"

    .line 168
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isContainerDesktop(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.knox.containerdesktop"

    .line 178
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isContainerService(I)Z
    .registers 2

    .line 153
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->isContainerService(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public isDarDualEncryptionEnabled(I)Z
    .registers 2

    .line 219
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isDeviceOrProfileOwnerEnabled()Z
    .registers 1

    .line 158
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isDeviceOrProfileOwnerEnabled()Z

    move-result p0

    return p0
.end method

.method public isDoEnabled(I)Z
    .registers 2

    .line 71
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isExternalStorageEnabled(I)Z
    .registers 2

    .line 183
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isKnoxActivated()Z
    .registers 1

    .line 188
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxActivated()Z

    move-result p0

    return p0
.end method

.method public isKnoxId(I)Z
    .registers 2

    .line 163
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public isKnoxVersionSupported(I)Z
    .registers 2

    .line 117
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result p0

    return p0
.end method

.method public isLegacyClId(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isLegacyContainer(I)Z
    .registers 2

    .line 133
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method

.method public isManagedProfile(I)Z
    .registers 2

    .line 127
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 2

    .line 76
    iget-object p0, p0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 78
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p0

    return p0
.end method

.method public isPersonaEnabled(I)Z
    .registers 2

    .line 93
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 94
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isPremiumContainer(I)Z
    .registers 2

    .line 198
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isPremiumContainer(I)Z

    move-result p0

    return p0
.end method

.method public isSamsungWorkspace(I)Z
    .registers 2

    .line 224
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSamsungWorkspace(I)Z

    move-result p0

    return p0
.end method

.method public isSecureFolderId(I)Z
    .registers 2

    .line 60
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p0

    return p0
.end method

.method public isValidKnoxId(I)Z
    .registers 2

    .line 66
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public postPwdChangeNotificationForDeviceOwner(I)V
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->getPersonaManager()Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/SemPersonaManager;->postPwdChangeNotificationForDeviceOwner(I)V

    return-void
.end method
