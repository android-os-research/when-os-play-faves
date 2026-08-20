.class Lcom/android/internal/telephony/ims/ImsResolver$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsResolver;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsResolver;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsResolver$1;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_92

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    goto/16 :goto_92

    .line 256
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_3a

    .line 260
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsResolver$1;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmStaticComponent(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3a

    const-string p0, "ImsResolver"

    const-string p1, "ignore non system static package removed event"

    .line 261
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 265
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_94

    goto :goto_73

    :sswitch_48
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_51

    goto :goto_73

    :cond_51
    const/4 p2, 0x3

    goto :goto_73

    :sswitch_53
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5c

    goto :goto_73

    :cond_5c
    const/4 p2, 0x2

    goto :goto_73

    :sswitch_5e
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    goto :goto_73

    :cond_67
    move p2, v2

    goto :goto_73

    :sswitch_69
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    goto :goto_73

    :cond_72
    move p2, v3

    :goto_73
    packed-switch p2, :pswitch_data_a6

    return-void

    .line 274
    :pswitch_77
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$1;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_92

    .line 271
    :pswitch_85
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsResolver$1;->this$0:Lcom/android/internal/telephony/ims/ImsResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsResolver;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsResolver;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_92
    :goto_92
    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        -0x304ed112 -> :sswitch_69
        0xa480416 -> :sswitch_5e
        0x1f50b9c2 -> :sswitch_53
        0x5c1076e2 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_85
        :pswitch_85
        :pswitch_77
        :pswitch_85
    .end packed-switch
.end method
