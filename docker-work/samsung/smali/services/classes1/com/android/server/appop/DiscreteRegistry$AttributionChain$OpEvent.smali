.class public final Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpEvent"
.end annotation


# instance fields
.field public mAttributionTag:Ljava/lang/String;

.field public mOpCode:I

.field public mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

.field public mPkgName:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V
    .registers 6

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    .line 492
    iput p2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    .line 493
    iput-object p3, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 494
    iput p4, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    .line 495
    iput-object p5, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    return-void
.end method


# virtual methods
.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 6

    .line 514
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v2, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 517
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->packageOpEquals(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-object p1, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->equalsExceptDuration(Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public matches(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z
    .registers 7

    .line 500
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne p1, p2, :cond_30

    iget-object p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 501
    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne p1, p4, :cond_30

    iget-object p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpEvent:Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne p1, p2, :cond_30

    iget p1, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne p1, p2, :cond_30

    iget-wide p0, p0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide p2, p5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long p0, p0, p2

    if-nez p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public packageOpEquals(Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;)Z
    .registers 4

    .line 508
    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    iget v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mUid:I

    if-ne v0, v1, :cond_22

    iget-object v0, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mAttributionTag:Ljava/lang/String;

    .line 509
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget p0, p0, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    iget p1, p1, Lcom/android/server/appop/DiscreteRegistry$AttributionChain$OpEvent;->mOpCode:I

    if-ne p0, p1, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method
