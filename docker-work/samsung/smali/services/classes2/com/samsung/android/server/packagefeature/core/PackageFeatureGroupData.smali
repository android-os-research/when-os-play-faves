.class Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;
.super Ljava/lang/Object;
.source "PackageFeatureGroupData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2f146becfaL


# instance fields
.field private final mFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mFeatures:Ljava/util/Map;

    .line 44
    iput p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mVersion:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mFeatures:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FeatureName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    invoke-interface {p3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 79
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Callback for feature is not registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 83
    :cond_74
    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1b

    :cond_78
    return-void
.end method

.method public getCopiedPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureData;
    .registers 3

    .line 57
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    if-nez v0, :cond_14

    .line 66
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;-><init>()V

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mFeatures:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public getVersion()I
    .registers 1

    .line 48
    iget p0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->mVersion:I

    return p0
.end method

.method public putPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;->getPackageFeature(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
