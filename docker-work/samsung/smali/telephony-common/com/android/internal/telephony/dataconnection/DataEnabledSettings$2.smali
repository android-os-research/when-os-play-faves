.class Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;
.super Landroid/telephony/PhoneStateListener;
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

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onActiveDataSubscriptionIdChanged(I)V
    .registers 3

    .line 207
    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p1, v0, :cond_9

    return-void

    .line 208
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mupdateDataEnabled(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;)V

    return-void
.end method

.method public whitelist onCallStateChanged(ILjava/lang/String;)V
    .registers 3

    .line 202
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings$2;->this$0:Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;

    const/16 p1, 0x8

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;->-$$Nest$mupdateDataEnabledAndNotify(Lcom/android/internal/telephony/dataconnection/DataEnabledSettings;I)V

    return-void
.end method
