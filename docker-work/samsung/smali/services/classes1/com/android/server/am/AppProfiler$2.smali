.class public Lcom/android/server/am/AppProfiler$2;
.super Ljava/lang/Object;
.source "AppProfiler.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppProfiler;->reportMemUsage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/ProcessMemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 1602
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$2;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I
    .registers 8

    .line 1604
    iget p0, p1, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    iget v0, p2, Lcom/android/server/am/ProcessMemInfo;->oomAdj:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_d

    if-ge p0, v0, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 1607
    :cond_d
    iget-wide p0, p1, Lcom/android/server/am/ProcessMemInfo;->pss:J

    iget-wide v3, p2, Lcom/android/server/am/ProcessMemInfo;->pss:J

    cmp-long p2, p0, v3

    if-eqz p2, :cond_1b

    cmp-long p0, p0, v3

    if-gez p0, :cond_1a

    move v1, v2

    :cond_1a
    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1602
    check-cast p1, Lcom/android/server/am/ProcessMemInfo;

    check-cast p2, Lcom/android/server/am/ProcessMemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppProfiler$2;->compare(Lcom/android/server/am/ProcessMemInfo;Lcom/android/server/am/ProcessMemInfo;)I

    move-result p0

    return p0
.end method
