.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Lcom/android/ims/FeatureConnector$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/ims/FeatureConnector$Listener<",
        "Lcom/android/ims/ImsManager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .registers 2

    .line 1170
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist connectionReady(Lcom/android/ims/FeatureUpdates;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1170
    check-cast p1, Lcom/android/ims/ImsManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->connectionReady(Lcom/android/ims/ImsManager;I)V

    return-void
.end method

.method public blacklist connectionReady(Lcom/android/ims/ImsManager;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "manager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "FeatureConnectorListener.connectionReady"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLogCommon(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1175
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fputmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsManager;)V

    .line 1176
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionReady for subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1177
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startListeningForCalls(I)V

    return-void
.end method

.method public blacklist connectionUnavailable(I)V
    .registers 7

    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmImsManager(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "FeatureConnectorListener.connectionUnavailable"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$miLogCommon(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1185
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logi(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5c

    .line 1187
    iget-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$fgetmConnectorRunnable(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1189
    :cond_5c
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-$$Nest$mstopListeningForCalls(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    return-void
.end method
