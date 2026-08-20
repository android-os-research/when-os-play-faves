.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;
.super Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$3;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdvertiseStarted(I)V
    .registers 2

    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- mQosMcfAdvertiseCallback, onAdvertiseStarted"

    .line 393
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdvertiseStopped(I)V
    .registers 2

    const-string p0, "WifiProfileShare.McfSub"

    const-string p1, "-ME--- onQosAdvertiseStopped "

    .line 397
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
