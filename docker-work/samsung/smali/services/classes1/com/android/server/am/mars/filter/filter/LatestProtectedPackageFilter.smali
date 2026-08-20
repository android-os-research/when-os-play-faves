.class public Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
.super Ljava/lang/Object;
.source "LatestProtectedPackageFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;
    }
.end annotation


# static fields
.field public static final PROTECTED_PACKAGES_LIMIT_DEFAULT:I = 0x6

.field public static final PROTECTED_PACKAGES_LIMIT_OLAF:I = 0x2

.field public static TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLatestProtectedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mProtectedAppSizeForGame:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter$LatestProtectedPackageFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 10

    const/4 p3, 0x0

    if-nez p1, :cond_4

    return p3

    .line 56
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 57
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_4b

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4b

    .line 59
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    const/16 v3, 0x9

    const/4 v4, 0x2

    if-eq p4, v3, :cond_33

    const/16 v3, 0xb

    if-eq p4, v3, :cond_2f

    const/16 v3, 0x13

    if-eq p4, v3, :cond_33

    goto :goto_39

    :cond_2f
    if-le v1, v4, :cond_39

    sub-int/2addr v1, v4

    goto :goto_3a

    .line 71
    :cond_33
    iget p0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    if-le v1, p0, :cond_39

    sub-int/2addr v1, p0

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, p3

    :goto_3a
    if-lt v2, v1, :cond_4b

    .line 80
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 81
    monitor-exit v0

    return v4

    :cond_48
    add-int/lit8 v2, v2, -0x1

    goto :goto_3a

    .line 85
    :cond_4b
    monitor-exit v0

    return p3

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_7 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setLatestProtectedPkg(Ljava/lang/String;I)V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    if-eqz v0, :cond_49

    .line 92
    monitor-enter v0

    .line 93
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_33

    .line 95
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 96
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 98
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2f

    const/4 v2, 0x0

    .line 99
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 100
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 102
    :cond_2f
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 105
    :cond_33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_3b
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mLatestProtectedPackages:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit v0

    goto :goto_49

    :catchall_46
    move-exception p0

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_5 .. :try_end_48} :catchall_46

    throw p0

    :cond_49
    :goto_49
    return-void
.end method

.method public setProtectAppCntForGame(I)V
    .registers 2

    .line 114
    iput p1, p0, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->mProtectedAppSizeForGame:I

    return-void
.end method
