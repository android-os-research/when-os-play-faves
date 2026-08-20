.class public Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/B2CListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivationReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 50
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivationReceiver: onReceive() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.analytics.intent.action.B2C_ACTIVATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "com.samsung.android.knox.analytics.intent.extra.B2C_PACKAGE_NAME"

    .line 52
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.knox.analytics.intent.extra.B2C_FEATURE"

    .line 53
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.knox.analytics.intent.extra.B2C_ACTIVATION_STATUS"

    .line 54
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 55
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmActivationMonitor(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8c

    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmPackageRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    move-result-object p1

    if-nez p1, :cond_8c

    .line 58
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    new-instance p2, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    invoke-direct {p2, p1}, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;-><init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fputmPackageRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;)V

    .line 59
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p2, "package"

    .line 61
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmPackageRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmHandler(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p2, v0, p1, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_97

    .line 64
    :cond_8c
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_97

    .line 65
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$ActivationReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$mcheckRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    :cond_97
    :goto_97
    return-void
.end method
