.class public final Lcom/android/server/hdmi/UnmodifiableSparseArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImmutableSparseArray"


# instance fields
.field public final mArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 38
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
