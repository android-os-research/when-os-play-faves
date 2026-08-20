.class public Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;
.super Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.source "FoldablePackageSpecialManagementList.java"


# static fields
.field public static final VALUE_FLIP:Ljava/lang/String; = "flip"

.field public static final VALUE_FOLD:Ljava/lang/String; = "fold"


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    return-void
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 6

    .line 46
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureData;

    invoke-direct {v0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    .line 47
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    goto :goto_d

    .line 52
    :cond_26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d

    .line 55
    :cond_30
    invoke-super {p0, v0}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    return-void
.end method
