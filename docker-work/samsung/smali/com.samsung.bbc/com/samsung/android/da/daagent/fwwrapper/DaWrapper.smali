.class public Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;
.super Ljava/lang/Object;
.source "DaWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper$DualAppVersion;
    }
.end annotation


# static fields
.field public static DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field public static DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field public static DUAL_SHORTCUT_CALLER_PACKAGE:Ljava/lang/String; = "callerPackage"

.field public static MAX_DUALAPP_ID:I = 0x63

.field public static MIN_DUALAPP_ID:I = 0x5f


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllWhitelistedPackages()[Ljava/lang/String;
    .registers 1

    .line 58
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDualAppVersion()I
    .registers 1

    .line 87
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    return v0
.end method

.method public static isAfwSupportLauncher(Ljava/lang/String;)Z
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isAfwSupportLauncher(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDualAppVersionSupported(I)Z
    .registers 1

    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppVersionSupported(I)Z

    move-result p0

    return p0
.end method

.method public static updateDualAppData(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 68
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
