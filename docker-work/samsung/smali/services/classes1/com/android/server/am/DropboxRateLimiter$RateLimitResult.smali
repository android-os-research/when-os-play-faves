.class public Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DropboxRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RateLimitResult"
.end annotation


# instance fields
.field public final mDroppedCountSinceRateLimitActivated:I

.field public final mShouldRateLimit:Z

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;ZI)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean p2, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    .line 119
    iput p3, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    return-void
.end method


# virtual methods
.method public createHeader()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropped-Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public droppedCountSinceRateLimitActivated()I
    .registers 1

    .line 129
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mDroppedCountSinceRateLimitActivated:I

    return p0
.end method

.method public shouldRateLimit()Z
    .registers 1

    .line 124
    iget-boolean p0, p0, Lcom/android/server/am/DropboxRateLimiter$RateLimitResult;->mShouldRateLimit:Z

    return p0
.end method
