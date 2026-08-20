.class public Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;
.super Ljava/lang/Object;
.source "MultiUserInstallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageSettingsDelegator"
.end annotation


# instance fields
.field public final mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mGetPackagesLocked:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSetEnabled:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSetInstalled:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    .line 297
    iput-object p2, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/internal/util/function/TriConsumer;

    .line 298
    iput-object p3, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/internal/util/function/TriConsumer;

    .line 299
    iput-object p4, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;

    return-void
.end method


# virtual methods
.method public addDisabledComponent(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;I)V
    .registers 4

    .line 315
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mAddDisabledComponent:Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mGetPackagesLocked:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public setEnabled(Lcom/android/server/pm/PackageSetting;II)V
    .registers 4

    .line 311
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetEnabled:Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setInstalled(Lcom/android/server/pm/PackageSetting;ZI)V
    .registers 4

    .line 307
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/MultiUserInstallPolicy$PackageSettingsDelegator;->mSetInstalled:Lcom/android/internal/util/function/TriConsumer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
