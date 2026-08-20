.class Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemSupportedFeatureLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemSupportedFeatureReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 197
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemSupportedFeatureReceiver.onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$SemSupportedFeatureReceiver;->this$0:Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;->-$$Nest$mparseSupportedFeature(Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger;)V

    :cond_29
    return-void
.end method
