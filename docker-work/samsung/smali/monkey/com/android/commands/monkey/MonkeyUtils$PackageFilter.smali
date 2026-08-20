.class public Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;
.super Ljava/lang/Object;
.source "MonkeyUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeyUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageFilter"
.end annotation


# instance fields
.field private mInvalidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/monkey/MonkeyUtils$PackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public addInvalidPackages(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p1, "invalidPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-void
.end method

.method public addValidPackages(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "validPackages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 61
    return-void
.end method

.method public checkEnteringPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_12

    .line 87
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 88
    return v1

    .line 90
    :cond_12
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 91
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 92
    return v1

    .line 95
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method public dump()V
    .registers 5

    .line 99
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 100
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 101
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 102
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":AllowPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 105
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_33
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_66

    .line 106
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 107
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 108
    sget-object v1, Lcom/android/commands/monkey/Logger;->out:Lcom/android/commands/monkey/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":DisallowPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/commands/monkey/Logger;->println(Ljava/lang/String;)V

    goto :goto_41

    .line 111
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_66
    return-void
.end method

.method public hasValidPackages()Z
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPackageInvalid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mInvalidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPackageValid(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyUtils$PackageFilter;->mValidPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
