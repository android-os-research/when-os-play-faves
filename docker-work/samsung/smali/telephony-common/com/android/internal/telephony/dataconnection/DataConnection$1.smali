.class Lcom/android/internal/telephony/dataconnection/DataConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;)V
    .registers 2

    .line 1072
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    .line 1078
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 1079
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1080
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const-string p2, "received ACTION_SHUTDOWN intent"

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->log(Ljava/lang/String;)V

    .line 1081
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$1;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnection;->-$$Nest$fputmIsShutdownReceive(Lcom/android/internal/telephony/dataconnection/DataConnection;Z)V

    :cond_1c
    return-void
.end method
