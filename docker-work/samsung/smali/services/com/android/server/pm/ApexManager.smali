.class public abstract Lcom/android/server/pm/ApexManager;
.super Ljava/lang/Object;
.source "ApexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ApexManager$ApexManagerFlattenedApex;,
        Lcom/android/server/pm/ApexManager$ApexManagerImpl;,
        Lcom/android/server/pm/ApexManager$PackageInfoFlags;,
        Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    }
.end annotation


# static fields
.field public static final MATCH_ACTIVE_PACKAGE:I = 0x1

.field public static final MATCH_FACTORY_PACKAGE:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ApexManager"

.field public static final VNDK_APEX_MODULE_NAME_PREFIX:Ljava/lang/String; = "com.android.vndk."

.field public static final sApexManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/pm/ApexManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Lcom/android/server/pm/ApexManager$1;

    invoke-direct {v0}, Lcom/android/server/pm/ApexManager$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/ApexManager;
    .registers 1

    .line 113
    sget-object v0, Lcom/android/server/pm/ApexManager;->sApexManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ApexManager;

    return-object v0
.end method

.method public static isFactory(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 222
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public abstract abortStagedSession(I)Z
.end method

.method public abstract calculateSizeForCompressedApex(Landroid/apex/CompressedApexInfoList;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract destroyCeSnapshots(II)Z
.end method

.method public abstract destroyCeSnapshotsNotSpecified(I[I)Z
.end method

.method public abstract destroyDeSnapshots(I)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public abstract getActiveApexInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexManager$ActiveApexInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActivePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApexSystemServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/ApexSystemServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApkInApexInstallError(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getApksInApex(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBackingApexFile(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract getFactoryPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInactivePackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getSessions()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStagedApexInfos(Landroid/apex/ApexSessionParams;)[Landroid/apex/ApexInfo;
.end method

.method public abstract getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;
.end method

.method public abstract installPackage(Ljava/io/File;Lcom/android/server/pm/parsing/PackageParser2;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method public abstract isApexPackage(Ljava/lang/String;)Z
.end method

.method public abstract isApexSupported()Z
.end method

.method public abstract markBootCompleted()V
.end method

.method public abstract markStagedSessionReady(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method public abstract markStagedSessionSuccessful(I)V
.end method

.method public abstract registerApkInApex(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
.end method

.method public abstract reportErrorWithApkInApex(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reserveSpaceForCompressedApex(Landroid/apex/CompressedApexInfoList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract restoreCeData(IILjava/lang/String;)Z
.end method

.method public abstract revertActiveSessions()Z
.end method

.method public abstract scanApexPackagesTraced(Lcom/android/server/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
.end method

.method public abstract snapshotCeData(IILjava/lang/String;)Z
.end method

.method public abstract submitStagedSession(Landroid/apex/ApexSessionParams;)Landroid/apex/ApexInfoList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation
.end method

.method public abstract uninstallApex(Ljava/lang/String;)Z
.end method
