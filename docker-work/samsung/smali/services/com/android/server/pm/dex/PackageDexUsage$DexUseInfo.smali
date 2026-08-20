.class public Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;
.super Ljava/lang/Object;
.source "PackageDexUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDexUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexUseInfo"
.end annotation


# instance fields
.field public mClassLoaderContext:Ljava/lang/String;

.field public mIsUsedByOtherApps:Z

.field public final mLoaderIsas:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mLoadingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mOwnerUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsUsedByOtherApps(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoaderIsas(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadingPackages(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOwnerUserId(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mmerge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V
    .registers 4

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iget-boolean v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    iput-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 807
    iget v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 808
    iget-object v0, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 809
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    .line 810
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;)V

    return-void
.end method

.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 795
    iput p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 796
    iput-object p3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 797
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    if-eqz p4, :cond_15

    .line 799
    invoke-interface {p1, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_15
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method

.method public static isUnsupportedContext(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "=UnsupportedClassLoaderContext="

    .line 836
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getClassLoaderContext()Ljava/lang/String;
    .registers 1

    .line 855
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    return-object p0
.end method

.method public getLoaderIsas()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 848
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    return-object p0
.end method

.method public getLoadingPackages()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    return-object p0
.end method

.method public getOwnerUserId()I
    .registers 1

    .line 844
    iget p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    return p0
.end method

.method public isUnsupportedClassLoaderContext()Z
    .registers 1

    .line 858
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedContext(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUsedByOtherApps()Z
    .registers 1

    .line 840
    iget-boolean p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    return p0
.end method

.method public isVariableClassLoaderContext()Z
    .registers 2

    .line 862
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    const-string v0, "=VariableClassLoaderContext="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final merge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z
    .registers 9

    .line 814
    iget-boolean v0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_d

    .line 815
    iget-boolean v3, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-eqz v3, :cond_b

    goto :goto_d

    :cond_b
    move v3, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v3, v2

    :goto_e
    iput-boolean v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    .line 816
    iget-object v3, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    iget-object v4, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoaderIsas:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 817
    iget-object v4, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    iget-object v5, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    .line 819
    iget-object v5, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    if-eqz p2, :cond_29

    .line 821
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_42

    .line 822
    :cond_29
    invoke-static {v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->isUnsupportedContext(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_34

    .line 823
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    goto :goto_42

    .line 824
    :cond_34
    iget-object p2, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    const-string p1, "=VariableClassLoaderContext="

    .line 826
    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    :cond_42
    :goto_42
    if-nez v3, :cond_52

    .line 829
    iget-boolean p1, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mIsUsedByOtherApps:Z

    if-ne v0, p1, :cond_52

    if-nez v4, :cond_52

    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mClassLoaderContext:Ljava/lang/String;

    .line 832
    invoke-static {v5, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    :cond_52
    move v1, v2

    :cond_53
    return v1
.end method
