.class Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;
.super Ljava/lang/Object;
.source "WifiControlMonitor.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/db/WifiControlMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;


# direct methods
.method public static synthetic $r8$lambda$MINwlCK5OIF2Sp_siAT-3dDKTwk(Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->lambda$accept$0(Ljava/lang/String;Z)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/String;Z)V
    .registers 3

    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$mnotifyToClients(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 60
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->accept(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public accept(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetlastWifiState(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 64
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wi-Fi state was changed, packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " toggleState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "enabled"

    goto :goto_29

    :cond_27
    const-string v2, "disabled"

    :goto_29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v0, v2, :cond_35

    const-string v2, " (wrong state)"

    goto :goto_37

    :cond_35
    const-string v2, ""

    :goto_37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifi.ControlMonitor"

    .line 64
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android"

    if-nez v1, :cond_51

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_52

    :cond_51
    move-object p1, v2

    .line 70
    :cond_52
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    goto :goto_5d

    .line 71
    :cond_59
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    :goto_5d
    iget-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetresolver(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, p1, v0}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 73
    iget-object p2, p0, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;->this$0:Lcom/samsung/android/server/wifi/db/WifiControlMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor;->-$$Nest$fgetwifiThreadRunner(Lcom/samsung/android/server/wifi/db/WifiControlMonitor;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/db/WifiControlMonitor$1;Ljava/lang/String;Z)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
