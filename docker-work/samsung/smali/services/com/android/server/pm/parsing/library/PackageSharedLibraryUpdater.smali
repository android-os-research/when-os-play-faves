.class public abstract Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "PackageSharedLibraryUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 59
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 60
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    .line 51
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public static removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .registers 2

    .line 44
    invoke-interface {p0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    move-result-object p0

    .line 45
    invoke-interface {p0, p1}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method


# virtual methods
.method public prefixImplicitDependency(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 75
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 76
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-static {p0, v0, p3}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 79
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    .line 80
    invoke-interface {p1, v1, p3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    goto :goto_22

    .line 81
    :cond_19
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 82
    invoke-interface {p1, v1, p3}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesOptionalLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_22
    :goto_22
    return-void
.end method

.method public prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V
    .registers 4

    .line 88
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesLibraries()Ljava/util/List;

    move-result-object p0

    .line 89
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v0

    .line 91
    invoke-static {p0, v0, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 94
    invoke-interface {p1, p0, p2}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->addUsesLibrary(ILjava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    :cond_12
    return-void
.end method

.method public abstract updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
.end method
