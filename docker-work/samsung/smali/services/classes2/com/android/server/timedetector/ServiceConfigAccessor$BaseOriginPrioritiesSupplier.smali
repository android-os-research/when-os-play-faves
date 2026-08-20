.class public abstract Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;
.super Ljava/lang/Object;
.source "ServiceConfigAccessor.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timedetector/ServiceConfigAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseOriginPrioritiesSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "[I>;"
    }
.end annotation


# instance fields
.field public mLastPriorityInts:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mLastPriorityStrings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 151
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    return-object p0
.end method

.method public get()[I
    .registers 9

    .line 159
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->lookupPriorityStrings()[Ljava/lang/String;

    move-result-object v0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_5
    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 162
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    monitor-exit p0

    return-object v0

    :cond_11
    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 166
    array-length v2, v0

    if-lez v2, :cond_36

    .line 167
    array-length v2, v0

    new-array v3, v2, [I
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_3c

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v2, :cond_35

    .line 170
    :try_start_1e
    aget-object v6, v0, v5

    if-eqz v6, :cond_24

    const/4 v7, 0x1

    goto :goto_25

    :cond_24
    move v7, v4

    .line 171
    :goto_25
    invoke-static {v7}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 173
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-static {v6}, Lcom/android/server/timedetector/TimeDetectorStrategy;->stringToOrigin(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v5
    :try_end_32
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_32} :catch_36
    .catchall {:try_start_1e .. :try_end_32} :catchall_3c

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_35
    move-object v1, v3

    .line 182
    :catch_36
    :cond_36
    :try_start_36
    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityStrings:[Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessor$BaseOriginPrioritiesSupplier;->mLastPriorityInts:[I

    .line 184
    monitor-exit p0

    return-object v1

    :catchall_3c
    move-exception v0

    .line 185
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public abstract lookupPriorityStrings()[Ljava/lang/String;
.end method
