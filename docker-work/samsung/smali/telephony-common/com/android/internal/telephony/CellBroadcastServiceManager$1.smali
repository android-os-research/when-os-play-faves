.class Lcom/android/internal/telephony/CellBroadcastServiceManager$1;
.super Landroid/os/Handler;
.source "CellBroadcastServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/CellBroadcastServiceManager;->initCellBroadcastServiceModule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/CellBroadcastServiceManager;)V
    .registers 2

    .line 176
    iput-object p1, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmEnabled(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Z

    move-result v0

    const-string v1, "CellBroadcastServiceManager"

    if-nez v0, :cond_10

    const-string p0, "CB module is disabled."

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 183
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/16 v3, 0xfa

    if-nez v0, :cond_25

    const-string p0, "sServiceConnection.mService is null, ignoring message."

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {v3, v2, p0}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    return-void

    .line 192
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;->mService:Landroid/os/IBinder;

    .line 193
    invoke-static {v0}, Landroid/telephony/ICellBroadcastService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ICellBroadcastService;

    move-result-object v0

    .line 198
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getSmsConfig()Lcom/android/internal/telephony/SmsConfig;

    move-result-object v4

    const-string v5, "sms_not_receive_cmas_without_sim"

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SmsConfig;->getSmsSetting(Ljava/lang/String;)Z

    move-result v4
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3f} :catch_143

    const-string v5, "UNKNOWN"

    if-eqz v4, :cond_53

    .line 199
    :try_start_43
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v6, "gsm.sim.state"

    invoke-static {v4, v6, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    :cond_53
    iget v4, p1, Landroid/os/Message;->what:I
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_55} :catch_143

    const-string v6, "Do not receive CMAS without SIM"

    const-string v7, "ABSENT"

    const/16 v8, 0xf9

    const/4 v9, 0x1

    if-nez v4, :cond_a7

    .line 204
    :try_start_5e
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "GSM SMS CB for phone "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v11}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 205
    invoke-static {v8, v9, v9}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 209
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 210
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    .line 212
    :cond_90
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-interface {v0, v4, p1}, Landroid/telephony/ICellBroadcastService;->handleGsmCellBroadcastSms(I[B)V

    goto/16 :goto_187

    :cond_a7
    const/4 v10, 0x2

    if-ne v4, v9, :cond_f7

    .line 217
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CDMA SMS CB for phone "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v12}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 218
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 219
    invoke-static {v8, v10, v9}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 223
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 224
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_187

    .line 226
    :cond_e0
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEnvelopeBearerData()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getEnvelopeServiceCategory()I

    move-result p1

    .line 226
    invoke-interface {v0, v4, v5, p1}, Landroid/telephony/ICellBroadcastService;->handleCdmaCellBroadcastSms(I[BI)V

    goto/16 :goto_187

    :cond_f7
    if-ne v4, v10, :cond_187

    .line 231
    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CDMA SCP message for phone "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v6}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 232
    invoke-static {v8, v4, v9}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(III)V

    .line 235
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 237
    iget-object v4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 238
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/RemoteCallback;

    .line 239
    iget-object v5, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v5}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 240
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSmsCbProgramData()Ljava/util/ArrayList;

    move-result-object v6

    .line 241
    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-interface {v0, v5, v6, v4, p1}, Landroid/telephony/ICellBroadcastService;->handleCdmaScpMessage(ILjava/util/List;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_142
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_142} :catch_143

    goto :goto_187

    :catch_143
    move-exception p1

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to connect to default app: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmCellBroadcastServicePackage(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " err: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 247
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 249
    invoke-static {v3, v2, p1}, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->write(IILjava/lang/String;)V

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/CellBroadcastServiceManager$1;->this$0:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/CellBroadcastServiceManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfgetsServiceConnection()Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    .line 253
    invoke-static {p0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->-$$Nest$sfputsServiceConnection(Lcom/android/internal/telephony/CellBroadcastServiceManager$CellBroadcastServiceConnection;)V

    :cond_187
    :goto_187
    return-void
.end method
