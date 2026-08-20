.class public Lcom/android/server/wm/ActivityEmbeddedController;
.super Lcom/android/server/wm/PackagesChange;
.source "ActivityEmbeddedController.java"


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

.field public mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 5

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 37
    new-instance p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->EMBED_ACTIVITY_DIRECTORY:Ljava/lang/String;

    const/16 v1, 0x400

    const-string v2, "EmbedActivityPackageSetting"

    invoke-direct {p1, v1, v0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    return-void
.end method


# virtual methods
.method public findTargetUserId(I)I
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v0, :cond_e

    .line 49
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 51
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 52
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isProfile()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 53
    :cond_22
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p0

    return p0

    :cond_2b
    return p1
.end method

.method public getEnabled(Ljava/lang/String;I)I
    .registers 3

    .line 59
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    move-result p2

    .line 60
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public setEnabled(Ljava/lang/String;II)V
    .registers 4

    .line 68
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityEmbeddedController;->findTargetUserId(I)I

    move-result p3

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/ActivityEmbeddedController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
