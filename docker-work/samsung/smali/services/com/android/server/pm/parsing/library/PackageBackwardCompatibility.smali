.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;,
        Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

.field public static final TAG:Ljava/lang/String; = "PackageBackwardCompatibility"


# instance fields
.field public final mBootClassPathContainsATB:Z

.field public final mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v1, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v1, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/AndroidHidlUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v1, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->addUpdaterForAndroidTestBase(Ljava/util/List;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 69
    new-instance v2, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;

    .line 70
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getSharedLibraries()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;-><init>(Landroid/util/ArrayMap;)V

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 73
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    .line 74
    new-instance v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-direct {v2, v1, v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;-><init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V

    sput-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-void
.end method

.method public constructor <init>(Z[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;)V
    .registers 3

    .line 121
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 122
    iput-boolean p1, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    .line 123
    iput-object p2, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-void
.end method

.method public static addUpdaterForAndroidTestBase(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "android.content.pm.AndroidTestBaseUpdater"

    const/4 v1, 0x0

    .line 91
    :try_start_3
    const-class v2, Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    .line 93
    :cond_10
    sget-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_42

    .line 95
    :catch_27
    sget-object v2, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ignoring"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42
    if-eqz v1, :cond_4d

    .line 99
    new-instance v0, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/AndroidTestBaseUpdater;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 101
    :cond_4d
    new-instance v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;

    invoke-direct {v0}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    return v1
.end method

.method public static bootClassPathContainsATB()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 150
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    iget-boolean v0, v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    sget-object v0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->INSTANCE:Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    return-void
.end method


# virtual methods
.method public getPackageUpdaters()[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    return-object p0
.end method

.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 6

    .line 140
    iget-object p0, p0, Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;->mPackageUpdaters:[Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 141
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method
