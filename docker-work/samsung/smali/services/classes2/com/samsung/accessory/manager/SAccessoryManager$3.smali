.class public Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10

    const-string v0, "USBPD_IDS"

    const-string v1, "UEventObserver, event : "

    const-string v2, "SWITCH_STATE"

    .line 240
    :try_start_6
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v3, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmIsFactory(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v3

    if-nez v3, :cond_b6

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_3c

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3c

    goto/16 :goto_b6

    .line 244
    :cond_3c
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_54

    .line 245
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mattachUsbTypeC(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    return-void

    :cond_54
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_65

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_65
    const-string v0, "b001b7ff"

    .line 253
    invoke-static {v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$smstringToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 254
    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetisUsbReady(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d9

    if-eqz v3, :cond_d9

    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_d9

    const/4 v4, 0x0

    aget-object v6, v3, v4

    const-string v7, "04e8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 255
    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$smstringToByte(Ljava/lang/String;)[B

    move-result-object v3

    .line 256
    array-length v6, v3

    const/4 v7, 0x4

    if-ne v6, v7, :cond_ae

    aget-byte v6, v3, v4

    aget-byte v4, v0, v4

    if-ne v6, v4, :cond_ae

    aget-byte v3, v3, v5

    aget-byte v4, v0, v5

    if-lt v3, v4, :cond_ae

    const/4 v4, 0x5

    aget-byte v0, v0, v4

    if-gt v3, v0, :cond_ae

    .line 257
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$mattachUsbTypeC(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    goto :goto_d9

    .line 259
    :cond_ae
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 242
    :cond_b6
    :goto_b6
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "uEvent switch state is not related with usb auth or Factory binary"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c0} :catch_c1

    return-void

    .line 262
    :catch_c1
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse switch state from event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    :goto_d9
    return-void
.end method
