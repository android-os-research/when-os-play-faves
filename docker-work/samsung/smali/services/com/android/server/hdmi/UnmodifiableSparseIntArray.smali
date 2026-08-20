.class public final Lcom/android/server/hdmi/UnmodifiableSparseIntArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseIntArray.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImmutableSparseIntArray"


# instance fields
.field public final mArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public get(I)I
    .registers 2

    .line 38
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public get(II)I
    .registers 3

    .line 42
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public indexOfValue(I)I
    .registers 2

    .line 54
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public size()I
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)I
    .registers 2

    .line 50
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0
.end method
