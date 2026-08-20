.class public Lcom/android/server/am/ApplicationState;
.super Ljava/lang/Object;
.source "AppStateBroadcaster.java"


# instance fields
.field public mProcessIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mStopReason:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 395
    iput v0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 396
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addProcess(I)V
    .registers 2

    .line 404
    iget-object p0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTermReason()Ljava/lang/String;
    .registers 2

    .line 400
    sget-object v0, Lcom/android/server/am/AppStateBroadcaster;->APP_TERM_REASONS:[Ljava/lang/String;

    iget p0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    aget-object p0, v0, p0

    return-object p0
.end method

.method public removeProcess(II)Z
    .registers 4

    .line 408
    iget v0, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/am/ApplicationState;->mStopReason:I

    .line 409
    iget-object p2, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 410
    iget-object p0, p0, Lcom/android/server/am/ApplicationState;->mProcessIds:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    return p0
.end method
