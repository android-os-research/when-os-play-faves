.class Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    .line 2204
    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 2207
    const-string v0, "ServiceBindHelper"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$msetServiceStatus(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V

    .line 2209
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {p2}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)V

    .line 2211
    :try_start_16
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fgetmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v0

    if-nez v0, :cond_26

    .line 2212
    const-string v0, "ServiceBindHelper"

    const-string v1, "mSamsungInternalService is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 2214
    :cond_26
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-static {v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fgetmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;->getRevision()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmApiRevision(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_33} :catch_34

    .line 2218
    :goto_33
    goto :goto_51

    .line 2216
    :catch_34
    move-exception v0

    .line 2217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceBindHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected: getRevision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_51
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    monitor-enter v0

    .line 2220
    :try_start_54
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2221
    monitor-exit v0

    .line 2222
    return-void

    .line 2221
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_54 .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 2226
    const-string v0, "ServiceBindHelper"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$msetServiceStatus(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V

    .line 2228
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->-$$Nest$fputmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)V

    .line 2229
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    monitor-enter v0

    .line 2230
    :try_start_16
    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;->this$0:Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2231
    monitor-exit v0

    .line 2232
    return-void

    .line 2231
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v1
.end method
