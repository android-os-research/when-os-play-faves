.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V
    .registers 2

    .line 391
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;->this$0:Lcom/samsung/android/server/wifi/share/mcf/CasterManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    const-string p0, "WifiProfileShare.McfCast"

    if-nez p1, :cond_a

    const-string p1, "-ME--- mQosMcfDeviceDiscoverCallback.onDeviceDiscovered mcfDevice is null"

    .line 395
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sent qos information"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    const-string p0, "WifiProfileShare.McfCast"

    if-nez p1, :cond_a

    const-string p1, "-ME--- mQosMcfDeviceDiscoverCallback.onDeviceRemoved mcfDevice is null"

    .line 404
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 408
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onDeviceRemoved(qos)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
