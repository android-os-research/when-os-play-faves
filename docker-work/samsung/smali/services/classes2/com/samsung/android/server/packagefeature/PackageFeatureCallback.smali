.class public interface abstract Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;
.super Ljava/lang/Object;
.source "PackageFeatureCallback.java"


# virtual methods
.method public abstract onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
.end method

.method public onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
