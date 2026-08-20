.class public Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "B2CListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/B2CListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageRemovedReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 74
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageRemovedReceiver: onReceive() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 76
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/util/KnoxAnalyticsQueryResolver;->getB2CFeaturePackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_5f

    .line 78
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 79
    iget-object p1, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$fgetmActivationMonitor(Lcom/samsung/android/knox/analytics/activation/B2CListener;)Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    invoke-static {}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B2C application removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_5f
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/B2CListener$PackageRemovedReceiver;->this$0:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->-$$Nest$mcheckRemovedReceiver(Lcom/samsung/android/knox/analytics/activation/B2CListener;)V

    :cond_64
    return-void
.end method
