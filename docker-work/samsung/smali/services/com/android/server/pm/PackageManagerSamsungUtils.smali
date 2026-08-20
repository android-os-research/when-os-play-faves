.class public Lcom/android/server/pm/PackageManagerSamsungUtils;
.super Ljava/lang/Object;
.source "PackageManagerSamsungUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deletePermissionApexFile(ILjava/lang/String;)V
    .registers 2

    .line 183
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getPermissionApexFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 8

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 73
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    const/4 v2, -0x1

    .line 77
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    const-wide/16 v2, 0x80

    const/4 v5, -0x1

    move-object v6, p0

    .line 78
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    return-object v0

    .line 83
    :cond_1b
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public static getMetaDataByComponentName(Lcom/android/server/pm/resolution/ComponentResolver;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 90
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->getActivity(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 92
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 94
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->getService(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedService;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 96
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->getProvider(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedProvider;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 100
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    .line 102
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->getReceiver(Landroid/content/ComponentName;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 104
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_30
    return-object v0
.end method

.method public static getPermissionApexFile(ILjava/lang/String;)Ljava/io/File;
    .registers 3

    const-string v0, "com.android.permission"

    .line 188
    invoke-static {v0}, Landroid/content/ApexEnvironment;->getApexEnvironment(Ljava/lang/String;)Landroid/content/ApexEnvironment;

    move-result-object v0

    .line 189
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ApexEnvironment;->getDeviceProtectedDataDirForUser(Landroid/os/UserHandle;)Ljava/io/File;

    move-result-object p0

    .line 190
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getProcessNameForPid(I)Ljava/lang/String;
    .registers 4

    .line 44
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 45
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_3d

    .line 51
    :cond_d
    :try_start_d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 54
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p0, :cond_1b

    .line 55
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2d} :catch_31

    goto :goto_33

    :cond_2e
    const-string p0, ""

    goto :goto_33

    :catch_31
    const-string p0, "couldn\'t find"

    :goto_33
    const-string v0, ":"

    .line 63
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 64
    aget-object p0, p0, v0

    return-object p0

    :cond_3d
    :goto_3d
    const-string p0, "am is not ready yet"

    return-object p0
.end method

.method public static hasHighPriorityComponent(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 174
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 175
    iget v1, v1, Landroid/content/pm/ResolveInfo;->priority:I

    if-lez v1, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v0
.end method

.method public static installedOnSdcardAsUser(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 152
    :cond_4
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-nez v1, :cond_e

    return v0

    .line 157
    :cond_e
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 158
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0

    :cond_1d
    const-wide/32 v1, 0x400000

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_30

    const-wide/16 v1, 0x2000

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2f

    goto :goto_30

    :cond_2f
    return v0

    .line 165
    :cond_30
    :goto_30
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result p0

    return p0
.end method

.method public static isMetaDataInAppInfo(Lcom/android/server/pm/PackageSetting;ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p0, :cond_c

    const-string p0, "PackageManager"

    const-string/jumbo p1, "hasPackageOnlyForOwnerUser needs PackageSetting Object"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 115
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_13

    return v0

    .line 119
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    const-wide/16 v2, 0x80

    move v5, p1

    move-object v6, p0

    .line 120
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/parsing/PackageInfoUtils;->generateApplicationInfo(Lcom/android/server/pm/parsing/pkg/AndroidPackage;JLcom/android/server/pm/pkg/PackageUserStateInternal;ILcom/android/server/pm/pkg/PackageStateInternal;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-nez p0, :cond_22

    return v0

    .line 125
    :cond_22
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {p0, p2}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 131
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_7
    return v0
.end method

.method public static logDroppingPreferredActivity(Lcom/android/server/pm/PreferredActivity;Ljava/util/List;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PreferredActivity;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping Preferred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    const-string p2, "  "

    const/4 v1, 0x0

    if-eqz p0, :cond_63

    const-string v3, "Sets:\n"

    .line 200
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    .line 201
    :cond_43
    :goto_43
    array-length v4, p0

    if-ge v3, v4, :cond_63

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    .line 203
    array-length v4, p0

    if-ge v3, v4, :cond_43

    .line 204
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    :cond_63
    if-eqz p1, :cond_a4

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Query sets: "

    .line 210
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :cond_74
    :goto_74
    if-ge v1, p0, :cond_a4

    .line 214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 215
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p0, :cond_74

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_74

    .line 222
    :cond_a4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 224
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pid: "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 225
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    return-void
.end method

.method public static logPreferenceChange(Ljava/lang/String;Lcom/android/server/pm/PreferredActivity;)V
    .registers 6

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object p1, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p1, p1, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz p1, :cond_53

    const-string v1, "Sets:\n"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 234
    :cond_31
    :goto_31
    array-length v2, p1

    if-ge v1, v2, :cond_53

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 236
    array-length v2, p1

    if-ge v1, v2, :cond_31

    .line 237
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 242
    :cond_53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 243
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uid: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", pid: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    return-void
.end method

.method public static logRoleHoldersChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Role holders for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " changed. holders: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", UserId: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/samsung/android/server/pm/PmLog;->logDebugInfoAndLogcat(Ljava/lang/String;)V

    return-void
.end method

.method public static systemPolicyFixedFlagsChanged(III)Z
    .registers 4

    and-int/lit8 p2, p2, 0x14

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return v0

    :cond_6
    and-int/lit8 p0, p0, 0x14

    and-int/lit8 p1, p1, 0x14

    if-eq p0, p1, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method
