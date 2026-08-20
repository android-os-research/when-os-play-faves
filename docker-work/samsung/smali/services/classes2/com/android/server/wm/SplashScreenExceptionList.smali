.class public Lcom/android/server/wm/SplashScreenExceptionList;
.super Ljava/lang/Object;
.source "SplashScreenExceptionList.java"


# static fields
.field public static final DEBUG:Z

.field public static final KEY_SPLASH_SCREEN_EXCEPTION_LIST:Ljava/lang/String; = "splash_screen_exception_list"

.field public static final LOG_TAG:Ljava/lang/String; = "SplashScreenExceptionList"

.field public static final NAMESPACE:Ljava/lang/String; = "window_manager"

.field public static final OPT_OUT_METADATA_FLAG:Ljava/lang/String; = "android.splashscreen.exception_opt_out"


# instance fields
.field public final mDeviceConfigExcludedPackages:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uDSyLU1hc61BJXEe8vBGr475HbM(Lcom/android/server/wm/SplashScreenExceptionList;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 46
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    const-string/jumbo v0, "window_manager"

    const-string/jumbo v1, "splash_screen_exception_list"

    const-string v2, ""

    .line 60
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SplashScreenExceptionList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SplashScreenExceptionList;)V

    iput-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 63
    invoke-static {v0, p1, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static isOptedOut(Ljava/util/function/Supplier;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 111
    :cond_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_19

    .line 112
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_19

    const-string v1, "android.splashscreen.exception_opt_out"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private synthetic lambda$new$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 4

    const-string/jumbo v0, "splash_screen_exception_list"

    const-string v1, ""

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->updateDeviceConfig(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isException(Ljava/lang/String;ILjava/util/function/Supplier;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-le p2, v1, :cond_6

    return v0

    .line 89
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_9
    sget-boolean v2, Lcom/android/server/wm/SplashScreenExceptionList;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    const-string v2, "SplashScreenExceptionList"

    .line 91
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "SplashScreen checking exception for package %s (target sdk:%d) -> %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v6, v3

    const/4 p2, 0x2

    iget-object v7, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    .line 94
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, p2

    .line 91
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 97
    monitor-exit v1

    return v0

    .line 99
    :cond_3d
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_44

    .line 100
    invoke-static {p3}, Lcom/android/server/wm/SplashScreenExceptionList;->isOptedOut(Ljava/util/function/Supplier;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :catchall_44
    move-exception p0

    .line 99
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public final parseDeviceConfigPackageList(Ljava/lang/String;)V
    .registers 7

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const-string v1, ","

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 120
    array-length v1, p1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 123
    iget-object v4, p0, Lcom/android/server/wm/SplashScreenExceptionList;->mDeviceConfigExcludedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 126
    :cond_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public updateDeviceConfig(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SplashScreenExceptionList;->parseDeviceConfigPackageList(Ljava/lang/String;)V

    return-void
.end method
