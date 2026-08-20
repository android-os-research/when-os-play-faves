.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QTableInfoForSort"
.end annotation


# instance fields
.field private curState:J

.field private lastUpdateTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetcurState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->curState:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastUpdateTime(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->lastUpdateTime:J

    return-wide v0
.end method

.method constructor <init>(JI)V
    .registers 4

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->lastUpdateTime:J

    int-to-long p1, p3

    .line 845
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$QTableInfoForSort;->curState:J

    return-void
.end method
