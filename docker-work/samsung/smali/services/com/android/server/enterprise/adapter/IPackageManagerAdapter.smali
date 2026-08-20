.class public interface abstract Lcom/android/server/enterprise/adapter/IPackageManagerAdapter;
.super Ljava/lang/Object;
.source "IPackageManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IAdapterHandle;


# virtual methods
.method public abstract clearApplicationCacheFiles(Ljava/lang/String;)Z
.end method

.method public abstract clearUserData(Ljava/lang/String;)Z
.end method

.method public abstract clearUserData(Ljava/lang/String;I)Z
.end method

.method public abstract deletePackage(Ljava/lang/String;I)Z
.end method

.method public abstract deletePackageAsUser(Ljava/lang/String;II)Z
.end method

.method public abstract getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getApplicationEnabledSetting(Ljava/lang/String;I)I
.end method

.method public abstract getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getComponentEnabledSetting(Landroid/content/ComponentName;I)I
.end method

.method public abstract getInstalledApplications(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstalledWidgetProviders(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
.end method

.method public abstract installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isApplicationInstalled(Ljava/lang/String;I)Z
.end method

.method public abstract setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
.end method

.method public abstract setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
.end method
