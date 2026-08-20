.class public Lcom/android/server/content/ContentService$ObserverCollector;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObserverCollector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverCollector$Key;
    }
.end annotation


# instance fields
.field public final collected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/content/ContentService$ObserverCollector$Key;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$20N4P_9I3I81aCYQxFWUsglq_-U(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/content/ContentService$ObserverCollector;->lambda$dispatch$0(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    return-void
.end method

.method public static synthetic lambda$dispatch$0(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V
    .registers 5

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->observer:Landroid/database/IContentObserver;

    iget-boolean v1, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->selfChange:Z

    .line 645
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/Uri;

    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    iget p0, p0, Lcom/android/server/content/ContentService$ObserverCollector$Key;->userId:I

    .line 644
    invoke-interface {v0, v1, p1, v2, p0}, Landroid/database/IContentObserver;->onChangeEtc(Z[Landroid/net/Uri;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method


# virtual methods
.method public collect(Landroid/database/IContentObserver;IZLandroid/net/Uri;II)V
    .registers 14

    .line 628
    new-instance v6, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService$ObserverCollector$Key;-><init>(Landroid/database/IContentObserver;IZII)V

    .line 629
    iget-object p1, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    invoke-virtual {p1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1f

    .line 631
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    iget-object p0, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    invoke-virtual {p0, v6, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :cond_1f
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dispatch()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 638
    :goto_2
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4e

    .line 639
    iget-object v2, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;

    .line 640
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverCollector;->collected:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 642
    new-instance v4, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, v3}, Lcom/android/server/content/ContentService$ObserverCollector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/content/ContentService$ObserverCollector$Key;Ljava/util/List;)V

    .line 653
    iget v3, v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;->flags:I

    const v5, 0x8000

    and-int/2addr v3, v5

    if-eqz v3, :cond_29

    const/4 v3, 0x1

    goto :goto_2a

    :cond_29
    move v3, v0

    .line 654
    :goto_2a
    const-class v5, Landroid/app/ActivityManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManagerInternal;

    iget v2, v2, Lcom/android/server/content/ContentService$ObserverCollector$Key;->uid:I

    .line 655
    invoke-virtual {v5, v2}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    const/4 v5, 0x6

    if-le v2, v5, :cond_48

    if-eqz v3, :cond_3e

    goto :goto_48

    .line 659
    :cond_3e
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v5, 0x2710

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4b

    .line 657
    :cond_48
    :goto_48
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :goto_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4e
    return-void
.end method
