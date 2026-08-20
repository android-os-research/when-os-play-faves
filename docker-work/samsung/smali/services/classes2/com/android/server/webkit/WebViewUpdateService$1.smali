.class public Lcom/android/server/webkit/WebViewUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/webkit/WebViewUpdateService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 71
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_b4

    goto :goto_52

    :sswitch_1c
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_52

    :cond_25
    const/4 v6, 0x4

    goto :goto_52

    :sswitch_27
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_52

    :cond_30
    move v6, v2

    goto :goto_52

    :sswitch_32
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto :goto_52

    :cond_3b
    move v6, v3

    goto :goto_52

    :sswitch_3d
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_52

    :cond_46
    move v6, v4

    goto :goto_52

    :sswitch_48
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_52

    :cond_51
    move v6, v5

    :goto_52
    const-string v0, "android.intent.extra.REPLACING"

    packed-switch v6, :pswitch_data_ca

    goto :goto_b2

    .line 93
    :pswitch_58
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6d

    goto :goto_6e

    :cond_6d
    move v3, v4

    .line 93
    :goto_6e
    invoke-virtual {p0, v1, v3, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_b2

    .line 80
    :pswitch_72
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    return-void

    .line 81
    :cond_7d
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_b2

    .line 87
    :pswitch_8b
    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->entirePackageChanged(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 88
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$smpackageNameFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v5, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->packageStateChanged(Ljava/lang/String;II)V

    goto :goto_b2

    .line 98
    :pswitch_9f
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleNewUser(I)V

    goto :goto_b2

    .line 101
    :pswitch_a9
    iget-object p0, p0, Lcom/android/server/webkit/WebViewUpdateService$1;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {p0}, Lcom/android/server/webkit/WebViewUpdateService;->-$$Nest$fgetmImpl(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->handleUserRemoved(I)V

    :cond_b2
    :goto_b2
    return-void

    nop

    :sswitch_data_b4
    .sparse-switch
        -0x7ad942ef -> :sswitch_48
        -0x2d021ace -> :sswitch_3d
        0xa480416 -> :sswitch_32
        0x1f50b9c2 -> :sswitch_27
        0x5c1076e2 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_9f
        :pswitch_8b
        :pswitch_72
        :pswitch_58
    .end packed-switch
.end method
