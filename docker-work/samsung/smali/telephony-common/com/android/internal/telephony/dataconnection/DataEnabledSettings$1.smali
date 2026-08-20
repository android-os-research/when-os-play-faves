.class Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DataEnabledSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .registers 4

    .line 174
    monitor-enter p0

    .line 175
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v0, v1, :cond_71

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscriptionsChanged subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mlog(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fputmSubId(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mgetDataEnabledOverride(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/data/DataEnabledOverride;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fputmDataEnabledOverride(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;Lcom/android/internal/telephony/data/DataEnabledOverride;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mupdatePhoneStateListener(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->isUserDataEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->notifyUserMobileDataStateChanged(Z)V

    .line 184
    :cond_71
    monitor-exit p0

    return-void

    :catchall_73
    move-exception v0

    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1 .. :try_end_75} :catchall_73

    throw v0
.end method
