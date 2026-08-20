.class public Lcom/android/server/am/mars/filter/FilterChain;
.super Ljava/lang/Object;
.source "FilterChain.java"


# instance fields
.field public mFilter:Lcom/android/server/am/mars/filter/IFilter;

.field public nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/IFilter;Lcom/android/server/am/mars/filter/FilterChain;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    .line 9
    iput-object p2, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;III)I
    .registers 6

    .line 13
    iget-object v0, p0, Lcom/android/server/am/mars/filter/FilterChain;->mFilter:Lcom/android/server/am/mars/filter/IFilter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/IFilter;->filter(Ljava/lang/String;III)I

    move-result v0

    if-lez v0, :cond_9

    return v0

    .line 17
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChain;->getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 18
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/FilterChain;->getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/mars/filter/FilterChain;->filter(Ljava/lang/String;III)I

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final getNextFilterChain()Lcom/android/server/am/mars/filter/FilterChain;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/server/am/mars/filter/FilterChain;->nextFilterChain:Lcom/android/server/am/mars/filter/FilterChain;

    return-object p0
.end method
