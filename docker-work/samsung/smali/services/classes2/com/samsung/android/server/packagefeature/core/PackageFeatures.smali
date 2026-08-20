.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatures;
.super Ljava/lang/Object;
.source "PackageFeatures.java"


# instance fields
.field public mAllFeaturesDisabled:Z

.field public final mContext:Landroid/content/Context;

.field public final mGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$6bv703M16_wiGPpoP4Ylz8HA_bI(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$new$0(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ArhKDwiA3pnapiVdVydhXpI4CTk(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$forAllGroups$1(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GTHA5Xs1UMTsUBv61LS4hbHG-Vg(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UFu2MZYfalqDVSj6LbmQDji74q4(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->isAllFeaturesDisabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$adLWiRza5YvIFHXY_owka0bA_oU(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->lambda$updateAllFeaturesDisabled$2(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/packagefeature/PackageFeatureController;Lcom/samsung/android/server/util/CoreLogger;)V
    .registers 15

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_6a

    aget-object v8, p1, v1

    .line 57
    iget-boolean v2, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    if-nez v2, :cond_39

    const/4 v2, 0x3

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageFeatureGroup("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is not enabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Lcom/samsung/android/server/util/CoreLogger;->log(ILjava/lang/String;)V

    goto :goto_67

    .line 61
    :cond_39
    iget-boolean v2, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    if-eqz v2, :cond_4f

    .line 62
    new-instance v9, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    move-object v2, v9

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    goto :goto_60

    .line 64
    :cond_4f
    new-instance v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    iget-object v3, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatures;)V

    move-object v2, v9

    move-object v5, p4

    move-object v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    .line 66
    :goto_60
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    iget-object v3, v8, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 68
    :cond_6a
    new-instance p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;

    invoke-direct {p0, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$dump$3(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 3

    .line 102
    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$forAllGroups$1(Ljava/util/function/Consumer;Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 2

    .line 76
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .registers 5

    .line 69
    invoke-static {}, Lcom/samsung/android/server/packagefeature/PackageFeature;->values()[Lcom/samsung/android/server/packagefeature/PackageFeature;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 70
    invoke-virtual {v3, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->setPackageFeatureController(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method public static synthetic lambda$updateAllFeaturesDisabled$2(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;)V
    .registers 1

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllFeaturesDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forAllGroups(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;",
            ">;)V"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getGroup(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
    .registers 2

    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;

    return-object p0
.end method

.method public getGroupNames()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mGroups:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final isAllFeaturesDisabled()Z
    .registers 1

    .line 89
    iget-boolean p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    return p0
.end method

.method public updateAllFeaturesDisabled(Z)Z
    .registers 3

    .line 80
    iget-boolean v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    if-ne v0, p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 83
    :cond_6
    iput-boolean p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->mAllFeaturesDisabled:Z

    .line 84
    new-instance p1, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatures;->forAllGroups(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method
