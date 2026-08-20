.class Lcom/samsung/android/gesture/ClusterNode;
.super Ljava/lang/Object;
.source "PocketProximityCluster.java"


# instance fields
.field private rawdata:Ljava/lang/Integer;

.field private state:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "data"    # I
    .param p2, "state"    # I

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->rawdata:Ljava/lang/Integer;

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->state:Ljava/lang/Integer;

    .line 192
    return-void
.end method


# virtual methods
.method public getData()I
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->rawdata:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getState()I
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->state:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setData(I)V
    .registers 3
    .param p1, "data"    # I

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->rawdata:Ljava/lang/Integer;

    .line 200
    return-void
.end method

.method public setState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/gesture/ClusterNode;->state:Ljava/lang/Integer;

    .line 208
    return-void
.end method
