.class public Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidTestBaseUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final REMOVE_ANDROID_TEST_BASE:J = 0x7f379d2L

.field public static final TAG:Ljava/lang/String; = "AndroidTestBaseUpdater"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method public static isChangeEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 5

    .line 62
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "platform_compat"

    .line 64
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    const-wide/32 v1, 0x7f379d2

    .line 67
    :try_start_14
    invoke-static {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 66
    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_1c} :catch_1d

    return p0

    :catch_1d
    move-exception v0

    const-string v1, "AndroidTestBaseUpdater"

    const-string v2, "Failed to get a response from PLATFORM_COMPAT_SERVICE"

    .line 69
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_25
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1d

    if-le p0, v0, :cond_2f

    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    return p0
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 4

    .line 81
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;->isChangeEnabled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p2

    const-string v0, "android.test.base"

    if-nez p2, :cond_c

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    goto :goto_11

    :cond_c
    const-string p2, "android.test.runner"

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixImplicitDependency(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V

    :goto_11
    return-void
.end method
