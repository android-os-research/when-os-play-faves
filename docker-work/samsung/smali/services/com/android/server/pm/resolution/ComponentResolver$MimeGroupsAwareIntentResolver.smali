.class public abstract Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/resolution/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MimeGroupsAwareIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/util/Pair<",
        "+",
        "Lcom/android/server/pm/pkg/component/ParsedComponent;",
        "Lcom/android/server/pm/pkg/component/ParsedIntentInfo;",
        ">;R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/IntentResolver<",
        "TF;TR;>;"
    }
.end annotation


# instance fields
.field public mIsUpdatingMimeGroup:Z

.field public final mMimeGroupToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 833
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 826
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 827
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 834
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;Lcom/android/server/pm/UserManagerService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver<",
            "TF;TR;>;",
            "Lcom/android/server/pm/UserManagerService;",
            ")V"
        }
    .end annotation

    .line 839
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 826
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    .line 827
    iput-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    .line 840
    iput-object p2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->copyFrom(Lcom/android/server/IntentResolver;)V

    .line 842
    iget-object p2, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/IntentResolver;->copyInto(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 843
    iget-boolean p1, p1, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    iput-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return-void
.end method


# virtual methods
.method public addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/snapshot/PackageDataSnapshot;",
            "TF;)V"
        }
    .end annotation

    .line 848
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 852
    move-object v1, p1

    check-cast v1, Lcom/android/server/pm/Computer;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->applyMimeGroups(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V

    .line 853
    invoke-super {p0, p1, p2}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    .line 855
    iget-boolean p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez p1, :cond_1c

    .line 856
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v1, "      MimeGroup: "

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/IntentResolver;->register_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    :cond_1c
    return-void
.end method

.method public bridge synthetic addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V
    .registers 3

    .line 823
    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    return-void
.end method

.method public final applyMimeGroups(Lcom/android/server/pm/Computer;Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;)V"
        }
    .end annotation

    .line 924
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object p0

    .line 926
    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_44

    .line 927
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/component/ParsedComponent;

    .line 928
    invoke-interface {v1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 927
    invoke-interface {p1, v1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 931
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_2d

    :cond_1f
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getMimeGroups()Ljava/util/Map;

    move-result-object v1

    .line 932
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 934
    :goto_2d
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 936
    :try_start_3d
    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_3d .. :try_end_40} :catch_31

    goto :goto_31

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_44
    return-void
.end method

.method public final equalLists(Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_7

    if-nez p2, :cond_6

    const/4 p0, 0x1

    :cond_6
    return p0

    :cond_7
    if-nez p2, :cond_a

    return p0

    .line 914
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_15

    return p0

    .line 918
    :cond_15
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 919
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 920
    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeFilterInternal(Landroid/util/Pair;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 864
    iget-boolean v1, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    if-nez v1, :cond_13

    .line 865
    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    const-string v3, "      MimeGroup: "

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Ljava/lang/Object;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 869
    :cond_13
    invoke-super {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Ljava/lang/Object;)V

    .line 870
    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    return-void
.end method

.method public bridge synthetic removeFilterInternal(Ljava/lang/Object;)V
    .registers 2

    .line 823
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->removeFilterInternal(Landroid/util/Pair;)V

    return-void
.end method

.method public final updateFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "TF;)Z"
        }
    .end annotation

    .line 899
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 900
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object v1

    .line 901
    invoke-virtual {p0, p2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/util/Pair;)V

    .line 903
    invoke-virtual {v0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object p1

    .line 904
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->equalLists(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateMimeGroup(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .line 883
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mMimeGroupToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/util/Pair;

    const/4 v0, 0x0

    if-eqz p3, :cond_d

    .line 884
    array-length v1, p3

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    const/4 v2, 0x1

    .line 886
    iput-boolean v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    move v2, v0

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_27

    .line 889
    aget-object v4, p3, v2

    if-eqz v4, :cond_27

    .line 890
    invoke-virtual {p0, p2, v4}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 891
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->updateFilter(Lcom/android/server/pm/Computer;Landroid/util/Pair;)Z

    move-result v4

    or-int/2addr v3, v4

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 894
    :cond_27
    iput-boolean v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$MimeGroupsAwareIntentResolver;->mIsUpdatingMimeGroup:Z

    return v3
.end method
