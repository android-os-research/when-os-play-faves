.class public Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetHistoryBuffer"
.end annotation


# instance fields
.field public final buffer:[Ljava/lang/String;

.field public pointer:I

.field public size:I

.field public final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;

.field public totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;I)V
    .registers 3

    .line 3303
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3299
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    .line 3301
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    .line 3304
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    .line 3305
    new-array p1, p2, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized getBuffer()[Ljava/lang/String;
    .registers 7

    monitor-enter p0

    .line 3317
    :try_start_1
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    if-ge v0, v1, :cond_b

    .line 3318
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_33

    monitor-exit p0

    return-object v0

    .line 3320
    :cond_b
    :try_start_b
    new-array v0, v0, [Ljava/lang/String;

    .line 3323
    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    iget v4, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    if-ge v1, v4, :cond_21

    add-int/lit8 v4, v3, 0x1

    .line 3324
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_11

    .line 3326
    :cond_21
    :goto_21
    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    if-ge v2, v1, :cond_31

    add-int/lit8 v1, v3, 0x1

    .line 3327
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v0, v3
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_33

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    goto :goto_21

    .line 3329
    :cond_31
    monitor-exit p0

    return-object v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSize()I
    .registers 1

    .line 3334
    iget p0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    return p0
.end method

.method public declared-synchronized put(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 3309
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 3310
    iget p1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->totalSize:I

    rem-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->pointer:I

    .line 3311
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I

    if-ge v0, p1, :cond_16

    add-int/lit8 v0, v0, 0x1

    .line 3312
    iput v0, p0, Lcom/android/server/am/MARsPolicyManager$NetHistoryBuffer;->size:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 3314
    :cond_16
    monitor-exit p0

    return-void

    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method
