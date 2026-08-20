.class public Lcom/att/iqi/libs/IQIServiceBroker$5;
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

    .line 203
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$5;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p0, "com.att.iqi.extra.IQI_DEBUG"

    const/4 p1, 0x0

    .line 206
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 207
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eq p0, p1, :cond_19

    .line 208
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    const-string p2, "log_enabled"

    invoke-virtual {p1, p2, p0}, Lcom/att/iqi/libs/PreferenceStore;->setBoolean(Ljava/lang/String;Z)V

    .line 210
    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    :cond_19
    return-void
.end method
