.class Lcom/android/server/audio/AudioDeviceInventory$1;
.super Ljava/util/LinkedHashMap;
.source "AudioDeviceInventory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioDeviceInventory;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioDeviceInventory;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceInventory$1;->this$0:Lcom/android/server/audio/AudioDeviceInventory;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 6

    .line 95
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo v1, "put"

    const/4 v2, 0x1

    .line 96
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 92
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->put(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 6

    .line 102
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-nez v0, :cond_f

    const/4 v1, 0x1

    const-string/jumbo v2, "putIfAbsent"

    .line 104
    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_f
    return-object v0
.end method

.method public bridge synthetic putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 92
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->putIfAbsent(Ljava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public final record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V
    .registers 6

    .line 139
    new-instance p0, Landroid/media/MediaMetrics$Item;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audio.device."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceType:I

    .line 140
    invoke-static {v0}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    sget-object p3, Landroid/media/MediaMetrics$Property;->ADDRESS:Landroid/media/MediaMetrics$Key;

    iget-object v0, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceAddress:Ljava/lang/String;

    .line 141
    invoke-virtual {p0, p3, v0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p3, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 142
    invoke-virtual {p0, p3, p1}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->NAME:Landroid/media/MediaMetrics$Key;

    iget-object p3, p4, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;->mDeviceName:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1, p3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    sget-object p1, Landroid/media/MediaMetrics$Property;->STATE:Landroid/media/MediaMetrics$Key;

    if-eqz p2, :cond_39

    const-string p2, "connected"

    goto :goto_3b

    :cond_39
    const-string p2, "disconnected"

    .line 144
    :goto_3b
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object p0

    .line 146
    invoke-virtual {p0}, Landroid/media/MediaMetrics$Item;->record()Z

    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;
    .registers 5

    .line 111
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 113
    check-cast p1, Ljava/lang/String;

    const-string/jumbo v2, "remove"

    invoke-virtual {p0, v2, v1, p1, v0}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_11
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceInventory$1;->remove(Ljava/lang/Object;)Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    .line 120
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 122
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;

    const-string/jumbo v2, "remove"

    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/android/server/audio/AudioDeviceInventory$1;->record(Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/audio/AudioDeviceInventory$DeviceInfo;)V

    :cond_11
    return v0
.end method
