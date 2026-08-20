.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatOverridesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/compat/overrides/AppCompatOverridesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageReceiver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final synthetic this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public static bridge synthetic -$$Nest$mregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->register()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->unregister()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V
    .registers 3

    .line 414
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 415
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    .line 416
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.PACKAGE_ADDED"

    .line 417
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_CHANGED"

    .line 418
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    .line 419
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p0, "package"

    .line 420
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 434
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const-string v0, "AppCompatOverridesService"

    if-nez p1, :cond_e

    const-string p0, "Failed to get package name in package receiver"

    .line 436
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 439
    :cond_e
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1e

    const-string p0, "Failed to get action in package receiver"

    .line 442
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    const/4 v1, -0x1

    .line 445
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_74

    goto :goto_47

    :sswitch_27
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    goto :goto_47

    :cond_30
    const/4 v1, 0x2

    goto :goto_47

    :sswitch_32
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_47

    :cond_3b
    const/4 v1, 0x1

    goto :goto_47

    :sswitch_3d
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    goto :goto_47

    :cond_46
    const/4 v1, 0x0

    :goto_47
    packed-switch v1, :pswitch_data_82

    .line 456
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported action in package receiver: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 451
    :pswitch_5f
    iget-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p2, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$misInstalledForAnyUser(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_72

    .line 452
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$mremoveAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    goto :goto_72

    .line 448
    :pswitch_6d
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->this$0:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-static {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->-$$Nest$maddAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V

    :cond_72
    :goto_72
    return-void

    nop

    :sswitch_data_74
    .sparse-switch
        0xa480416 -> :sswitch_3d
        0x1f50b9c2 -> :sswitch_32
        0x5c1076e2 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_5f
        :pswitch_6d
    .end packed-switch
.end method

.method public final register()V
    .registers 4

    .line 424
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister()V
    .registers 2

    .line 429
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
