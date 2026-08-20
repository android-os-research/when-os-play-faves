.class public Lcom/att/iqi/libs/IQIServiceBroker$3;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/libs/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/att/iqi/libs/IQIServiceBroker;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.extra.PHONE_NUMBER"

    .line 174
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p2, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mmaybeIsValidKeyCode(Lcom/att/iqi/libs/IQIServiceBroker;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_35

    .line 176
    iget-object p2, p0, Lcom/att/iqi/libs/IQIServiceBroker$3;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-virtual {p2}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p2

    .line 178
    :try_start_14
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/att/iqi/IIQIService;->reportKeyCode([B)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_27} :catch_28

    goto :goto_35

    :catch_28
    move-exception p0

    .line 184
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_35

    const-string/jumbo p1, "reportKeyCode failed"

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    return-void
.end method
