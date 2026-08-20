.class Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;
.super Landroid/os/Handler;
.source "SemWifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiApHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/os/Looper;)V
    .registers 3

    .line 141
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    .line 142
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 147
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    goto/16 :goto_123

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$misSALoggedIn(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 150
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I

    move-result p1

    if-gtz p1, :cond_18

    return-void

    .line 153
    :cond_18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputretrySAAccount(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;I)V

    .line 154
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$sfgetCONFIGMOBILEAPDEFAULTSSID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Default,Mac4Digits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$sfgetCONFIGMOBILEAPDEFAULTSSID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Verizon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_123

    :cond_3a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "hotspot_enabled_history"

    .line 155
    invoke-static {p1, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getDefaultDeviceName()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 158
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetModelName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_5e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SA loggedin with out MHS usage"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetSamsungAccountProfileName(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11e

    const-string v3, "Galaxy"

    const-string v4, ""

    .line 163
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "5G"

    .line 164
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "(LTE)"

    .line 165
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "LTE"

    .line 166
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 168
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040f4e

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 173
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v2, 0x20

    if-le v0, v2, :cond_c4

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->getTruncatedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 176
    :cond_c4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration$Builder;)V

    .line 178
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetconfigBuilder(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fputmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Landroid/net/wifi/SoftApConfiguration;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmWifiApConfig(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->setApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SA loggedin, so update SSID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->addMHSDumpLog(Ljava/lang/String;)V

    goto :goto_123

    :cond_11e
    const-wide/16 v1, 0x3a98

    .line 170
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$WifiApHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_123
    :goto_123
    return-void
.end method
