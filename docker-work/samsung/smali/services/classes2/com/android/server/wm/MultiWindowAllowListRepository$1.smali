.class Lcom/android/server/wm/MultiWindowAllowListRepository$1;
.super Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.source "MultiWindowAllowListRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowAllowListRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowAllowListRepository;Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowAllowListRepository$1;->this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-direct {p0, p2}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    return-void
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;->onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowAllowListRepository$1;->this$0:Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->update()V

    return-void
.end method
