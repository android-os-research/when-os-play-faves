.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSessionDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 298
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$2;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    move-result-object p0

    const/16 p1, 0x66

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessage(I)Z

    if-eqz p2, :cond_4a

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.TIME_SET"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 300
    new-instance p0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p0, p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 301
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User Changed Time to yyyy-MM-dd HH:mm:ss = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    const-string p2, "SemWifiApSessionDataUsage"

    invoke-static {p2, p0, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApDatausageDump;->addDumpSysLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4a
    return-void
.end method
