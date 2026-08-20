.class public Lcom/android/server/connectivity/EnterpriseVpn$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseVpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/EnterpriseVpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/EnterpriseVpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn;)V
    .registers 2

    .line 866
    iput-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 869
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 871
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_31

    :cond_10
    const-string/jumbo p1, "knoxEnterpriseVpn"

    const-string p2, "Locale changed. Updating Knox vpn notification and the number of user present is "

    .line 873
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object p1, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p1}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 875
    iget-object p0, p0, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    invoke-static {p0}, Lcom/android/server/connectivity/EnterpriseVpn;->-$$Nest$mupdateNotification(Lcom/android/server/connectivity/EnterpriseVpn;)V

    :cond_31
    :goto_31
    return-void
.end method
