.class public Lcom/samsung/android/knox/analytics/activation/KESListener;
.super Landroid/content/BroadcastReceiver;
.source "KESListener.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

.field public static final EXTRA_ENROLL_STATUS:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

.field public static final KME_BROADCAST_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/KESListener;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V
    .registers 3

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 43
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mActivationMonitor:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    const-string p1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.PACKAGE_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.extra.ENROLLED"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    :cond_3e
    return-void
.end method

.method public register()V
    .registers 5

    .line 31
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/KESListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.enterprise.knox.cloudmdm.smdms.intent.action.KES_STATE_CHANGED"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/KESListener;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_KES_INTERNAL"

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
