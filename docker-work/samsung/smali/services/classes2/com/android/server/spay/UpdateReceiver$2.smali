.class public Lcom/android/server/spay/UpdateReceiver$2;
.super Landroid/os/Handler;
.source "UpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/UpdateReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/spay/UpdateReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/UpdateReceiver;Landroid/os/Looper;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "action"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13d

    const/4 v2, -0x1

    .line 69
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_13e

    goto :goto_4d

    :sswitch_2d
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_4d

    :cond_36
    const/4 v2, 0x2

    goto :goto_4d

    :sswitch_38
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    goto :goto_4d

    :cond_41
    const/4 v2, 0x1

    goto :goto_4d

    :sswitch_43
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 v2, 0x0

    :goto_4d
    const-string v3, "com.samsung.android.rajaampat"

    const-string v4, "com.samsung.android.samsungpay.gear"

    const-string v5, "com.samsung.android.spaymini"

    const-string v6, "com.samsung.android.spay"

    packed-switch v2, :pswitch_data_14c

    goto/16 :goto_13d

    :pswitch_5a
    const-string p1, "ACTION_BOOT_COMPLETED received : triggering PF Install"

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_13d

    .line 73
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 76
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 77
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.samsung.android.spayfw"

    invoke-static {p1, v0}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 78
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 79
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p0}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_13d

    .line 86
    :pswitch_a1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "getdata_of_intent"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {v2}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_13d

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13d

    .line 88
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " received : triggering PF Install"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p1}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/spay/UpdateReceiver;->triggerPFInstall(Landroid/content/Context;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p0}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v6}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_13d

    .line 92
    :cond_102
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 93
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p0}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v5}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_13d

    .line 94
    :cond_116
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 95
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p0}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_13d

    .line 96
    :cond_12a
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_13d

    .line 97
    iget-object p0, p0, Lcom/android/server/spay/UpdateReceiver$2;->this$0:Lcom/android/server/spay/UpdateReceiver;

    invoke-static {p0}, Lcom/android/server/spay/UpdateReceiver;->-$$Nest$fgetmContext(Lcom/android/server/spay/UpdateReceiver;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/android/server/spay/Utils;->backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_13d
    :goto_13d
    return-void

    :sswitch_data_13e
    .sparse-switch
        -0x304ed112 -> :sswitch_43
        0x2f94f923 -> :sswitch_38
        0x5c1076e2 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_a1
        :pswitch_5a
        :pswitch_a1
    .end packed-switch
.end method
