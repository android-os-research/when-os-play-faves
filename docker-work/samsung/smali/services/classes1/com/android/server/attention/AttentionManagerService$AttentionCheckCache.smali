.class public final Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttentionCheckCache"
.end annotation


# instance fields
.field public final mLastComputed:J

.field public final mResult:I

.field public final mTimestamp:J


# direct methods
.method public static bridge synthetic -$$Nest$fgetmLastComputed(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmResult(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I
    .registers 1

    iget p0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimestamp(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-wide v0
.end method

.method public constructor <init>(JIJ)V
    .registers 6

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    iput-wide p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mLastComputed:J

    .line 596
    iput p3, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mResult:I

    .line 597
    iput-wide p4, p0, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->mTimestamp:J

    return-void
.end method
