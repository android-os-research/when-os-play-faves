.class Lcom/android/internal/telephony/euicc/EuiccController$2;
.super Ljava/lang/Object;
.source "EuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/euicc/EuiccController;->downloadSubscriptionPrivileged(IIJLandroid/telephony/euicc/DownloadableSubscription;ZZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/euicc/EuiccController;

.field final synthetic blacklist val$callbackIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$callingPackage:Ljava/lang/String;

.field final synthetic blacklist val$callingToken:J

.field final synthetic blacklist val$cardId:I

.field final synthetic blacklist val$portIndex:I

.field final synthetic blacklist val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

.field final synthetic blacklist val$switchAfterDownload:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/telephony/euicc/DownloadableSubscription;ZLandroid/app/PendingIntent;Ljava/lang/String;JII)V
    .registers 10

    .line 764
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iput-boolean p3, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iput-object p4, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    iput-object p5, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    iput-wide p6, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iput p8, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iput p9, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onDownloadComplete(Landroid/service/euicc/DownloadSubscriptionResult;)V
    .registers 21

    move-object/from16 v0, p0

    .line 767
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v1

    const/4 v2, -0x2

    const/4 v12, 0x1

    if-eq v1, v2, :cond_63

    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    if-eqz v1, :cond_20

    const/4 v12, 0x2

    .line 839
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResult()I

    move-result v2

    invoke-static {v1, v11, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$maddExtrasToResultIntent(Lcom/android/internal/telephony/euicc/EuiccController;Landroid/content/Intent;I)V

    goto/16 :goto_b9

    :cond_20
    const/4 v1, 0x0

    .line 774
    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/EuiccController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/euicc/EuiccController;)Landroid/content/Context;

    move-result-object v2

    .line 775
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "euicc_provisioned"

    .line 774
    invoke-static {v2, v3, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 778
    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    const-string v3, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DOWNLOADABLE_SUBSCRIPTION"

    invoke-virtual {v11, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 781
    iget-boolean v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    if-nez v2, :cond_43

    .line 784
    iget-object v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v0, v1, v11}, Lcom/android/internal/telephony/euicc/EuiccController;->refreshSubscriptionsAndSendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void

    :cond_43
    move v12, v1

    goto/16 :goto_b9

    .line 791
    :cond_46
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 796
    invoke-static {v2, v3, v7, v8, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadDeactivateSim(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    const-string v3, "android.service.euicc.action.RESOLVE_DEACTIVATE_SIM"

    move-object v2, v11

    .line 791
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    goto :goto_b9

    .line 809
    :cond_63
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    invoke-virtual {v1}, Landroid/telephony/euicc/DownloadableSubscription;->getConfirmationCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    .line 812
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v1

    if-eqz v1, :cond_9e

    .line 813
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 816
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v5

    iget-wide v13, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v15, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    iget-object v3, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/service/euicc/DownloadSubscriptionResult;->getResolvableErrors()I

    move-result v18

    move/from16 v16, v2

    move-object/from16 v17, v3

    .line 818
    invoke-static/range {v13 .. v18}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadResolvableErrors(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;I)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    const-string v3, "android.service.euicc.action.RESOLVE_RESOLVABLE_ERRORS"

    move-object v2, v11

    .line 813
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    goto :goto_b9

    .line 824
    :cond_9e
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v4, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingPackage:Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v2, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callingToken:J

    iget-object v7, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$subscription:Landroid/telephony/euicc/DownloadableSubscription;

    iget-boolean v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    .line 829
    invoke-static {v2, v3, v7, v8, v4}, Lcom/android/internal/telephony/euicc/EuiccOperation;->forDownloadConfirmationCode(JLandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;)Lcom/android/internal/telephony/euicc/EuiccOperation;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$cardId:I

    iget v9, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$portIndex:I

    iget-boolean v10, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$switchAfterDownload:Z

    const-string v3, "android.service.euicc.action.RESOLVE_CONFIRMATION_CODE"

    move-object v2, v11

    .line 824
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/euicc/EuiccController;->addResolutionIntentWithPort(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/EuiccOperation;IIZ)V

    .line 843
    :goto_b9
    iget-object v1, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object v0, v0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v12, v11}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method

.method public blacklist onEuiccServiceUnavailable()V
    .registers 4

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->this$0:Lcom/android/internal/telephony/euicc/EuiccController;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccController$2;->val$callbackIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/euicc/EuiccController;->sendResult(Landroid/app/PendingIntent;ILandroid/content/Intent;)V

    return-void
.end method
