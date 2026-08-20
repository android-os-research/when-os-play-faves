.class public Lcom/android/service/ims/presence/PresenceTask;
.super Lcom/android/service/ims/Task;
.source "PresenceTask.java"


# instance fields
.field public blacklist mContacts:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;[Ljava/lang/String;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "cmdId"    # I
    .param p3, "listener"    # Lcom/android/service/ims/presence/ContactCapabilityResponse;
    .param p4, "contacts"    # [Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/service/ims/Task;-><init>(IILcom/android/service/ims/presence/ContactCapabilityResponse;)V

    .line 45
    iput-object p4, p0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/android/service/ims/presence/PresenceTask;->mListener:Lcom/android/service/ims/presence/ContactCapabilityResponse;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceTask: mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCmdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mCmdId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mContacts:[Ljava/lang/String;

    .line 52
    invoke-static {v1}, Lcom/android/service/ims/presence/PresenceUtils;->toContactString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCmdStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mCmdStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mSipRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mSipResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSipReasonPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/service/ims/presence/PresenceTask;->mSipReasonPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    return-object v0
.end method
