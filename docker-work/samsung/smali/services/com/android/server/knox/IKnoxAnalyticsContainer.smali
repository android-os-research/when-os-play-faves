.class public interface abstract Lcom/android/server/knox/IKnoxAnalyticsContainer;
.super Ljava/lang/Object;
.source "IKnoxAnalyticsContainer.java"


# virtual methods
.method public abstract getActivePasswordQuality(I)I
.end method

.method public abstract getAdminComponentForLegacy(I)Landroid/content/ComponentName;
.end method

.method public abstract getCallerIdToShow(I)I
.end method

.method public abstract getDeviceOwnerPackage()Ljava/lang/String;
.end method

.method public abstract getDisabledPrintServices(I)Ljava/lang/String;
.end method

.method public abstract getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getKnoxFingerprintPlus(I)I
.end method

.method public abstract getKnoxScreenTimeOut(I)I
.end method

.method public abstract getLocationProvidersAllowed(I)I
.end method

.method public abstract getLockScreenAllowPrivateNotification(I)I
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getSeparatedAppsConfig()Landroid/os/Bundle;
.end method

.method public abstract getSeparatedAppsContainerId()J
.end method

.method public abstract getSeparatedAppsUserId()I
.end method

.method public abstract getVisibleApps(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasUserRestriction(Ljava/lang/String;I)Z
.end method

.method public abstract isDoEnabled(I)Z
.end method

.method public abstract isIMPackage(Ljava/lang/String;I)I
.end method

.method public abstract isKnoxId(I)Z
.end method

.method public abstract isLegacyClId(I)Z
.end method

.method public abstract isOrganizationOwned()Z
.end method

.method public abstract isPremiumLicenseActivated(I)Z
.end method

.method public abstract isSecureFolderId(I)Z
.end method

.method public abstract isSeparatedAppsIndepdentApp(Landroid/content/pm/PackageInfo;)Z
.end method

.method public abstract sendAnalyticsLog(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V
.end method
