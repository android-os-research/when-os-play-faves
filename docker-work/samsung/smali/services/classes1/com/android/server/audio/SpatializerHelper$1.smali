.class public Lcom/android/server/audio/SpatializerHelper$1;
.super Landroid/util/SparseIntArray;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .line 81
    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    .line 83
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x4

    .line 85
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x8

    .line 87
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xd

    .line 88
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xc

    .line 89
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xb

    .line 90
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x16

    .line 91
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x5

    .line 92
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x6

    .line 93
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x13

    .line 94
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x17

    .line 95
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1a

    .line 96
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1b

    .line 97
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1e

    .line 99
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
