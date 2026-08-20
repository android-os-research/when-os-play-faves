.class public Lcom/android/server/am/AppProfiler$TrimHistogram;
.super Ljava/lang/Object;
.source "AppProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrimHistogram"
.end annotation


# instance fields
.field public mCallCount:[I

.field public mTime:J

.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;)V
    .registers 2

    .line 1322
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$TrimHistogram;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 1320
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppProfiler;J)V
    .registers 4

    .line 1325
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$TrimHistogram;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 1320
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mCallCount:[I

    .line 1326
    iput-wide p2, p0, Lcom/android/server/am/AppProfiler$TrimHistogram;->mTime:J

    return-void
.end method
