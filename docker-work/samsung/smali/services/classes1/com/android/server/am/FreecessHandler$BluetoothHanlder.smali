.class public Lcom/android/server/am/FreecessHandler$BluetoothHanlder;
.super Landroid/os/Handler;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothHanlder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;)V
    .registers 2

    .line 428
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 429
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 434
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    const/4 v2, -0x1

    const-string/jumbo v3, "uid"

    if-eq v0, v1, :cond_45

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_f

    goto :goto_7a

    .line 453
    :cond_f
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_1b

    .line 454
    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle FREECESS_UNFREEZE_BT_SCAN_MSG...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 457
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 459
    :try_start_25
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7a

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTTargetList(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 460
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->onUnFreeze(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3c} :catch_3d

    goto :goto_7a

    .line 463
    :catch_3d
    sget-object p0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string p1, "bt unfreeze scan  error!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 436
    :cond_45
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_51

    .line 437
    sget-object v0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "handle FREECESS_FREEZE_BT_SCAN_MSG...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_51
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 440
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 442
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object v0, v0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_7a

    .line 443
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/mars/filter/filter/BlueToothConnectedFilter;->isInBTTargetList(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 444
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;->this$0:Lcom/android/server/am/FreecessHandler;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothAdapter;->onFreeze(I)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_72} :catch_73

    goto :goto_7a

    .line 448
    :catch_73
    sget-object p0, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string p1, "bt freeze scan  error!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    :goto_7a
    return-void
.end method
