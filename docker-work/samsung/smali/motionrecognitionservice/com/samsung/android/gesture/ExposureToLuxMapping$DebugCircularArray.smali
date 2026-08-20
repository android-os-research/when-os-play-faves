.class Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;
.super Ljava/lang/Object;
.source "ExposureToLuxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ExposureToLuxMapping;
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

    .line 1103
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    .line 1105
    iput p1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mSize:I

    .line 1106
    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1109
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mSize:I

    if-lt v0, v1, :cond_10

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1111
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1119
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .line 1115
    .local p0, "this":Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;, "Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray<TE;>;"
    iget-object v0, p0, Lcom/samsung/android/gesture/ExposureToLuxMapping$DebugCircularArray;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
