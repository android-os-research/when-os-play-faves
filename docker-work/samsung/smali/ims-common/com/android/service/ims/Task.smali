.class public Lcom/android/service/ims/Task;
.super Ljava/lang/Object;
.source "Task.java"


# instance fields
.field private blacklist logger:Lcom/android/ims/internal/Logger;

.field public blacklist mCmdId:I

.field public blacklist mCmdStatus:I

.field public blacklist mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

.field public blacklist mSipReasonPhrase:Ljava/lang/String;

.field public blacklist mSipRequestId:I

.field public blacklist mSipResponseCode:I

.field public blacklist mTaskId:I


# direct methods
.method public constructor blacklist <init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "cmdId"    # I
    .param p3, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/service/ims/Task;->logger:Lcom/android/ims/internal/Logger;

    .line 68
    iput p1, p0, Lcom/android/service/ims/Task;->mTaskId:I

    .line 69
    iput p2, p0, Lcom/android/service/ims/Task;->mCmdId:I

    .line 70
    iput-object p3, p0, Lcom/android/service/ims/Task;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task: mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCmdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/Task;->mCmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCmdStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/Task;->mCmdStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/Task;->mSipRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/Task;->mSipResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipReasonPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/service/ims/Task;->mSipReasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
