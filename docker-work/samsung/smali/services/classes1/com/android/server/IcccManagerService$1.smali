.class public Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/IcccManagerService;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string p1, "command"

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive intent action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    .line 82
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_35

    .line 87
    :try_start_2b
    sget-object p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string p1, "data is null "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :catch_33
    move-exception p0

    goto :goto_91

    .line 89
    :cond_35
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 90
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    sget-object p2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "AT+ICCCINFO=1,0,0"

    .line 92
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    .line 95
    iget-object p0, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {p0, p2}, Lcom/android/server/IcccManagerService;->-$$Nest$mget_iccc_response_data(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 96
    sget-object p2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "iccc_response - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p2, "response"

    .line 97
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-static {}, Lcom/android/server/IcccManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_90} :catch_33

    goto :goto_9c

    .line 103
    :goto_91
    sget-object p1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onReceive:ACTION_BCS_REQUEST-exception"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_9c
    :goto_9c
    return-void
.end method
