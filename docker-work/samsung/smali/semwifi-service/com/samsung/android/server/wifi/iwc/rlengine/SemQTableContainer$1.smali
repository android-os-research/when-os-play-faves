.class Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$1;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->getAverageQAI()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;)V
    .registers 2

    .line 247
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$1;->this$0:Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)I
    .registers 7

    .line 251
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetlastUpdateTime(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetlastUpdateTime(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 253
    :cond_e
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetlastUpdateTime(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide p0

    invoke-static {p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->-$$Nest$fgetlastUpdateTime(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 247
    check-cast p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    check-cast p2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$1;->compare(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)I

    move-result p0

    return p0
.end method
