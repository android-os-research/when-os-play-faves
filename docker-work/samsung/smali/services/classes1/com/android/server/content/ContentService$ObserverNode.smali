.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# instance fields
.field public mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 1836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1837
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    return-void
.end method

.method public static countUriSegments(Landroid/net/Uri;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    .line 1887
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_16

    if-nez p1, :cond_9

    .line 1874
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1876
    :cond_9
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 24

    move-object v1, p0

    move/from16 v0, p2

    .line 1902
    invoke-static/range {p1 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v2

    if-ne v0, v2, :cond_24

    .line 1903
    iget-object v9, v1, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1909
    :cond_24
    invoke-static/range {p1 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 1913
    iget-object v3, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_5b

    .line 1915
    iget-object v5, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1916
    iget-object v5, v6, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    add-int/lit8 v8, v0, 0x1

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    .line 1917
    invoke-virtual/range {v6 .. v14}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    return-void

    :cond_58
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 1924
    :cond_5b
    new-instance v5, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v5, v2}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1925
    iget-object v1, v1, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v0, 0x1

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    .line 1926
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    return-void

    .line 1911
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") used for observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 1894
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    return-void
.end method

.method public final collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 22

    move-object v0, p0

    move/from16 v8, p6

    .line 1962
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez p3, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    .line 1963
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_11
    move-object v10, v1

    const/4 v11, 0x0

    move/from16 v1, p5

    move v12, v11

    :goto_16
    if-ge v12, v9, :cond_6c

    .line 1965
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1969
    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v10, :cond_2b

    const/4 v3, 0x1

    move v4, v3

    goto :goto_2c

    :cond_2b
    move v4, v11

    :goto_2c
    if-eqz v4, :cond_31

    if-nez p4, :cond_31

    goto :goto_69

    :cond_31
    const/4 v3, -0x1

    if-eq v8, v3, :cond_40

    .line 1975
    invoke-static {v2}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v5

    if-eq v5, v3, :cond_40

    invoke-static {v2}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v3

    if-ne v8, v3, :cond_69

    :cond_40
    if-eqz p2, :cond_4b

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_50

    .line 1983
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v3, :cond_50

    goto :goto_69

    .line 1992
    :cond_4b
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v3, :cond_50

    goto :goto_69

    .line 2002
    :cond_50
    iget-boolean v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->noDelay:Z

    if-eqz v3, :cond_58

    const v3, 0x8000

    or-int/2addr v1, v3

    :cond_58
    move v13, v1

    .line 2006
    iget-object v3, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v5, v2, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    move-object/from16 v1, p7

    move-object v2, v3

    move v3, v5

    move-object v5, p1

    move v6, v13

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/ContentService$ObserverCollector;->collect(Landroid/database/IContentObserver;IZLandroid/net/Uri;II)V

    move v1, v13

    :cond_69
    :goto_69
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    :cond_6c
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 27

    move-object/from16 v8, p0

    move/from16 v15, p2

    move/from16 v14, p3

    if-lt v14, v15, :cond_1d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 2030
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    move-object/from16 v13, p1

    goto :goto_38

    :cond_1d
    move-object/from16 v13, p1

    if-ge v14, v15, :cond_38

    .line 2033
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 2037
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    goto :goto_39

    :cond_38
    :goto_38
    const/4 v9, 0x0

    :goto_39
    move-object v0, v9

    .line 2041
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_41
    if-ge v2, v1, :cond_75

    .line 2043
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/server/content/ContentService$ObserverNode;

    if-eqz v0, :cond_56

    .line 2044
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    :cond_56
    add-int/lit8 v12, v14, 0x1

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    .line 2046
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    if-eqz v0, :cond_6c

    goto :goto_75

    :cond_6c
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p1

    move/from16 v15, p2

    move/from16 v14, p3

    goto :goto_41

    :cond_75
    :goto_75
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2016
    invoke-static {p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1843
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "/"

    const-string v4, ""

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-lez v2, :cond_57

    .line 1844
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1845
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_2f

    .line 1847
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2f
    move v5, v9

    .line 1849
    :goto_30
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_58

    .line 1850
    aget v6, p6, v10

    add-int/2addr v6, v10

    aput v6, p6, v10

    .line 1851
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v2

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_57
    const/4 v2, 0x0

    .line 1855
    :cond_58
    iget-object v5, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a9

    if-nez v2, :cond_7f

    .line 1857
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 1858
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_7f

    .line 1860
    :cond_6b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7f
    :goto_7f
    move-object v11, v2

    move v12, v9

    .line 1863
    :goto_81
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_a9

    .line 1864
    aget v1, p6, v9

    add-int/2addr v1, v10

    aput v1, p6, v9

    .line 1865
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_81

    :cond_a9
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 9

    .line 1931
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_24

    .line 1933
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v4, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1935
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_22
    add-int/2addr v2, v3

    goto :goto_8

    .line 1941
    :cond_24
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1942
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v1

    :goto_2f
    if-ge v4, v2, :cond_51

    .line 1944
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1945
    iget-object v6, v5, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_4e

    .line 1946
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1948
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, v5}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    goto :goto_51

    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 1953
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_62

    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_62

    return v3

    :cond_62
    return v1
.end method
