.class Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SemNitzStateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 138
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_7e

    goto :goto_4a

    :sswitch_2a
    const-string v0, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_4a

    :cond_33
    const/4 v1, 0x2

    goto :goto_4a

    :sswitch_35
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3e

    goto :goto_4a

    :cond_3e
    const/4 v1, 0x1

    goto :goto_4a

    :sswitch_40
    const-string v0, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    packed-switch v1, :pswitch_data_8c

    goto :goto_7d

    .line 147
    :pswitch_4e
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-lt p1, p2, :cond_7d

    .line 149
    invoke-static {}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$sfgetmNeedMultiTimezonePopup()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    .line 143
    :pswitch_78
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mprepareMultiTimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    :cond_7d
    :goto_7d
    return-void

    :sswitch_data_7e
    .sparse-switch
        -0x6311576f -> :sswitch_40
        0x2f94f923 -> :sswitch_35
        0x412a6228 -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_78
        :pswitch_78
        :pswitch_4e
    .end packed-switch
.end method
