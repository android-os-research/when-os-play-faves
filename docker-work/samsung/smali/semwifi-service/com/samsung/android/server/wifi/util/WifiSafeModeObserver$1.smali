.class Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;
.super Landroid/database/ContentObserver;
.source "WifiSafeModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;


# direct methods
.method public static synthetic $r8$lambda$UK0XJe9wFtlmv-q9cLFIctes4nk(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->lambda$onChange$0(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;Landroid/os/Handler;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private static synthetic lambda$onChange$0(ZLcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V
    .registers 2

    .line 45
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;->onChanged(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 43
    iget-object p1, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    move-result p1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->-$$Nest$fgetlock(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 45
    :try_start_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1;->this$0:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;)Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$1$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {p0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 46
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw p0
.end method
