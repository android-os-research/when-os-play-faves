.class public Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;
.super Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
.source "UnformattedPackageFeatureGroupRecord.java"


# instance fields
.field public mGetFileDescriptor:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/samsung/android/server/util/CoreLogger;",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/util/function/Supplier;)V

    .line 53
    iget-object p1, p4, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 2

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 59
    invoke-super {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->initialize()V

    return-void
.end method

.method public propagateToCallback(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Lcom/samsung/android/server/packagefeature/PackageFeatureData;IILjava/lang/String;)V
    .registers 8

    .line 79
    iget-object p3, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    if-nez p3, :cond_5

    return-void

    .line 80
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "to propagate to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    if-le p5, p1, :cond_3a

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3c

    :cond_3a
    const-string p1, ""

    :goto_3c
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", reason="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", Unformatted"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    iget-object p3, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGroupName:Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->dispatchUnformattedPackageFeatureFileChanged(Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;Ljava/lang/String;Ljava/util/function/Function;)V

    return-void
.end method

.method public propagateToCallbacks()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-super {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->propagateToCallbacks()V

    return-void
.end method

.method public updateGroupDataFromScpm(Ljava/util/function/Function;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->mGetFileDescriptor:Ljava/util/function/Function;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;->updateGroupDataDummyFromScpm()V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/server/packagefeature/core/UnformattedPackageFeatureGroupRecord;->propagateToCallbacks()V

    return-void
.end method
