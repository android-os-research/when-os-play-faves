.class public Lcom/samsung/android/server/battery/SpenBatteryManager$1;
.super Ljava/lang/Object;
.source "SpenBatteryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/battery/SpenBatteryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;


# direct methods
.method public static synthetic $r8$lambda$EHqW9XS6R5umO9PGKM2bPMwyWPk(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->lambda$onBindingDied$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LZ1QlRbvSDUBZsKjrZPiXR-uU78(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eMmDPBmK9w_SpkhmyusRBfD5f4Q(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/battery/SpenBatteryManager;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onBindingDied$2(Landroid/content/ComponentName;)V
    .registers 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBatteryManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_44

    .line 127
    :try_start_20
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2a

    goto :goto_3f

    :catch_2a
    move-exception p1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception occurred : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_3f
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fputmIsSpenServiceBound(Lcom/samsung/android/server/battery/SpenBatteryManager;Z)V

    .line 133
    :cond_44
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1, v1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fputmServiceConnectionRetry(Lcom/samsung/android/server/battery/SpenBatteryManager;I)V

    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mretryReconnection(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    return-void
.end method

.method private synthetic lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBatteryManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1, p2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fputmService(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/IBinder;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    new-instance p2, Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;

    iget-object v1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    iget-object v2, v1, Lcom/samsung/android/server/battery/SpenBatteryManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/battery/SpenBatteryManager$SpenHandler;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Looper;)V

    invoke-direct {p2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-static {p1, p2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fputmMessenger(Lcom/samsung/android/server/battery/SpenBatteryManager;Landroid/os/Messenger;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmMessenger(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Messenger;

    move-result-object p2

    const-string v0, "getBleSpenDeviceUidList"

    const-string v1, ""

    invoke-virtual {p1, v0, v1, p2}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmMessenger(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Messenger;

    move-result-object p1

    const-string/jumbo p2, "setPairedSpenNotifyCallback"

    invoke-virtual {p0, p2, v1, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager;->requestCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;)V

    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V
    .registers 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpenBatteryManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {p0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$mremoveSpenBatteryInfos(Lcom/samsung/android/server/battery/SpenBatteryManager;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmServiceConnectHandler(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onNullBinding : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpenBatteryManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmServiceConnectHandler(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/samsung/android/server/battery/SpenBatteryManager$1;->this$0:Lcom/samsung/android/server/battery/SpenBatteryManager;

    invoke-static {v0}, Lcom/samsung/android/server/battery/SpenBatteryManager;->-$$Nest$fgetmServiceConnectHandler(Lcom/samsung/android/server/battery/SpenBatteryManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/battery/SpenBatteryManager$1$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/battery/SpenBatteryManager$1;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
