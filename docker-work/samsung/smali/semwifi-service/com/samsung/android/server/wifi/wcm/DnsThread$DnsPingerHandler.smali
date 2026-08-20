.class Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;
.super Landroid/os/Handler;
.source "DnsThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsPingerHandler"
.end annotation


# instance fields
.field mCallbackHandler:Landroid/os/Handler;

.field private mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

.field mId:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method static bridge synthetic -$$Nest$mfinish(Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->finish()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Looper;Landroid/os/Handler;J)V
    .registers 7

    .line 288
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    new-instance p2, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    const-string v0, "WifiConnectivityMonitor.DnsPingerHandler"

    invoke-direct {p2, p1, p0, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;-><init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    .line 291
    iput-object p3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 292
    iput-wide p4, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mId:J

    return-void
.end method

.method private finish()V
    .registers 2

    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->quit()V

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x91000

    const-string v2, "WifiConnectivityMonitor.DnsThread"

    if-eq v0, v1, :cond_25

    const v1, 0x91005

    if-eq v0, v1, :cond_25

    .line 335
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore msg id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 315
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    if-nez v0, :cond_2a

    goto :goto_8d

    .line 318
    :cond_2a
    :try_start_2a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->checkDnsResult(III)I

    move-result v0
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_33} :catch_78

    const/16 v1, 0xa

    if-ne v0, v1, :cond_38

    goto :goto_8d

    .line 327
    :cond_38
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_59

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send DNS CHECK Result ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mId:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckResult(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckRtt(Lcom/samsung/android/server/wifi/wcm/DnsThread;I)V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/net/InetAddress;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmForcedCheckAddress(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/net/InetAddress;)V

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_8d

    :catch_78
    move-exception p0

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DnsPingerHandler - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8d
    return-void
.end method

.method public sendDnsPing(Ljava/lang/String;J)V
    .registers 7

    .line 296
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->mDnsPingerCheck:Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;

    long-to-int p2, p2

    const/4 p3, 0x1

    invoke-virtual {v0, p3, p2, p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsCheck;->requestDnsQuerying(IILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 297
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "WifiConnectivityMonitor.DnsThread"

    const-string p2, "DNS List is empty, need to check quality"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 299
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmCallBackHandler(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/os/Handler;

    move-result-object p2

    const/16 p3, 0xa

    const/4 v0, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p2, p3, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$DnsPingerHandler;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_40
    return-void
.end method
