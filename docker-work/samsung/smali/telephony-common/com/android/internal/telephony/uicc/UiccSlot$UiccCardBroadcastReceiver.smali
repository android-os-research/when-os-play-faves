.class Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiccSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UiccCardBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UiccSlot;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V
    .registers 2

    .line 949
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccSlot;Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/UiccSlot;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 952
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.SIM_REMOVED"

    .line 953
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 954
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p2, "onIccSwap: get the SIM_REMOVED action"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 955
    sget-object p1, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_c5

    .line 956
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p1, "onIccSwap: SIM_REMOVED dialog.dismiss()"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 957
    sget-object p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 p0, 0x0

    .line 958
    sput-object p0, Lcom/android/internal/telephony/uicc/UiccSlot;->dialog:Landroid/app/AlertDialog;

    goto/16 :goto_c5

    .line 960
    :cond_28
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.intent.action.SIM_COMMAND_ERROR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_65

    const-string p1, "cmdtype"

    .line 961
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "operator"

    .line 962
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 963
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCommandError: get the SIM_REMOVED action, cmdType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , operator is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 964
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mmakeSIMErrorNotification(Lcom/android/internal/telephony/uicc/UiccSlot;II)V

    goto :goto_c5

    .line 965
    :cond_65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.intent.action.SIM_AUTH_SUCCESS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_94

    const-string p1, "authSimtype"

    .line 966
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 967
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimCommandError: get the SIM_AUTH_SUCCESS action, authSimtype is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 968
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/uicc/UiccSlot;ZI)V

    goto :goto_c5

    .line 969
    :cond_94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 970
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/uicc/UiccSlot;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/uicc/UiccSlot;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    if-nez p1, :cond_c5

    .line 972
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const-string p2, "ServiceState.STATE_IN_SERVICE: removeSIMErrorNotification, authSimtype is 2"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mlog(Lcom/android/internal/telephony/uicc/UiccSlot;Ljava/lang/String;)V

    .line 973
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccSlot$UiccCardBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/UiccSlot;

    const/4 p1, 0x2

    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccSlot;->-$$Nest$mremoveSIMErrorNotification(Lcom/android/internal/telephony/uicc/UiccSlot;ZI)V

    :cond_c5
    :goto_c5
    return-void
.end method
