.class public Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->sortMemItems(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ActivityManagerService$MemItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$pss:Z


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 13134
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$pss:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I
    .registers 5

    .line 13137
    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$22;->val$pss:Z

    if-eqz p0, :cond_7

    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_9

    :cond_7
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_9
    if-eqz p0, :cond_e

    .line 13138
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_10

    :cond_e
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_10
    cmp-long p0, v0, p0

    if-gez p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    if-lez p0, :cond_1a

    const/4 p0, -0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 13134
    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$22;->compare(Lcom/android/server/am/ActivityManagerService$MemItem;Lcom/android/server/am/ActivityManagerService$MemItem;)I

    move-result p0

    return p0
.end method
