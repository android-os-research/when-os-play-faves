.class public final Lcom/android/server/stats/pull/netstats/SubInfo;
.super Ljava/lang/Object;
.source "SubInfo.java"


# instance fields
.field public final carrierId:I

.field public final isOpportunistic:Z

.field public final mcc:Ljava/lang/String;

.field public final mnc:Ljava/lang/String;

.field public final subId:I

.field public final subscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    .line 42
    iput p2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    .line 43
    iput-object p3, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 46
    iput-boolean p6, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 52
    const-class v2, Lcom/android/server/stats/pull/netstats/SubInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_45

    .line 53
    :cond_10
    check-cast p1, Lcom/android/server/stats/pull/netstats/SubInfo;

    .line 54
    iget v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    iget v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    if-ne v2, v3, :cond_43

    iget v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    iget v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    if-ne v2, v3, :cond_43

    iget-boolean v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    iget-boolean v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object p0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :goto_44
    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 64
    iget v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mcc:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->mnc:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->carrierId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->subscriberId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/android/server/stats/pull/netstats/SubInfo;->isOpportunistic:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
