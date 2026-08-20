.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.CSC_UPDATE_VOICEMAIL_DONE"

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 452
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object p2, p1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    if-eqz p2, :cond_60

    const-string p2, "[Voicemail] Reload voicemail-conf.xml as it could be changed."

    .line 453
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 454
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance p2, Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    invoke-direct {p2, v0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;-><init>(I)V

    iput-object p2, p1, Lcom/android/internal/telephony/uicc/SIMRecords;->mVmConfig:Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .line 455
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->-$$Nest$msetVoiceMailByNetworkId(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    goto :goto_60

    :cond_42
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_60

    const/4 p1, 0x0

    const-string v0, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    .line 458
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 459
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object p2, p2, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_60

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->-$$Nest$msetVoiceMailByCarrierId(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    :cond_60
    :goto_60
    return-void
.end method
