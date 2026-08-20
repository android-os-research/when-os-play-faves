.class public Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;
.super Ljava/lang/Object;
.source "ChinaGmsToggleUtils.java"


# static fields
.field public static final GMS_PACKAGES:[Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$PUNm_E0YqQtgiszUMNsQrkSCZjE(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->lambda$isGMSPackage$0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "com.google.android.gms"

    const-string v1, "com.google.android.configupdater"

    const-string v2, "com.google.android.syncadapters.calendar"

    .line 23
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static isGMSPackage(Ljava/lang/String;)Z
    .registers 3

    .line 97
    sget-object v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$isGMSPackage$0(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final getGmsEnabledState()I
    .registers 3

    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "google_core_control"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x2

    :goto_12
    return v0
.end method

.method public registerContentObserverForGoogleControlCore(Landroid/os/Handler;)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "google_core_control"

    .line 87
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils$1;-><init>(Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;Landroid/os/Handler;)V

    const/4 p0, 0x1

    const/4 p1, -0x1

    .line 86
    invoke-virtual {v0, v1, p0, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 81
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public final setEnabledStateForGmsPackages(II)V
    .registers 9

    .line 67
    sget-object v0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->GMS_PACKAGES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_29

    aget-object v3, v0, v2

    .line 69
    :try_start_8
    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_26

    :catch_c
    move-exception v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_29
    return-void
.end method

.method public setGmsEnabledPackage(Ljava/lang/String;[I)V
    .registers 8

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->getGmsEnabledState()I

    move-result v0

    .line 50
    array-length v1, p2

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_2b

    aget v3, p2, v2

    .line 52
    :try_start_a
    invoke-virtual {p0, p1, v0, v3}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setApplicationEnabledSettingAsUser(Ljava/lang/String;II)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_28

    :catch_e
    move-exception v3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public setGmsEnabledSetting(I)V
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-nez v0, :cond_d

    return-void

    .line 38
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->getGmsEnabledState()I

    move-result v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_2e

    .line 40
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 41
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setEnabledStateForGmsPackages(II)V

    goto :goto_1c

    .line 44
    :cond_2e
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/pm/google/ChinaGmsToggleUtils;->setEnabledStateForGmsPackages(II)V

    :cond_31
    return-void
.end method
