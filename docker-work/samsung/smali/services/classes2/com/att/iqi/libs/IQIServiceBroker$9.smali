.class public Lcom/att/iqi/libs/IQIServiceBroker$9;
.super Lcom/android/internal/content/PackageMonitor;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/libs/IQIServiceBroker;->registerPackageMonitor()V
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

    .line 909
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$9;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .registers 4

    .line 912
    invoke-static {}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$sfgetTARGET_IMPLEMENTATION_COMPONENT()Landroid/content/ComponentName;

    move-result-object v0

    .line 913
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 912
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 915
    :cond_f
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$9;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z

    move-result p1

    if-nez p1, :cond_18

    return-void

    .line 916
    :cond_18
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p1, "Package modified, try to reconnect..."

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 917
    :cond_23
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$9;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$9;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x1

    .line 918
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    .line 917
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
