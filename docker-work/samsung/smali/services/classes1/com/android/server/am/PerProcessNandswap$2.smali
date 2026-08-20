.class public Lcom/android/server/am/PerProcessNandswap$2;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PerProcessNandswap;->sortMemoryItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/PerProcessNandswap$MemoryItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/PerProcessNandswap$MemoryItem;Lcom/android/server/am/PerProcessNandswap$MemoryItem;)I
    .registers 5

    .line 627
    iget-wide p0, p1, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    iget-wide v0, p2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;->writeback:J

    cmp-long p2, p0, v0

    if-gez p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    cmp-long p0, p0, v0

    if-lez p0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 624
    check-cast p1, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    check-cast p2, Lcom/android/server/am/PerProcessNandswap$MemoryItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/PerProcessNandswap$2;->compare(Lcom/android/server/am/PerProcessNandswap$MemoryItem;Lcom/android/server/am/PerProcessNandswap$MemoryItem;)I

    move-result p0

    return p0
.end method
