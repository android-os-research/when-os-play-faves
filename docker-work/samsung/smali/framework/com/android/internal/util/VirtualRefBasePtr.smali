.class public final Lcom/android/internal/util/VirtualRefBasePtr;
.super Ljava/lang/Object;
.source "VirtualRefBasePtr.java"


# instance fields
.field private greylist-max-o mNativePtr:J


# direct methods
.method public constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "ptr"    # J

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 28
    invoke-static {p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;->nIncStrong(J)V

    .line 29
    return-void
.end method

.method private static native greylist-max-o nDecStrong(J)V
.end method

.method private static native greylist-max-o nIncStrong(J)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 47
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 48
    nop

    .line 49
    return-void

    .line 47
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 48
    throw v0
.end method

.method public greylist-max-o get()J
    .registers 3

    .line 32
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    return-wide v0
.end method

.method public greylist-max-o release()V
    .registers 6

    .line 36
    iget-wide v0, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    .line 37
    invoke-static {v0, v1}, Lcom/android/internal/util/VirtualRefBasePtr;->nDecStrong(J)V

    .line 38
    iput-wide v2, p0, Lcom/android/internal/util/VirtualRefBasePtr;->mNativePtr:J

    .line 40
    :cond_d
    return-void
.end method
