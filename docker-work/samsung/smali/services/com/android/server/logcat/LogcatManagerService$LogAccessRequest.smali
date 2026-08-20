.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
.super Ljava/lang/Object;
.source "LogcatManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/logcat/LogcatManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogAccessRequest"
.end annotation


# instance fields
.field public final mFd:I

.field public final mGid:I

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 146
    iput p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 147
    iput p3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 148
    iput p4, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    return-void
.end method

.method public synthetic constructor <init>(IIIILcom/android/server/logcat/LogcatManagerService$LogAccessRequest-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 154
    :cond_4
    instance-of v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 155
    :cond_a
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 156
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    if-ne v1, v3, :cond_25

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    if-ne v1, v3, :cond_25

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    if-ne p0, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v2

    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LogAccessRequest{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
