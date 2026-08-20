.class public Lcom/samsung/android/securefolder/fwwrapper/PmWrapper;
.super Ljava/lang/Object;
.source "PmWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCrossProfileIntentFilter(Landroid/content/pm/PackageManager;Landroid/content/IntentFilter;III)V
    .registers 5

    .line 40
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V

    return-void
.end method

.method public static clearCrossProfileIntentFilters(Landroid/content/pm/PackageManager;I)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->clearCrossProfileIntentFilters(I)V

    return-void
.end method

.method public static deletePackageAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .registers 5

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public static getApplicationInfoAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getResourcesForApplicationAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/res/Resources;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static installExistingPackageAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static resolveActivityAsUser(Landroid/content/pm/PackageManager;Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .registers 4

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    return-object p0
.end method
