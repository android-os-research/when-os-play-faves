.class public Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "ApexSharedLibraryUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field public final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$SharedLibraryEntry;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    return-void
.end method

.method public static isCodename(Ljava/lang/String;)Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0

    .line 81
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static isTargetSdkAtMost(ILjava/lang/String;)Z
    .registers 5

    .line 73
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->isCodename(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const/16 p1, 0x2710

    if-ge p0, p1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    return v1

    .line 76
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ge p0, p1, :cond_16

    goto :goto_17

    :cond_16
    move v1, v2

    :goto_17
    return v1
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 5

    .line 47
    iget-object p2, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p2, :cond_17

    .line 49
    iget-object v1, p0, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->mSharedLibraries:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/SystemConfig$SharedLibraryEntry;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->updateSharedLibraryForPackage(Lcom/android/server/SystemConfig$SharedLibraryEntry;Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public final updateSharedLibraryForPackage(Lcom/android/server/SystemConfig$SharedLibraryEntry;Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 5

    .line 55
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    if-eqz v0, :cond_1d

    .line 57
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 56
    invoke-static {v0, v1}, Lcom/android/server/pm/parsing/library/ApexSharedLibraryUpdater;->isTargetSdkAtMost(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 62
    iget-object v0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    .line 65
    :cond_1d
    iget-boolean p0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    if-eqz p0, :cond_26

    .line 68
    iget-object p0, p1, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    :cond_26
    return-void
.end method
