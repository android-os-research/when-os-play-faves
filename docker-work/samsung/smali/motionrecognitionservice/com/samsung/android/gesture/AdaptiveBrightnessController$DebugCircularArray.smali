.class Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AdaptiveBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DebugCircularArray"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mSize:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "cap"    # I

    .line 63
    .local p0, "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;, "Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    .line 65
    iput p1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mSize:I

    .line 66
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;, "Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mSize:I

    if-lt v1, v2, :cond_13

    .line 71
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 72
    :cond_13
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;, "Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "t":Ljava/lang/Object;, "TE;"
    monitor-exit v0

    .line 89
    return-object v1

    .line 88
    .end local v1    # "t":Ljava/lang/Object;, "TE;"
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final size()I
    .registers 3

    .line 78
    .local p0, "this":Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;, "Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gesture/AdaptiveBrightnessController$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 80
    .local v1, "sz":I
    monitor-exit v0

    .line 81
    return v1

    .line 80
    .end local v1    # "sz":I
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
