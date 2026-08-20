.class public Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;
.super Ljava/lang/Object;
.source "IntelligentBatterySaverFastDrainPolicy.java"

# interfaces
.implements Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;-><init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mobiledataState:Z

.field public telephonyManager:Landroid/telephony/TelephonyManager;

.field public final synthetic this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

.field public final synthetic val$this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

.field public wifiApState:Z

.field public wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V
    .registers 3

    .line 1230
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iput-object p2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->val$this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1233
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    const/4 p1, 0x1

    .line 1234
    iput-boolean p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiApState:Z

    return-void
.end method


# virtual methods
.method public cancelFastDrainRestriction()V
    .registers 5

    .line 1257
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->telephonyManager:Landroid/telephony/TelephonyManager;

    const-string v1, "disable_mobile_data_by_ibs"

    if-eqz v0, :cond_6d

    .line 1259
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    .line 1260
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetTAG(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recover mobiledata check mobiledataState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", operMobileState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v3, v3, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 1261
    invoke-static {v3, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mgetBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1260
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    if-nez v0, :cond_6d

    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$mgetBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1263
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetTAG(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "recover mobiledata"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1268
    :cond_6d
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msaveBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;ZLjava/lang/String;)V

    return-void
.end method

.method public doFastDrainRestriction()V
    .registers 4

    .line 1236
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_19

    .line 1238
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiApState:Z

    .line 1240
    :cond_19
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiApState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiApState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1241
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetmContext(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_c0

    .line 1243
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    .line 1244
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetTAG(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable mobiledata check wifiApState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiApState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mobiledataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mobiledataState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1247
    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->wifiApState:Z

    if-nez v0, :cond_c0

    iget-boolean v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->mobiledataState:Z

    if-eqz v0, :cond_c0

    .line 1248
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->-$$Nest$fgetTAG(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobiledata set disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$fgetmIntelligentBatterySaverLogger(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 1250
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->telephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1251
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction$3;->this$1:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainAction;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    const/4 v0, 0x1

    const-string v1, "disable_mobile_data_by_ibs"

    invoke-static {p0, v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->-$$Nest$msaveBooleanState(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;ZLjava/lang/String;)V

    :cond_c0
    return-void
.end method
