.class public Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;
.super Ljava/lang/Object;
.source "PmWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;
    }
.end annotation


# static fields
.field public static COMPONENT_ENABLED_STATE_DISABLED:I = 0x2

.field public static COMPONENT_ENABLED_STATE_DISABLED_USER:I = 0x3

.field public static COMPONENT_ENABLED_STATE_ENABLED:I = 0x1

.field private static GET_APPLICATION_FLAG:I = 0x0

.field public static INSTALL_FAILED_INTERNAL_ERROR:I = -0x6e

.field public static INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static INSTALL_FAILED_USER_RESTRICTED:I = -0x6f

.field public static INSTALL_REASON_UNKNOWN:I = 0x0

.field public static INSTALL_SUCCEEDED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DA_PmWrapper"

.field public static VERSION_CODE_HIGHEST:I = -0x1

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrossProfileIntentFilterWithSkipCurrentProfileFlag(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;II)V
    .registers 5

    const/4 v0, 0x2

    .line 334
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_5

    goto :goto_9

    :catch_5
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_9
    return-void
.end method

.method public static deletePackageAsUser(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 116
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->deletePackageAsUser(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;II)V

    return-void
.end method

.method public static deletePackageAsUser(Landroid/content/Context;ILjava/lang/String;Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;II)V
    .registers 12

    .line 97
    :try_start_0
    invoke-static {p4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-nez p0, :cond_10

    sget p0, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->SEM_USER_OWNER:I

    if-ne p4, p0, :cond_b

    goto :goto_10

    :cond_b
    const/4 p0, -0x1

    .line 100
    invoke-virtual {p3, p2, p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper$PackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V

    goto :goto_21

    .line 98
    :cond_10
    :goto_10
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    move-object v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p0

    .line 104
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_21
    return-void
.end method

.method public static getAppIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 146
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 150
    :try_start_5
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_2c

    const/4 v1, 0x1

    .line 152
    invoke-virtual {p1, p0, v1, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 154
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 155
    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    .line 160
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2c
    return-object v0
.end method

.method public static getAppLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    .line 128
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 131
    :try_start_5
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_10

    goto :goto_15

    :catch_10
    move-exception p1

    .line 133
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p1, v0

    :goto_15
    if-eqz p1, :cond_1b

    .line 135
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1b
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getApplicationInfoAsUser(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .registers 5

    .line 406
    :try_start_0
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    .line 408
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 1

    .line 372
    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentName(Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;
    .registers 1

    .line 392
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentName(Landroid/content/pm/ComponentInfo;)Landroid/content/ComponentName;
    .registers 1

    .line 382
    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getDeleteStatus(I)I
    .registers 1

    .line 246
    invoke-static {p0}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result p0

    return p0
.end method

.method private static getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 58
    sget-object v0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_10

    const-string v0, "package"

    .line 60
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 63
    :cond_10
    sget-object v0, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->mIPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public static getPackageInfoAsUser(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 425
    :try_start_0
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p0

    .line 427
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method private static getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public static getPossibleDualAppPackages(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p0, :cond_14

    const-string p0, "DA_PmWrapper"

    const-string v0, "PackageManager is null"

    .line 203
    invoke-static {p0, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 206
    :cond_14
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v1

    .line 207
    sget v2, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->GET_APPLICATION_FLAG:I

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    if-eqz v1, :cond_49

    .line 210
    array-length v2, v1

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_49

    aget-object v4, v1, v3

    .line 211
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2a
    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 212
    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_2a

    .line 213
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_49
    return-object v0
.end method

.method public static final getUid(II)I
    .registers 2

    .line 349
    invoke-static {p0, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    return p0
.end method

.method public static installExistingPackageAsUser(Ljava/lang/String;III)I
    .registers 10

    .line 79
    :try_start_0
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception p0

    .line 81
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/16 p0, -0x6e

    .line 84
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "res = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DA_PmWrapper"

    invoke-static {p2, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isDualAppInstalledInDualAppProfile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 174
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 176
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->getDualAppProfileId()I

    move-result v0

    const/high16 v1, 0x800000

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 179
    :try_start_c
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 180
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_18} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_22

    :catch_1e
    move-exception p0

    .line 182
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_22
    move p0, v2

    :goto_23
    if-eqz v3, :cond_2f

    .line 186
    iget p1, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2f

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    return v2
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    .line 259
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getPackageManager(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 262
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 263
    iget p1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_14

    :goto_12
    move v1, v3

    goto :goto_23

    :cond_14
    and-int/2addr p1, v0

    if-eqz p1, :cond_18

    goto :goto_12

    .line 267
    :cond_18
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1f

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_23

    goto :goto_12

    :catch_1f
    move-exception p0

    .line 271
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_23
    :goto_23
    return v1
.end method

.method public static queryIntentActivitiesAsUser(Landroid/content/Context;Landroid/content/Intent;II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static setEnableComponentAsUser(Landroid/content/ComponentName;II)Z
    .registers 7

    const/4 v0, 0x0

    .line 310
    :try_start_1
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p0, p2, v0, p1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    const-string v1, "DA_PmWrapper"

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableComponentAsUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " / flag: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2e} :catch_30

    const/4 p0, 0x1

    return p0

    :catch_30
    move-exception p0

    .line 314
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public static setEnablePackageAsUser(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 11

    const/4 v0, 0x0

    .line 286
    :try_start_1
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-nez v1, :cond_d

    sget v1, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->SEM_USER_OWNER:I

    if-ne p2, v1, :cond_c

    goto :goto_d

    :cond_c
    return v0

    .line 287
    :cond_d
    :goto_d
    invoke-static {}, Lcom/samsung/android/da/daagent/fwwrapper/PmWrapper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move v3, p3

    move v5, p2

    .line 287
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    const-string p0, "DA_PmWrapper"

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnablePackageAsUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / flag: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_42} :catch_44

    const/4 p0, 0x1

    return p0

    :catch_44
    move-exception p0

    .line 295
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method
