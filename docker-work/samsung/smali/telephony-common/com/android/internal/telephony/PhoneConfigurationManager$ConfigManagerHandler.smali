.class final Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;
.super Landroid/os/Handler;
.source "PhoneConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfigManagerHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;-><init>(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_b2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_84

    const/16 v1, 0x66

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x67

    if-eq v0, v1, :cond_16

    goto/16 :goto_e6

    .line 180
    :cond_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_30

    .line 181
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_30

    .line 182
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/PhoneCapability;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$fputmStaticCapability(Lcom/android/internal/telephony/PhoneConfigurationManager;Landroid/telephony/PhoneCapability;)V

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mnotifyCapabilityChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;)V

    goto/16 :goto_e6

    .line 185
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not getting phone capability."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    goto/16 :goto_e6

    .line 169
    :cond_4d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_68

    .line 170
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_68

    .line 171
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 172
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->addToPhoneStatusCache(IZ)V

    goto/16 :goto_e6

    .line 176
    :cond_68
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not updating modem status."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    goto :goto_e6

    .line 160
    :cond_84
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_96

    .line 161
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_96

    .line 162
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/PhoneConfigurationManager;I)V

    goto :goto_e6

    .line 165
    :cond_96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failure. Not switching multi-sim config."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    goto :goto_e6

    :cond_b2
    const-string v0, "Received EVENT_RADIO_AVAILABLE/EVENT_RADIO_ON"

    .line 147
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 148
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 149
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v0, :cond_cb

    instance-of v1, v0, Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_cb

    .line 150
    check-cast v0, Lcom/android/internal/telephony/Phone;

    .line 151
    iget-object p1, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$mupdatePhoneStatus(Lcom/android/internal/telephony/PhoneConfigurationManager;Lcom/android/internal/telephony/Phone;)V

    goto :goto_e1

    .line 154
    :cond_cb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add phoneStatus to cache. No phone object provided for event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->-$$Nest$smlog(Ljava/lang/String;)V

    .line 157
    :goto_e1
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneConfigurationManager$ConfigManagerHandler;->this$0:Lcom/android/internal/telephony/PhoneConfigurationManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneConfigurationManager;->getStaticPhoneCapability()Landroid/telephony/PhoneCapability;

    :goto_e6
    return-void
.end method
