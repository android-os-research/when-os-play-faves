.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private blacklist mFirst64Removed:J

.field private blacklist mNotificationLevel:I

.field private final blacklist mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private blacklist mRemainderRemoved:[J


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
            "TC;TT;TA;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "notifier":Lcom/android/internal/util/CallbackRegistry$NotifierCallback;, "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 78
    iput-object p1, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    .line 79
    return-void
.end method

.method private blacklist isRemovedLocked(I)Z
    .registers 14
    .param p1, "index"    # I

    .line 229
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_15

    .line 231
    shl-long/2addr v2, p1

    .line 232
    .local v2, "bitMask":J
    iget-wide v7, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    and-long/2addr v7, v2

    cmp-long v0, v7, v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v4, v6

    :goto_14
    return v4

    .line 233
    .end local v2    # "bitMask":J
    :cond_15
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v5, :cond_1a

    .line 235
    return v6

    .line 237
    :cond_1a
    div-int/lit8 v7, p1, 0x40

    sub-int/2addr v7, v4

    .line 238
    .local v7, "maskIndex":I
    array-length v8, v5

    if-lt v7, v8, :cond_21

    .line 240
    return v6

    .line 243
    :cond_21
    aget-wide v8, v5, v7

    .line 244
    .local v8, "bits":J
    rem-int/lit8 v5, p1, 0x40

    shl-long/2addr v2, v5

    .line 245
    .restart local v2    # "bitMask":J
    and-long v10, v8, v2

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2d

    goto :goto_2e

    :cond_2d
    move v4, v6

    :goto_2e
    return v4
.end method

.method private blacklist notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .registers 15
    .param p2, "arg"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "bits"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v0, 0x1

    .line 202
    .local v0, "bitMask":J
    move v2, p4

    .local v2, "i":I
    :goto_3
    if-ge v2, p5, :cond_1d

    .line 203
    and-long v3, p6, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 204
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 206
    :cond_18
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    .end local v2    # "i":I
    :cond_1d
    return-void
.end method

.method private blacklist notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 14
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 124
    .local v0, "maxNotified":I
    iget-wide v8, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 125
    return-void
.end method

.method private blacklist notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 15
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 144
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v1, :cond_c

    const/4 v1, -0x1

    goto :goto_f

    :cond_c
    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    move v9, v1

    .line 148
    .local v9, "remainderIndex":I
    invoke-direct {p0, p1, p2, p3, v9}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 152
    add-int/lit8 v1, v9, 0x2

    mul-int/lit8 v10, v1, 0x40

    .line 155
    .local v10, "startCallbackIndex":I
    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, v10

    move v6, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 156
    return-void
.end method

.method private blacklist notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 21
    .param p2, "arg"    # I
    .param p4, "remainderIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    move-object/from16 v8, p0

    if-gez p4, :cond_e

    .line 172
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/util/CallbackRegistry;->notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    goto :goto_3b

    .line 174
    :cond_e
    iget-object v0, v8, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v9, v0, p4

    .line 175
    .local v9, "bits":J
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v11, v0, 0x40

    .line 176
    .local v11, "startIndex":I
    iget-object v0, v8, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v11, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 177
    .local v12, "endIndex":I
    add-int/lit8 v0, p4, -0x1

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct {v8, v13, v14, v15, v0}, Lcom/android/internal/util/CallbackRegistry;->notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v11

    move v5, v12

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 180
    .end local v9    # "bits":J
    .end local v11    # "startIndex":I
    .end local v12    # "endIndex":I
    :goto_3b
    return-void
.end method

.method private blacklist removeRemovedCallbacks(IJ)V
    .registers 12
    .param p1, "startIndex"    # I
    .param p2, "removed"    # J

    .line 259
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    add-int/lit8 v0, p1, 0x40

    .line 261
    .local v0, "endIndex":I
    const-wide/high16 v1, -0x8000000000000000L

    .line 262
    .local v1, "bitMask":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_6
    if-lt v3, p1, :cond_1a

    .line 263
    and-long v4, p2, v1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_15

    .line 264
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_15
    const/4 v4, 0x1

    ushr-long/2addr v1, v4

    .line 262
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 268
    .end local v3    # "i":I
    :cond_1a
    return-void
.end method

.method private blacklist setRemovalBitLocked(I)V
    .registers 9
    .param p1, "index"    # I

    .line 286
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v0, 0x1

    const/16 v2, 0x40

    if-ge p1, v2, :cond_d

    .line 288
    shl-long/2addr v0, p1

    .line 289
    .local v0, "bitMask":J
    iget-wide v2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    or-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 290
    .end local v0    # "bitMask":J
    goto :goto_40

    .line 291
    :cond_d
    div-int/lit8 v3, p1, 0x40

    add-int/lit8 v3, v3, -0x1

    .line 292
    .local v3, "remainderIndex":I
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    if-nez v4, :cond_21

    .line 293
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    goto :goto_36

    .line 294
    :cond_21
    array-length v4, v4

    if-ge v4, v3, :cond_36

    .line 296
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v4, v2

    new-array v2, v4, [J

    .line 297
    .local v2, "newRemainders":[J
    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 300
    .end local v2    # "newRemainders":[J
    :cond_36
    :goto_36
    rem-int/lit8 v2, p1, 0x40

    shl-long/2addr v0, v2

    .line 301
    .restart local v0    # "bitMask":J
    iget-object v2, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v4, v2, v3

    or-long/2addr v4, v0

    aput-wide v4, v2, v3

    .line 303
    .end local v0    # "bitMask":J
    .end local v3    # "remainderIndex":I
    :goto_40
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 216
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-ltz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 218
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_f
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 220
    :cond_14
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "index":I
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist clear()V
    .registers 2

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 346
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_b

    .line 347
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_23

    .line 348
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 349
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_23

    .line 350
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_25

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 353
    .end local v0    # "i":I
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 345
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist clone()Lcom/android/internal/util/CallbackRegistry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry<",
            "TC;TT;TA;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 356
    const/4 v0, 0x0

    .line 358
    .local v0, "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/CallbackRegistry;

    move-object v0, v1

    .line 359
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    .line 360
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    .line 361
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 362
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    .line 363
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 364
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v1, :cond_37

    .line 365
    invoke-direct {p0, v2}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 366
    iget-object v3, v0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    iget-object v4, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_34} :catch_3a
    .catchall {:try_start_2 .. :try_end_34} :catchall_38

    .line 364
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 371
    .end local v1    # "numListeners":I
    .end local v2    # "i":I
    :cond_37
    goto :goto_3e

    .line 355
    .end local v0    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :catchall_38
    move-exception v0

    goto :goto_40

    .line 369
    .restart local v0    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :catch_3a
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_3b
    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 372
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_3e
    monitor-exit p0

    return-object v0

    .line 355
    .end local v0    # "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :goto_40
    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    invoke-virtual {p0}, Lcom/android/internal/util/CallbackRegistry;->clone()Lcom/android/internal/util/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist copyListeners()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TC;>;"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 311
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v1, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 313
    .local v1, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v1, :cond_27

    .line 314
    invoke-direct {p0, v2}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 315
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    .line 313
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 318
    .end local v2    # "i":I
    :cond_27
    monitor-exit p0

    return-object v0

    .line 310
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .end local v1    # "numListeners":I
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isEmpty()Z
    .registers 6

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 328
    monitor-exit p0

    return v1

    .line 329
    :cond_c
    :try_start_c
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_29

    const/4 v2, 0x0

    if-nez v0, :cond_13

    .line 330
    monitor-exit p0

    return v2

    .line 332
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 333
    .local v0, "numListeners":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_27

    .line 334
    invoke-direct {p0, v3}, Lcom/android/internal/util/CallbackRegistry;->isRemovedLocked(I)Z

    move-result v4
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_29

    if-nez v4, :cond_24

    .line 335
    monitor-exit p0

    return v2

    .line 333
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 338
    .end local v3    # "i":I
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_27
    monitor-exit p0

    return v1

    .line 326
    .end local v0    # "numListeners":I
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 10
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    monitor-enter p0

    .line 92
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry;->notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 94
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    .line 95
    if-nez v0, :cond_3f

    .line 96
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_33

    .line 97
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_33

    .line 98
    iget-object v3, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aget-wide v3, v3, v0

    .line 99
    .local v3, "removedBits":J
    cmp-long v5, v3, v1

    if-eqz v5, :cond_30

    .line 100
    add-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x40

    invoke-direct {p0, v5, v3, v4}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 101
    iget-object v5, p0, Lcom/android/internal/util/CallbackRegistry;->mRemainderRemoved:[J

    aput-wide v1, v5, v0

    .line 97
    .end local v3    # "removedBits":J
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 105
    .end local v0    # "i":I
    :cond_33
    iget-wide v3, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3f

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/util/CallbackRegistry;->removeRemovedCallbacks(IJ)V

    .line 107
    iput-wide v1, p0, Lcom/android/internal/util/CallbackRegistry;->mFirst64Removed:J
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 110
    :cond_3f
    monitor-exit p0

    return-void

    .line 91
    .end local p1    # "sender":Ljava/lang/Object;, "TT;"
    .end local p2    # "arg":I
    .end local p3    # "arg2":Ljava/lang/Object;, "TA;"
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    .line 275
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/CallbackRegistry;->mNotificationLevel:I

    if-nez v0, :cond_b

    .line 276
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    .line 278
    .end local p0    # "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :cond_b
    iget-object v0, p0, Lcom/android/internal/util/CallbackRegistry;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_16

    .line 280
    invoke-direct {p0, v0}, Lcom/android/internal/util/CallbackRegistry;->setRemovalBitLocked(I)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 283
    .end local v0    # "index":I
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 274
    .end local p1    # "callback":Ljava/lang/Object;, "TC;"
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
