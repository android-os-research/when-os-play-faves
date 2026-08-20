.class Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiBackupRestore;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "SemWifiBackupRestore"

    const-string v0, " restore is done"

    .line 74
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESULT"

    const/4 v1, 0x1

    .line 75
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_35

    .line 78
    :try_start_10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_2b

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$fgetmSemConfigs(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_2b

    .line 79
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->-$$Nest$maddOrUpdateNetwork(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V

    goto :goto_35

    :cond_2b
    const-string p0, "SemConfigs is null, do not addOrUpdateNetwork"

    .line 81
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception p0

    .line 84
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    :goto_35
    return-void
.end method
