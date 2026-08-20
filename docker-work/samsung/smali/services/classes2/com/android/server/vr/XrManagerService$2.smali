.class public Lcom/android/server/vr/XrManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "XrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public static synthetic $r8$lambda$gFjsTNWRl17hLLV43SHujRsNQwQ(Lcom/android/server/vr/XrManagerService$2;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vr/XrManagerService$2;->lambda$onReceive$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 270
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;)V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0}, Lcom/android/server/vr/HmtManager;->initToken()V

    .line 295
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/HmtManager;->register(Landroid/content/Context;)V

    .line 296
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->updateSupportDevicePolicy()V

    .line 297
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, p1, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->toDisplayPortWhitelistString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/vr/DeviceController;->setDisplayPortState(Ljava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0}, Lcom/android/server/vr/HmtManager;->toPowerLimitingWhitelistString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/vr/DeviceController;->setUsbPowerState(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 274
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 275
    iget-object p2, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p2, p2, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p2, p1}, Lcom/android/server/vr/HmtManager;->register(Landroid/content/Context;)V

    .line 276
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->updateSupportDevicePolicy()V

    .line 277
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p2, p1, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->toDisplayPortWhitelistString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/vr/DeviceController;->setDisplayPortState(Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p2, p1, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->toPowerLimitingWhitelistString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/vr/DeviceController;->setUsbPowerState(Ljava/lang/String;)V

    .line 279
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, p1, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_39
    const-string p1, "XrManagerService"

    const-string/jumbo p2, "update User Unlocked"

    .line 280
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/vr/XrManagerService;->-$$Nest$fputmUserUnlocked(Lcom/android/server/vr/XrManagerService;Z)V

    .line 282
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/XrManagerService;->-$$Nest$mupdateReadyLocked(Lcom/android/server/vr/XrManagerService;)V

    .line 283
    monitor-exit v0

    goto :goto_a4

    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_39 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    const-string/jumbo v0, "sec.app.policy.UPDATE.HmtThridPartyDevicePolicy"

    .line 284
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    const-string v0, "com.samsung.android.scpm.policy.UPDATE.HmtThirdPartyDevicePolicy"

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_83

    :cond_63
    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 289
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a4

    const-string p2, "XrManagerService"

    const-string v0, "cleared scpm app data, token will be updated 1 min. later"

    .line 291
    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    .line 293
    new-instance v0, Lcom/android/server/vr/XrManagerService$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/vr/XrManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vr/XrManagerService$2;Landroid/content/Context;)V

    const-wide/16 p0, 0x3c

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, p0, p1, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_a4

    .line 286
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->updateSupportDevicePolicy()V

    .line 287
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p2, p1, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p1}, Lcom/android/server/vr/HmtManager;->toDisplayPortWhitelistString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/vr/DeviceController;->setDisplayPortState(Ljava/lang/String;)V

    .line 288
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$2;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0}, Lcom/android/server/vr/HmtManager;->toPowerLimitingWhitelistString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/vr/DeviceController;->setUsbPowerState(Ljava/lang/String;)V

    :cond_a4
    :goto_a4
    return-void
.end method
