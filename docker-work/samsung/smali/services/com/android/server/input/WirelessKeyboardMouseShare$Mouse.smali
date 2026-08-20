.class public Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mouse"
.end annotation


# instance fields
.field public mBuffer:[B

.field public mId:B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 2

    .line 1627
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [B

    .line 1628
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 p1, 0x2

    .line 1629
    iput-byte p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .registers 6

    .line 1632
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_18

    .line 1634
    :try_start_9
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aget-byte p1, p1, v2

    if-nez p1, :cond_11

    .line 1635
    monitor-exit v0

    return-void

    :cond_11
    const-string p1, "WirelessKeyboardMouseShare"

    const-string v3, "Mouse need clear()."

    .line 1637
    invoke-static {p1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_18
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte v2, p1, v2

    .line 1640
    aput-byte v2, p1, v1

    const/4 v3, 0x2

    .line 1641
    aput-byte v2, p1, v3

    const/4 v3, 0x3

    .line 1642
    aput-byte v2, p1, v3

    .line 1644
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {v2, v3, p1, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_49

    .line 1646
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, v1, v2, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_3e} :catch_3f
    .catchall {:try_start_2b .. :try_end_3e} :catchall_49

    goto :goto_47

    :catch_3f
    :try_start_3f
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1648
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :goto_47
    monitor-exit v0

    return-void

    :catchall_49
    move-exception p0

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_49

    throw p0
.end method

.method public mouseButtonDownLocked(BBI)V
    .registers 6

    .line 1668
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    return-void

    .line 1671
    :cond_a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    const/4 p3, 0x1

    .line 1672
    aput-byte v0, p1, p3

    .line 1673
    aput-byte v0, p1, p2

    .line 1675
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p2, v0, p1, p3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1677
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, p3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_32
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1679
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3b
    return-void
.end method

.method public mouseButtonUpLocked(BBI)V
    .registers 6

    .line 1683
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    return-void

    .line 1686
    :cond_a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    not-int p3, p3

    and-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p1, v0

    const/4 p3, 0x1

    .line 1687
    aput-byte v0, p1, p3

    .line 1688
    aput-byte v0, p1, p2

    .line 1690
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p2, v0, p1, p3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1692
    :try_start_20
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, p3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_33
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_33} :catch_34

    goto :goto_3c

    :catch_34
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1694
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-void
.end method

.method public mouseMoveLocked(BB)V
    .registers 6

    .line 1654
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    .line 1657
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    .line 1658
    aput-byte p2, v0, v1

    .line 1660
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p1, p2, v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1662
    :try_start_18
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, p2, v0, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1664
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    return-void
.end method

.method public mouseScrollLocked(B)V
    .registers 7

    .line 1698
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    .line 1701
    :cond_a
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v3, v0, v2

    .line 1702
    aput-byte v3, v0, v1

    const/4 v1, 0x3

    .line 1703
    aput-byte p1, v0, v1

    .line 1705
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    invoke-static {p1, v4, v0, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1707
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mId:B

    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    invoke-virtual {p1, v0, v2, v4}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2f
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_2f} :catch_30

    goto :goto_38

    :catch_30
    const-string p1, "WirelessKeyboardMouseShare"

    const-string/jumbo v0, "ignore nullpointer exception "

    .line 1709
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :goto_38
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    aput-byte v3, p0, v1

    return-void
.end method
