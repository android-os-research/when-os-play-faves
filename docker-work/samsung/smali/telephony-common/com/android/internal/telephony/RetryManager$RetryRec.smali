.class Lcom/android/internal/telephony/RetryManager$RetryRec;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RetryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RetryRec"
.end annotation


# instance fields
.field blacklist mDelayTime:J

.field blacklist mRandomizationTime:J


# direct methods
.method constructor blacklist <init>(JJ)V
    .registers 5

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-wide p1, p0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:J

    .line 186
    iput-wide p3, p0, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:J

    return-void
.end method
