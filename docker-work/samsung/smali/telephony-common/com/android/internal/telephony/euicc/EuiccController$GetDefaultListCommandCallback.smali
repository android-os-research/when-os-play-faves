.class Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetDefaultListCommandCallback"
.end annotation


# instance fields
.field final blacklist mCallbackIntent:Landroid/app/PendingIntent;

.field final blacklist mCallingPackage:Ljava/lang/String;

.field final blacklist mCallingToken:J

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;JLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6

    .line 916
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-wide p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 918
    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    .line 919
    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onGetDefaultListComplete(ILandroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;)V
    .registers 14

    .line 925
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 927
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    if-eqz v0, :cond_19

    const/4 p1, 0x2

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getResult()I

    move-result p2

    invoke-static {v0, v10, p2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    goto :goto_4f

    :cond_19
    const/4 p1, 0x0

    .line 930
    invoke-virtual {p2}, Landroid/service/euicc/GetDefaultDownloadableSubscriptionListResult;->getDownloadableSubscriptions()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 931
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4f

    .line 934
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/telephony/euicc/DownloadableSubscription;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/os/Parcelable;

    const-string v0, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTIONS"

    .line 932
    invoke-virtual {v10, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_4f

    :cond_38
    const/4 p2, 0x1

    .line 939
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v3, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingPackage:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-wide v1, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallingToken:J

    .line 944
    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forGetDefaultListDeactivateSim(JLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v1, v10

    move v7, p1

    .line 939
    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    move p1, p2

    .line 955
    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$GetDefaultListCommandCallback;->mCallbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, p0, p1, v10}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
