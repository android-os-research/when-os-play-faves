.class public Lcom/android/server/pm/resolution/ComponentResolver;
.super Lcom/android/server/pm/resolution/ComponentResolverLocked;
.source "ComponentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;,
        Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/resolution/ComponentResolverLocked;",
        "Lcom/android/server/utils/Snappable<",
        "Lcom/android/server/pm/resolution/ComponentResolverApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_FILTERS:Z = false

.field public static final DEBUG_SHOW_INFO:Z = false

.field public static final PROTECTED_ACTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field public mDeferProtectedFilters:Z

.field public mProtectedFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/SnapshotCache<",
            "Lcom/android/server/pm/resolution/ComponentResolverApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$q1lJ9rfFnT_oyvfX2vuSgkxXQfE(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver;->lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    const-string v1, "android.intent.action.SEND"

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SENDTO"

    .line 115
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    .line 116
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "android.intent.action.VIEW"

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v0, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/pm/resolution/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V
    .registers 5

    .line 176
    invoke-direct {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolverLocked;-><init>(Lcom/android/server/pm/UserManagerService;)V

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 177
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    .line 178
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    .line 179
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-direct {v1, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    .line 180
    new-instance v1, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-direct {v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;-><init>(Lcom/android/server/pm/UserManagerService;)V

    iput-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    .line 181
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    .line 182
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 184
    new-instance p1, Lcom/android/server/pm/resolution/ComponentResolver$1;

    invoke-direct {p1, p0, p0, p0, p2}, Lcom/android/server/pm/resolution/ComponentResolver$1;-><init>(Lcom/android/server/pm/resolution/ComponentResolver;Lcom/android/server/pm/resolution/ComponentResolverApi;Lcom/android/server/utils/Watchable;Lcom/android/server/pm/UserNeedsBadgingCache;)V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static findMatchingActivity(Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivity;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ")",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;"
        }
    .end annotation

    .line 474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 475
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    return-object v0

    .line 478
    :cond_1f
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object v0

    .line 481
    :cond_2e
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 482
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    return-object v0

    .line 485
    :cond_43
    invoke-interface {v0}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_52
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/content/IntentFilter;",
            "Ljava/util/Iterator<",
            "TT;>;>;",
            "Ljava/util/Iterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 423
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_47

    .line 429
    :cond_d
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 432
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 433
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    const/4 v3, 0x0

    .line 440
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Iterator;

    :cond_2c
    if-eqz v2, :cond_41

    .line 441
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 442
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 443
    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v3, 0x1

    :cond_41
    if-nez v3, :cond_15

    .line 452
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_15

    :cond_47
    :goto_47
    return-void
.end method

.method public static isFilterStopped(Lcom/android/server/pm/Computer;Landroid/util/Pair;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/util/Pair<",
            "+",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 1949
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 1950
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1949
    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_27

    .line 1951
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_27

    .line 1958
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1959
    invoke-interface {p0, p2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p1, 0x1

    :cond_27
    :goto_27
    return p1
.end method

.method public static isProtectedAction(Landroid/content/IntentFilter;)Z
    .registers 3

    .line 459
    invoke-virtual {p0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    if-eqz p0, :cond_1c

    .line 460
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 461
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 462
    sget-object v1, Lcom/android/server/pm/resolution/ComponentResolver;->PROTECTED_ACTIONS:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$static$0(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 6

    .line 121
    iget v0, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 122
    iget v1, p1, Landroid/content/pm/ResolveInfo;->priority:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    if-le v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v2, v3

    :goto_c
    return v2

    .line 127
    :cond_d
    iget v0, p0, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 128
    iget v1, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    if-eq v0, v1, :cond_18

    if-le v0, v1, :cond_16

    goto :goto_17

    :cond_16
    move v2, v3

    :goto_17
    return v2

    .line 132
    :cond_18
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v0, v1, :cond_23

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    return v2

    .line 135
    :cond_23
    iget v0, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 136
    iget v1, p1, Landroid/content/pm/ResolveInfo;->match:I

    if-eq v0, v1, :cond_2e

    if-le v0, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    return v2

    .line 141
    :cond_2e
    iget-boolean v0, p0, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v1, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v0, v1, :cond_39

    if-eqz v0, :cond_37

    goto :goto_38

    :cond_37
    move v2, v3

    :goto_38
    return v2

    .line 144
    :cond_39
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_48

    .line 145
    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 147
    :cond_48
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_57

    .line 148
    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 150
    :cond_57
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_66

    .line 151
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_66
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            ">;>;Z)V"
        }
    .end annotation

    .line 291
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p4

    invoke-static {p4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p4

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p4, :cond_1f

    .line 294
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 295
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v3, "activity"

    invoke-virtual {v2, p1, v1, v3, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1f
    return-void
.end method

.method public addAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLjava/lang/String;Lcom/android/server/pm/Computer;)V
    .registers 14

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v1

    .line 208
    :try_start_8
    invoke-virtual {p0, p4, p1, v0, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addActivitiesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;Z)V

    .line 209
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 210
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 211
    invoke-virtual {p0, p4, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 213
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_59

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1e
    if-ltz p1, :cond_58

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 217
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 218
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lcom/android/server/pm/Computer;->getDisabledSystemPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    move-object v1, v2

    goto :goto_3b

    .line 220
    :cond_37
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    :goto_3b
    if-eqz v1, :cond_41

    .line 222
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    :cond_41
    move-object v5, v2

    .line 223
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedActivity;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    move-object v3, p0

    move-object v4, p4

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/resolution/ComponentResolver;->adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1e

    :cond_58
    return-void

    :catchall_59
    move-exception p0

    .line 213
    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final addProvidersLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 312
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p3, :cond_d3

    .line 315
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 316
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->addProvider(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    .line 317
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_cf

    .line 318
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 321
    invoke-static {v2, v5}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    move v6, v0

    .line 322
    :goto_30
    array-length v7, v3

    if-ge v6, v7, :cond_cf

    const/4 v7, 0x1

    if-ne v6, v7, :cond_45

    .line 323
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 331
    new-instance v7, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-direct {v7, v2}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    .line 332
    invoke-static {v7, v0}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setSyncable(Lcom/android/server/pm/pkg/component/ParsedProvider;Z)V

    move-object v2, v7

    .line 334
    :cond_45
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7e

    .line 335
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_62

    .line 337
    aget-object v7, v3, v6

    invoke-static {v2, v7}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    goto :goto_cb

    .line 339
    :cond_62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/pm/pkg/component/ComponentMutateUtils;->setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V

    goto :goto_cb

    .line 347
    :cond_7e
    iget-object v7, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v8, v3, v6

    .line 348
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedProvider;

    if-eqz v7, :cond_95

    .line 350
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_95

    .line 351
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    goto :goto_96

    :cond_95
    move-object v7, v5

    :goto_96
    if-eqz v7, :cond_9d

    .line 353
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_9f

    :cond_9d
    const-string v7, "?"

    .line 354
    :goto_9f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping provider name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " (in package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "): name already used by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    .line 354
    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cb
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_30

    :cond_cf
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_d3
    return-void
.end method

.method public final addReceiversLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 376
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_21

    .line 379
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 380
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const/4 v3, 0x0

    const-string/jumbo v4, "receiver"

    invoke-virtual {v2, p1, v1, v4, v3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->addActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_21
    return-void
.end method

.method public final addServicesLocked(Lcom/android/server/pm/Computer;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 397
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p3

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_1d

    .line 400
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 401
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->addService(Lcom/android/server/pm/Computer;Lcom/android/server/pm/pkg/component/ParsedService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    return-void
.end method

.method public final adjustPriority(Lcom/android/server/pm/Computer;Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;Lcom/android/server/pm/pkg/component/ParsedIntentInfo;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            ">;",
            "Lcom/android/server/pm/pkg/component/ParsedActivity;",
            "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 509
    invoke-interface {p4}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 510
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    if-gtz v1, :cond_b

    return-void

    .line 514
    :cond_b
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    .line 517
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isPrivileged()Z

    move-result p1

    .line 518
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    const/4 v2, 0x0

    if-nez p1, :cond_21

    .line 527
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 531
    :cond_21
    invoke-static {v0}, Lcom/android/server/pm/resolution/ComponentResolver;->isProtectedAction(Landroid/content/IntentFilter;)Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 532
    iget-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-eqz p1, :cond_40

    .line 540
    iget-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-nez p1, :cond_36

    .line 541
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 543
    :cond_36
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    invoke-static {p3, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4a

    .line 555
    :cond_40
    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    return-void

    .line 572
    :cond_47
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    :goto_4a
    return-void

    :cond_4b
    if-nez p2, :cond_4e

    return-void

    .line 586
    :cond_4e
    invoke-static {p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver;->findMatchingActivity(Ljava/util/List;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivity;

    move-result-object p0

    if-nez p0, :cond_58

    .line 595
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 602
    :cond_58
    new-instance p1, Ljava/util/ArrayList;

    .line 603
    invoke-interface {p0}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 608
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 609
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_79

    .line 617
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 623
    :cond_79
    invoke-virtual {v0}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_91

    .line 625
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 627
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_91

    .line 635
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 641
    :cond_91
    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_a9

    .line 643
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 644
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_a9

    .line 652
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 659
    :cond_a9
    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object p0

    if-eqz p0, :cond_c1

    .line 661
    new-instance p2, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/android/server/pm/resolution/ComponentResolver$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p1, p2, p0}, Lcom/android/server/pm/resolution/ComponentResolver;->getIntentListSubset(Ljava/util/List;Ljava/util/function/Function;Ljava/util/Iterator;)V

    .line 663
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_c1

    .line 671
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    return-void

    .line 678
    :cond_c1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_c7
    if-ltz p0, :cond_de

    .line 680
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p2

    .line 679
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 p0, p0, -0x1

    goto :goto_c7

    .line 682
    :cond_de
    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    if-le p0, v2, :cond_e7

    .line 690
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    :cond_e7
    return-void
.end method

.method public assertProvidersNotDefined(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 796
    :try_start_3
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    if-ge v3, v1, :cond_95

    .line 799
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 800
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_91

    .line 801
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    .line 802
    :goto_2a
    array-length v6, v4

    if-ge v5, v6, :cond_91

    .line 803
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 804
    iget-object v6, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedProvider;

    if-eqz v6, :cond_52

    .line 806
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_52

    .line 807
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_54

    :cond_52
    const-string v6, "?"

    .line 809
    :goto_54
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    goto :goto_8e

    .line 810
    :cond_5f
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t install because provider name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v4, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (in package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is already used by "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_8e
    :goto_8e
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_91
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    .line 820
    :cond_95
    monitor-exit v0

    return-void

    :catchall_97
    move-exception p0

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw p0
.end method

.method public fixProtectedFilterPriorities(Ljava/lang/String;)V
    .registers 9

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    if-nez v1, :cond_9

    .line 243
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 245
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mDeferProtectedFilters:Z

    .line 247
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    if-eqz v2, :cond_4f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_17

    goto :goto_4f

    .line 250
    :cond_17
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    const/4 v3, 0x0

    .line 252
    iput-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mProtectedFilters:Ljava/util/List;

    .line 258
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_22
    if-ltz v3, :cond_4a

    .line 259
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 260
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 261
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 262
    invoke-interface {v4}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v4

    .line 263
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-interface {v5}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getClassName()Ljava/lang/String;

    .line 265
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_47

    .line 282
    :cond_44
    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    :goto_47
    add-int/lit8 v3, v3, -0x1

    goto :goto_22

    .line 284
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 285
    monitor-exit v0

    return-void

    .line 248
    :cond_4f
    :goto_4f
    monitor-exit v0

    return-void

    :catchall_51
    move-exception p0

    .line 285
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final onChanged()V
    .registers 1

    .line 105
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public removeAllComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 231
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver;->removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V

    .line 232
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 233
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final removeAllComponentsLocked(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Z)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 702
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, p2, :cond_20

    .line 705
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 706
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    const-string v4, "activity"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 720
    :cond_20
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    move v1, v0

    :goto_29
    if-ge v1, p2, :cond_66

    .line 723
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getProviders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 724
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->removeProvider(Lcom/android/server/pm/pkg/component/ParsedProvider;)V

    .line 725
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_41

    goto :goto_63

    .line 731
    :cond_41
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v4, v0

    .line 732
    :goto_4c
    array-length v5, v3

    if-ge v4, v5, :cond_63

    .line 733
    iget-object v5, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_60

    .line 734
    iget-object v5, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProvidersByAuthority:Landroid/util/ArrayMap;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 755
    :cond_66
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    move v1, v0

    :goto_6f
    if-ge v1, p2, :cond_86

    .line 758
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getReceivers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 759
    iget-object v3, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    const-string/jumbo v4, "receiver"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->removeActivity(Lcom/android/server/pm/pkg/component/ParsedActivity;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 773
    :cond_86
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result p2

    :goto_8e
    if-ge v0, p2, :cond_a2

    .line 776
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedService;

    .line 777
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->removeService(Lcom/android/server/pm/pkg/component/ParsedService;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    :cond_a2
    return-void
.end method

.method public snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/resolution/ComponentResolverApi;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 96
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->snapshot()Lcom/android/server/pm/resolution/ComponentResolverApi;

    move-result-object p0

    return-object p0
.end method

.method public updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1934
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolverLocked;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v0

    .line 1935
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mActivities:Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/lit8 v1, v1, 0x0

    .line 1936
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mProviders:Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ProviderIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1937
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mReceivers:Lcom/android/server/pm/resolution/ComponentResolver$ReceiverIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ActivityIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1938
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolverBase;->mServices:Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/resolution/ComponentResolver$ServiceIntentResolver;->updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_25

    .line 1940
    invoke-virtual {p0}, Lcom/android/server/pm/resolution/ComponentResolver;->onChanged()V

    .line 1942
    :cond_25
    monitor-exit v0

    return p1

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method
