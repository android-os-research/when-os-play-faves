.class public Lcom/android/service/ims/presence/PresencePublication$PublishRequest;
.super Ljava/lang/Object;
.source "PresencePublication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/service/ims/presence/PresencePublication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PublishRequest"
.end annotation


# instance fields
.field private blacklist mCurrentTime:J

.field private blacklist mForceToNetwork:Z

.field private blacklist mVolteCapable:Z

.field private blacklist mVtCapable:Z

.field final synthetic blacklist this$0:Lcom/android/service/ims/presence/PresencePublication;


# direct methods
.method constructor blacklist <init>(Lcom/android/service/ims/presence/PresencePublication;ZJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/service/ims/presence/PresencePublication;
    .param p2, "bForceToNetwork"    # Z
    .param p3, "currentTime"    # J

    .line 728
    iput-object p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVolteCapable:Z

    .line 726
    iput-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVtCapable:Z

    .line 729
    invoke-virtual {p0}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->refreshPublishContent()V

    .line 730
    iput-boolean p2, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mForceToNetwork:Z

    .line 731
    iput-wide p3, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mCurrentTime:J

    .line 732
    return-void
.end method


# virtual methods
.method public blacklist getForceToNetwork()Z
    .registers 2

    .line 740
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mForceToNetwork:Z

    return v0
.end method

.method public blacklist getTimestamp()J
    .registers 3

    .line 748
    iget-wide v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mCurrentTime:J

    return-wide v0
.end method

.method public blacklist getVolteCapable()Z
    .registers 2

    .line 764
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVolteCapable:Z

    return v0
.end method

.method public blacklist getVtCapable()Z
    .registers 2

    .line 768
    iget-boolean v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVtCapable:Z

    return v0
.end method

.method public blacklist hasSamePublishContent(Lcom/android/service/ims/presence/PresencePublication$PublishRequest;)Z
    .registers 5
    .param p1, "request"    # Lcom/android/service/ims/presence/PresencePublication$PublishRequest;

    .line 772
    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 773
    iget-object v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    invoke-static {v1}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$fgetlogger(Lcom/android/service/ims/presence/PresencePublication;)Lcom/android/ims/internal/Logger;

    move-result-object v1

    const-string v2, "request == null"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->error(Ljava/lang/String;)V

    .line 774
    return v0

    .line 777
    :cond_f
    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVolteCapable:Z

    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getVolteCapable()Z

    move-result v2

    if-ne v1, v2, :cond_21

    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVtCapable:Z

    .line 778
    invoke-virtual {p1}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->getVtCapable()Z

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    nop

    .line 777
    :goto_22
    return v0
.end method

.method public blacklist refreshPublishContent()V
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    iget-boolean v1, v0, Lcom/android/service/ims/presence/PresencePublication;->mIsVolteAvailable:Z

    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    iget-boolean v2, v2, Lcom/android/service/ims/presence/PresencePublication;->mIsVoWifiAvailable:Z

    invoke-static {v0, v1, v2}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$misIPVoiceSupported(Lcom/android/service/ims/presence/PresencePublication;ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->setVolteCapable(Z)V

    .line 736
    iget-object v0, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    iget-boolean v1, v0, Lcom/android/service/ims/presence/PresencePublication;->mIsVtAvailable:Z

    iget-object v2, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->this$0:Lcom/android/service/ims/presence/PresencePublication;

    iget-boolean v2, v2, Lcom/android/service/ims/presence/PresencePublication;->mIsViWifiAvailable:Z

    invoke-static {v0, v1, v2}, Lcom/android/service/ims/presence/PresencePublication;->-$$Nest$misIPVideoSupported(Lcom/android/service/ims/presence/PresencePublication;ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->setVtCapable(Z)V

    .line 737
    return-void
.end method

.method public blacklist setForceToNetwork(Z)V
    .registers 2
    .param p1, "bForceToNetwork"    # Z

    .line 744
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mForceToNetwork:Z

    .line 745
    return-void
.end method

.method public blacklist setTimestamp(J)V
    .registers 3
    .param p1, "currentTime"    # J

    .line 752
    iput-wide p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mCurrentTime:J

    .line 753
    return-void
.end method

.method public blacklist setVolteCapable(Z)V
    .registers 2
    .param p1, "capable"    # Z

    .line 756
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVolteCapable:Z

    .line 757
    return-void
.end method

.method public blacklist setVtCapable(Z)V
    .registers 2
    .param p1, "capable"    # Z

    .line 760
    iput-boolean p1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVtCapable:Z

    .line 761
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForceToNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mForceToNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mCurrentTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVolteCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVolteCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mVtCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/service/ims/presence/PresencePublication$PublishRequest;->mVtCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
