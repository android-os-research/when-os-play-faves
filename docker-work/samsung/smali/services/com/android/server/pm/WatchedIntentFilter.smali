.class public Lcom/android/server/pm/WatchedIntentFilter;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedIntentFilter.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable<",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        ">;"
    }
.end annotation


# instance fields
.field public mFilter:Landroid/content/IntentFilter;


# direct methods
.method public static bridge synthetic -$$Nest$monChanged(Lcom/android/server/pm/WatchedIntentFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/IntentFilter;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;)V
    .registers 2

    .line 93
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public static toIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 703
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 704
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v2}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method public static toWatchedIntentFilterList(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            ">;"
        }
    .end annotation

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 692
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 693
    new-instance v2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-direct {v2, v3}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final actionsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final addAction(Ljava/lang/String;)V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addCategory(Ljava/lang/String;)V
    .registers 2

    .line 584
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    return-void
.end method

.method public final addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataPath(Landroid/os/PatternMatcher;)V
    .registers 3

    .line 527
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataPath(Ljava/lang/String;I)V
    .registers 4

    .line 519
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataScheme(Ljava/lang/String;)V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V
    .registers 3

    .line 439
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Landroid/os/PatternMatcher;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataSchemeSpecificPart(Ljava/lang/String;I)V
    .registers 4

    .line 431
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1, p2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDataType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addDynamicDataType(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentFilter$MalformedMimeTypeException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addDynamicDataType(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final addMimeGroup(Ljava/lang/String;)V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addMimeGroup(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final authoritiesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/content/IntentFilter$AuthorityEntry;",
            ">;"
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final categoriesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final clearDynamicDataTypes()V
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->clearDynamicDataTypes()V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public cloneFilter()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 2

    .line 117
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    return-object v0
.end method

.method public final countActions()I
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countActions()I

    move-result p0

    return p0
.end method

.method public final countCategories()I
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countCategories()I

    move-result p0

    return p0
.end method

.method public final countDataAuthorities()I
    .registers 1

    .line 491
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result p0

    return p0
.end method

.method public final countDataPaths()I
    .registers 1

    .line 535
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result p0

    return p0
.end method

.method public final countDataSchemeSpecificParts()I
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result p0

    return p0
.end method

.method public final countDataSchemes()I
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result p0

    return p0
.end method

.method public final countDataTypes()I
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result p0

    return p0
.end method

.method public final countMimeGroups()I
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result p0

    return p0
.end method

.method public countStaticDataTypes()I
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->countStaticDataTypes()I

    move-result p0

    return p0
.end method

.method public final dataTypes()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->dataTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public debugCheck()Z
    .registers 1

    .line 670
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result p0

    return p0
.end method

.method public final describeContents()I
    .registers 1

    .line 663
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->describeContents()I

    move-result p0

    return p0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 3

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public final getAction(I)Ljava/lang/String;
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getAutoVerify()Z
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result p0

    return p0
.end method

.method public final getCategory(I)Ljava/lang/String;
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;
    .registers 2

    .line 498
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object p0

    return-object p0
.end method

.method public final getDataPath(I)Landroid/os/PatternMatcher;
    .registers 2

    .line 542
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object p0

    return-object p0
.end method

.method public final getDataScheme(I)Ljava/lang/String;
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;
    .registers 2

    .line 454
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object p0

    return-object p0
.end method

.method public final getDataType(I)Ljava/lang/String;
    .registers 2

    .line 337
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHosts()[Ljava/lang/String;
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHosts()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHostsList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 677
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getHostsList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public final getMimeGroup(I)Ljava/lang/String;
    .registers 2

    .line 374
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOrder()I
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getOrder()I

    move-result p0

    return p0
.end method

.method public final getPriority()I
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    return p0
.end method

.method public getVisibilityToInstantApp()I
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getVisibilityToInstantApp()I

    move-result p0

    return p0
.end method

.method public final handleAllWebDataURI()Z
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->handleAllWebDataURI()Z

    move-result p0

    return p0
.end method

.method public final handlesWebUris(Z)Z
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result p0

    return p0
.end method

.method public final hasAction(Ljava/lang/String;)Z
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasCategory(Ljava/lang/String;)Z
    .registers 2

    .line 605
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasDataAuthority(Landroid/net/Uri;)Z
    .registers 2

    .line 505
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final hasDataPath(Ljava/lang/String;)Z
    .registers 2

    .line 549
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasDataScheme(Ljava/lang/String;)Z
    .registers 2

    .line 417
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasDataSchemeSpecificPart(Ljava/lang/String;)Z
    .registers 2

    .line 461
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasDataType(Ljava/lang/String;)Z
    .registers 2

    .line 309
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasDataType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasExactDynamicDataType(Ljava/lang/String;)Z
    .registers 2

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactDynamicDataType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasExactStaticDataType(Ljava/lang/String;)Z
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasExactStaticDataType(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final hasMimeGroup(Ljava/lang/String;)Z
    .registers 2

    .line 367
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->hasMimeGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isExplicitlyVisibleToInstantApp()Z
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->isExplicitlyVisibleToInstantApp()Z

    move-result p0

    return p0
.end method

.method public isImplicitlyVisibleToInstantApp()Z
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->isImplicitlyVisibleToInstantApp()Z

    move-result p0

    return p0
.end method

.method public isVisibleToInstantApp()Z
    .registers 1

    .line 212
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->isVisibleToInstantApp()Z

    move-result p0

    return p0
.end method

.method public final match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I
    .registers 5

    .line 627
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    move-object v0, p0

    .line 647
    iget-object v0, v0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public final matchAction(Ljava/lang/String;)Z
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchAction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final matchCategories(Ljava/util/Set;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 619
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchCategories(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I
    .registers 4

    .line 577
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/IntentFilter;->matchData(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public final matchDataAuthority(Landroid/net/Uri;)I
    .registers 2

    .line 563
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;)I

    move-result p0

    return p0
.end method

.method public final matchDataAuthority(Landroid/net/Uri;Z)I
    .registers 3

    .line 570
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Landroid/content/IntentFilter;->matchDataAuthority(Landroid/net/Uri;Z)I

    move-result p0

    return p0
.end method

.method public final maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_3

    goto :goto_9

    .line 72
    :cond_3
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/WatchedIntentFilter$WatchedIterator;-><init>(Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/Iterator;)V

    move-object p1, v0

    :goto_9
    return-object p1
.end method

.method public final mimeGroupsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->mimeGroupsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final needsVerification()Z
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0}, Landroid/content/IntentFilter;->needsVerification()Z

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 79
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final pathsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final schemeSpecificPartsIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    .line 468
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final schemesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public final setOrder(I)V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->setOrder(I)V

    .line 147
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public final setPriority(I)V
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public setVerified(Z)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->setVerified(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public setVisibilityToInstantApp(I)V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->setVisibilityToInstantApp(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->onChanged()V

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .registers 2

    .line 713
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 44
    invoke-virtual {p0}, Lcom/android/server/pm/WatchedIntentFilter;->snapshot()Lcom/android/server/pm/WatchedIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public final typesIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentFilter;->maybeWatch(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
