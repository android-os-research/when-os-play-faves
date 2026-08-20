.class public Lcom/android/server/am/mars/filter/FilterManager;
.super Ljava/lang/Object;
.source "FilterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    .line 15
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/FilterManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/FilterManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/FilterManager;
    .registers 1

    .line 23
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager$FilterManagerHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 38
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterFactory;->deInit()V

    .line 39
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->deInit()V

    return-void
.end method

.method public final filter(ILjava/lang/String;II)I
    .registers 8

    .line 43
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1c

    .line 45
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object p0

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, v2}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    .line 49
    :cond_1c
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getFilterChain(I)Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 51
    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/android/server/am/mars/filter/FilterChain;->filter(Ljava/lang/String;III)I

    move-result p0

    return p0

    :cond_2b
    return v0
.end method

.method public final filterForAngryBird(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xf

    .line 117
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForAppLocker(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x2

    .line 65
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForAutoRun(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x3

    .line 69
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForBlockList(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xe

    .line 113
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForCalmMode(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0x13

    .line 93
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public filterForChimera(Ljava/lang/String;II)I
    .registers 7

    const/4 p0, 0x0

    const/4 v0, 0x2

    :goto_2
    const/16 v1, 0x1d

    if-ge v0, v1, :cond_26

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    goto :goto_23

    .line 132
    :cond_b
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object v1

    if-eqz v1, :cond_23

    const/16 v2, 0x12

    .line 133
    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v1

    if-eqz v1, :cond_23

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr p0, v1

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_26
    return p0
.end method

.method public filterForChimera(Ljava/lang/String;III)I
    .registers 5

    .line 141
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/am/mars/filter/FilterFactory;->getFilter(I)Lcom/android/server/am/mars/filter/IFilter;

    move-result-object p0

    if-eqz p0, :cond_14

    const/16 p4, 0x12

    .line 142
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final filterForDBUpdate(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xa

    .line 97
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForDisabler(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x7

    .line 85
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForEmergencyKill(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xc

    .line 105
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForForce(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForFreecess(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x4

    .line 73
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForGame(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0x9

    .line 89
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForLevelChange(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xd

    .line 109
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForOLAF(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0xb

    .line 101
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForRageBird(Ljava/lang/String;II)I
    .registers 5

    const/16 v0, 0x10

    .line 121
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForSBike(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x6

    .line 81
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public filterForSpecificPolicy(ILjava/lang/String;II)I
    .registers 5

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final filterForUDS(Ljava/lang/String;II)I
    .registers 5

    const/4 v0, 0x5

    .line 77
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filter(ILjava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/FilterManager;->setContext(Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/am/mars/filter/FilterFactory;->init(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterChainFactory;->getInstance()Lcom/android/server/am/mars/filter/FilterChainFactory;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/am/mars/filter/FilterChainFactory;->init(Landroid/content/Context;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterManager;->mContext:Landroid/content/Context;

    return-void
.end method
