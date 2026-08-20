.class public Lcom/android/server/wm/SplitActivityController;
.super Lcom/android/server/wm/PackagesChange;
.source "SplitActivityController.java"


# instance fields
.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 42
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 36
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->SPLIT_ACTIVITY_DIRECTORY:Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "SplitActivityPackageSetting"

    invoke-direct {p1, v1, v0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/SplitActivityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method


# virtual methods
.method public getEnabled(Ljava/lang/String;I)I
    .registers 3

    .line 46
    iget-object p0, p0, Lcom/android/server/wm/SplitActivityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setEnabled(Ljava/lang/String;II)V
    .registers 4

    .line 54
    iget-object p0, p0, Lcom/android/server/wm/SplitActivityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
