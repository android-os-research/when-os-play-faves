.class public final Lcom/android/server/pm/ReconcileRequest;
.super Ljava/lang/Object;
.source "ReconcileRequest.java"


# instance fields
.field public final mAllPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallArgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallArgs;",
            ">;"
        }
    .end annotation
.end field

.field public final mInstallResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mPreparedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PrepareResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mScannedPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public final mVersionInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 60
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    .line 59
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ReconcileRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ScanResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/InstallArgs;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstalledInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PrepareResult;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/ReconcileRequest;->mScannedPackages:Ljava/util/Map;

    .line 49
    iput-object p2, p0, Lcom/android/server/pm/ReconcileRequest;->mInstallArgs:Ljava/util/Map;

    .line 50
    iput-object p3, p0, Lcom/android/server/pm/ReconcileRequest;->mInstallResults:Ljava/util/Map;

    .line 51
    iput-object p4, p0, Lcom/android/server/pm/ReconcileRequest;->mPreparedPackages:Ljava/util/Map;

    .line 52
    iput-object p5, p0, Lcom/android/server/pm/ReconcileRequest;->mAllPackages:Ljava/util/Map;

    .line 53
    iput-object p6, p0, Lcom/android/server/pm/ReconcileRequest;->mVersionInfos:Ljava/util/Map;

    return-void
.end method
