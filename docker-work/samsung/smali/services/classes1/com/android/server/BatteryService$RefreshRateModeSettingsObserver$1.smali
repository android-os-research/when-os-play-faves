.class public Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1040
    iget-object v0, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    iget-object v0, v0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLock(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1041
    :try_start_9
    iget-object v1, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    iget-object v1, v1, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1042
    iget-object v2, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    iget-object v2, v2, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v3, "refresh_rate_mode"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/BatteryService;->-$$Nest$fputmRefreshRateModeSetting(Lcom/android/server/BatteryService;I)V

    .line 1044
    invoke-static {}, Lcom/android/server/BatteryService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateMode Setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    iget-object v3, v3, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmRefreshRateModeSetting(Lcom/android/server/BatteryService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object p0, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver$1;->this$1:Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;

    iget-object p0, p0, Lcom/android/server/BatteryService$RefreshRateModeSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmRefreshRateModeSetting(Lcom/android/server/BatteryService;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/BatteryService;->-$$Nest$msetRefreshRateMode(Lcom/android/server/BatteryService;I)V

    .line 1046
    monitor-exit v0

    return-void

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_9 .. :try_end_54} :catchall_52

    throw p0
.end method
