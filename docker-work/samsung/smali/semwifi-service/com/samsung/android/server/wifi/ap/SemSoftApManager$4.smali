.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;
.super Landroid/database/ContentObserver;
.source "SemSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->registerForWifiSharingModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Handler;)V
    .registers 3

    .line 721
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    .line 724
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    .line 725
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->readWifiSharingMode()Z

    .line 726
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetMHSDBG()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 727
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v0

    if-eq p1, v0, :cond_3d

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wifi Sharing Provider changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "->"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$4;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemSoftApManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void
.end method
