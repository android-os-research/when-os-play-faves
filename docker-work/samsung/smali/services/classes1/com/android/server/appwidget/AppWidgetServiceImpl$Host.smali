.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Host"
.end annotation


# instance fields
.field public callbacks:Lcom/android/internal/appwidget/IAppWidgetHost;

.field public id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

.field public lastWidgetUpdateSequenceNo:J

.field public tag:I

.field public widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field public zombie:Z


# direct methods
.method public static bridge synthetic -$$Nest$mhostsPackageForUser(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Ljava/lang/String;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->hostsPackageForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 5449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 5455
    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->tag:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;-><init>()V

    return-void
.end method


# virtual methods
.method public getPendingUpdatesForIdLocked(Landroid/content/Context;ILandroid/util/LongSparseArray;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/util/LongSparseArray<",
            "Landroid/appwidget/PendingHostUpdate;",
            ">;)V"
        }
    .end annotation

    .line 5488
    iget-wide v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 5489
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_5c

    .line 5491
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 5492
    iget v5, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->appWidgetId:I

    if-ne v5, p2, :cond_59

    .line 5493
    iget-object p0, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v2, 0x1

    sub-int/2addr p0, v2

    :goto_1f
    if-ltz p0, :cond_58

    .line 5494
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    cmp-long v3, v5, v0

    if-gtz v3, :cond_2c

    goto :goto_55

    .line 5498
    :cond_2c
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->updateSequenceNos:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    if-eqz v3, :cond_46

    if-eq v3, v2, :cond_3b

    .line 5510
    invoke-static {p2, v3}, Landroid/appwidget/PendingHostUpdate;->viewDataChanged(II)Landroid/appwidget/PendingHostUpdate;

    move-result-object v3

    goto :goto_52

    .line 5502
    :cond_3b
    iget-object v3, v4, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 5503
    invoke-virtual {v3, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getInfoLocked(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    .line 5502
    invoke-static {p2, v3}, Landroid/appwidget/PendingHostUpdate;->providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v3

    goto :goto_52

    .line 5507
    :cond_46
    invoke-virtual {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->getEffectiveViewsLocked()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->-$$Nest$smcloneIfLocalBinder(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 5506
    invoke-static {p2, v3}, Landroid/appwidget/PendingHostUpdate;->updateAppWidget(ILandroid/widget/RemoteViews;)Landroid/appwidget/PendingHostUpdate;

    move-result-object v3

    .line 5512
    :goto_52
    invoke-virtual {p3, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_55
    add-int/lit8 p0, p0, -0x1

    goto :goto_1f

    :cond_58
    return-void

    :cond_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 5517
    :cond_5c
    iget-wide p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->lastWidgetUpdateSequenceNo:J

    .line 5518
    invoke-static {p2}, Landroid/appwidget/PendingHostUpdate;->appWidgetRemoved(I)Landroid/appwidget/PendingHostUpdate;

    move-result-object p2

    .line 5517
    invoke-virtual {p3, p0, p1, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public getUserId()I
    .registers 1

    .line 5463
    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public getWidgetUids()Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5522
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 5523
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_2b

    .line 5524
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 5526
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_28

    .line 5527
    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    .line 5528
    iget v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    iget-object v2, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_2b
    return-object v0
.end method

.method public final hostsPackageForUser(Ljava/lang/String;I)Z
    .registers 8

    .line 5471
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_2f

    .line 5473
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v3, :cond_2c

    .line 5474
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-ne v4, p2, :cond_2c

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 5475
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 p0, 0x1

    return p0

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2f
    return v1
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .registers 4

    .line 5467
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_12

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->zombie:Z

    if-eqz p0, :cond_16

    const-string p0, " Z"

    goto :goto_18

    :cond_16
    const-string p0, ""

    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
