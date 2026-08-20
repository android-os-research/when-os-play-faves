.class Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;
.super Landroid/os/Handler;
.source "SemWifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelaySyncHandler"
.end annotation


# static fields
.field private static final CMD_SYNC_CONFIG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;


# direct methods
.method static bridge synthetic -$$Nest$msyncWifiConfigs(Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->syncWifiConfigs(J)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;)V
    .registers 3

    .line 774
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 775
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiConfigManager;Landroid/os/Looper;)V

    return-void
.end method

.method private syncWifiConfigs(J)V
    .registers 4

    const/4 v0, 0x1

    .line 779
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->removeMessages(I)V

    .line 780
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 785
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    .line 786
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConfigManager$DelaySyncHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->-$$Nest$msyncManagedWifiNetworks(Lcom/samsung/android/server/wifi/SemWifiConfigManager;)V

    :cond_a
    return-void
.end method
