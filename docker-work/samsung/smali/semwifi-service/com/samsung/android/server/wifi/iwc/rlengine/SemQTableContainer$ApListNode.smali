.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApListNode"
.end annotation


# instance fields
.field public activityScore:I

.field public firstAdded:J

.field public lastAccessed:J


# direct methods
.method public constructor <init>(IJJ)V
    .registers 6

    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    iput-wide p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    .line 834
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 835
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    return-void
.end method

.method constructor <init>(J)V
    .registers 4

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->firstAdded:J

    const/4 v0, 0x0

    .line 828
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->activityScore:I

    .line 829
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$ApListNode;->lastAccessed:J

    return-void
.end method
