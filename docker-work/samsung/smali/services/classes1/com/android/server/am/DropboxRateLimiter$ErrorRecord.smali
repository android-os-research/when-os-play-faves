.class public Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;
.super Ljava/lang/Object;
.source "DropboxRateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DropboxRateLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorRecord"
.end annotation


# instance fields
.field public mCount:I

.field public mStartTime:J

.field public final synthetic this$0:Lcom/android/server/am/DropboxRateLimiter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DropboxRateLimiter;JI)V
    .registers 5

    .line 142
    iput-object p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->this$0:Lcom/android/server/am/DropboxRateLimiter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide p2, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    .line 144
    iput p4, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 1

    .line 164
    iget p0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return p0
.end method

.method public getStartTime()J
    .registers 3

    .line 160
    iget-wide v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-wide v0
.end method

.method public incrementCount()V
    .registers 2

    .line 156
    iget v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public setCount(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mCount:I

    return-void
.end method

.method public setStartTime(J)V
    .registers 3

    .line 148
    iput-wide p1, p0, Lcom/android/server/am/DropboxRateLimiter$ErrorRecord;->mStartTime:J

    return-void
.end method
