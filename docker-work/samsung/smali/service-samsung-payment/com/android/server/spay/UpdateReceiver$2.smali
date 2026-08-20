.class Lcom/android/server/spay/UpdateReceiver$2;
.super Landroid/os/Handler;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/spay/UpdateReceiver;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 62
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "action":Ljava/lang/String;
    if-eqz v2, :cond_142

    .line 69
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_144

    :cond_2e
    goto :goto_4c

    :sswitch_2f
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v3, 0x2

    goto :goto_4c

    :sswitch_39
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v3, 0x0

    goto :goto_4c

    :sswitch_43
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v3, 0x1

    :goto_4c
    const-string v4, "com.samsung.android.rajaampat"

    const-string v5, "com.samsung.android.samsungpay.gear"

    const-string v6, "com.samsung.android.spaymini"

    const-string v7, "com.samsung.android.spay"

    packed-switch v3, :pswitch_data_152

    goto/16 :goto_142

    .line 86
    :pswitch_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "getdata_of_intent"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v3, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v3}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_142

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_142

    .line 88
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " received : triggering PF Install"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_142

    .line 92
    :cond_c1
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 93
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_142

    .line 94
    :cond_d5
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 95
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_142

    .line 96
    :cond_e9
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 97
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_142

    .line 71
    :pswitch_fd
    const-string v3, "ACTION_BOOT_COMPLETED received : triggering PF Install"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_142

    .line 73
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 77
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "com.samsung.android.spayfw"

    invoke-static {v1, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 79
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    iget-object v1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 103
    :cond_142
    :goto_142
    return-void

    nop

    :sswitch_data_144
    .sparse-switch
        -0x304ed112 -> :sswitch_43
        0x2f94f923 -> :sswitch_39
        0x5c1076e2 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_fd
        :pswitch_59
        :pswitch_59
    .end packed-switch
.end method
