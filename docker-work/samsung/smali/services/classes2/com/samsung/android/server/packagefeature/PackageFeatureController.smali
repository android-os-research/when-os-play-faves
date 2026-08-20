.class public interface abstract Lcom/samsung/android/server/packagefeature/PackageFeatureController;
.super Ljava/lang/Object;
.source "PackageFeatureController.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->accept(Ljava/lang/String;)V

    return-void
.end method

.method public accept(Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-interface {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->updateGroupData(Ljava/lang/String;)V

    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract getGroupNames()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScpmVersion(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
.end method

.method public abstract setFileDescriptorFunction(Ljava/util/function/Function;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startController(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;)V
.end method

.method public abstract updateGroupData(Ljava/lang/String;)V
.end method
