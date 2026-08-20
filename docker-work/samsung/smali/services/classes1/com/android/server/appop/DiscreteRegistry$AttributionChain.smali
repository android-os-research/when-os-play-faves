.class public final Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttributionChain"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    }
.end annotation


# instance fields
.field public mChain:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mExemptPkgs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

.field public mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 523
    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 524
    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 527
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V
    .registers 13

    .line 559
    new-instance v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;-><init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V

    const/4 p1, 0x0

    move p2, p1

    .line 562
    :goto_d
    iget-object p3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_33

    .line 563
    iget-object p3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 564
    invoke-virtual {p3, v6}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p4

    if-eqz p4, :cond_30

    .line 565
    iget-object p0, v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 p4, -0x1

    cmp-long p1, p1, p4

    if-eqz p1, :cond_2f

    .line 566
    iput-object p0, p3, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    :cond_2f
    return-void

    :cond_30
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 572
    :cond_33
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_99

    invoke-virtual {p0, v6}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_42

    goto :goto_99

    .line 574
    :cond_42
    invoke-virtual {p0, v6}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 575
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9e

    .line 578
    :cond_4e
    :goto_4e
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_9e

    .line 579
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 580
    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p3

    if-nez p3, :cond_70

    iget-object p3, p2, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide p3, p3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-object p5, v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v0, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p3, p3, v0

    if-gtz p3, :cond_80

    :cond_70
    iget-object p3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    .line 582
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_86

    invoke-virtual {p0, p2}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 583
    :cond_80
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_9e

    .line 585
    :cond_86
    iget-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_96

    .line 586
    iget-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9e

    :cond_96
    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    .line 573
    :cond_99
    :goto_99
    iget-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_9e
    :goto_9e
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_aa

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object p1

    goto :goto_ab

    :cond_aa
    move-object p1, p2

    :goto_ab
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 592
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_b7

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getLastVisible()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object p2

    :cond_b7
    iput-object p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mLastVisibleEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    return-void
.end method

.method public final getLastVisible()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-lez v0, :cond_20

    .line 549
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    .line 550
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mExemptPkgs:Ljava/util/Set;

    iget-object v3, v1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
    .registers 3

    .line 543
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_21

    :cond_18
    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x0

    :goto_22
    return-object p0
.end method

.method public isComplete()Z
    .registers 4

    .line 531
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->getStart()Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mChain:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    invoke-virtual {p0, v0}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :goto_24
    return v1
.end method

.method public final isEnd(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_b

    .line 596
    iget-object p1, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget p1, p1, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/2addr p1, p0

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final isStart(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 601
    iget-object p0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .registers 12

    .line 536
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->mStartEvent:Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;

    if-eqz v0, :cond_11

    if-nez p5, :cond_7

    goto :goto_11

    :cond_7
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 539
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result p0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method
