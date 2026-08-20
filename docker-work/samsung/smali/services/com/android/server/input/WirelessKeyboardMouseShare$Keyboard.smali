.class public Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Keyboard"
.end annotation


# static fields
.field public static final MEDIA_BASE:B = -0x10t

.field public static final MEDIA_COUNT:B = 0x7t


# instance fields
.field public mBuffer:[B

.field public mId:B

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 2

    .line 1548
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 1549
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    const/4 p1, 0x1

    .line 1550
    iput-byte p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .registers 7

    .line 1556
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-object v0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_25

    move p1, v2

    :goto_c
    if-ge p1, v1, :cond_20

    .line 1560
    :try_start_e
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v4, p1

    if-eqz v4, :cond_1d

    const-string p1, "WirelessKeyboardMouseShare"

    const-string v4, "Keyboard need clear()."

    .line 1562
    invoke-static {p1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v3

    goto :goto_21

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_20
    move p1, v2

    :goto_21
    if-eq p1, v3, :cond_25

    .line 1567
    monitor-exit v0

    return-void

    :cond_25
    move p1, v2

    :goto_26
    if-ge p1, v1, :cond_2f

    .line 1571
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aput-byte v2, v4, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_26

    .line 1573
    :cond_2f
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V
    :try_end_38
    .catchall {:try_start_e .. :try_end_38} :catchall_56

    .line 1575
    :try_start_38
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-byte v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v1, v2, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_4b
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_4b} :catch_4c
    .catchall {:try_start_38 .. :try_end_4b} :catchall_56

    goto :goto_54

    :catch_4c
    :try_start_4c
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1577
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    :goto_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_56

    throw p0
.end method

.method public keyDownLocked(B)V
    .registers 7

    .line 1583
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    const/16 v0, -0x10

    const/4 v1, 0x1

    if-lt p1, v0, :cond_20

    const/16 v2, -0x9

    if-ge p1, v2, :cond_20

    .line 1587
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    sub-int/2addr p1, v0

    shl-int p1, v1, p1

    or-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v2, v3

    goto :goto_31

    :cond_20
    move v0, v1

    :goto_21
    const/16 v2, 0x8

    if-ge v0, v2, :cond_31

    .line 1590
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v3, v2, v0

    if-nez v3, :cond_2e

    .line 1591
    aput-byte p1, v2, v0

    goto :goto_31

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1597
    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v0, v2, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1599
    :try_start_3a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1601
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method

.method public keyUpLocked(B)V
    .registers 7

    .line 1605
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmConnectionState(Lcom/android/server/input/WirelessKeyboardMouseShare;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    const/16 v1, -0x10

    const/4 v2, 0x1

    if-lt p1, v1, :cond_21

    const/16 v3, -0x9

    if-ge p1, v3, :cond_21

    .line 1609
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v3, v0

    sub-int/2addr p1, v1

    shl-int p1, v2, p1

    not-int p1, p1

    and-int/2addr p1, v4

    int-to-byte p1, p1

    aput-byte p1, v3, v0

    goto :goto_31

    :cond_21
    move v1, v2

    :goto_22
    const/16 v3, 0x8

    if-ge v1, v3, :cond_31

    .line 1612
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    aget-byte v4, v3, v1

    if-ne v4, p1, :cond_2e

    .line 1613
    aput-byte v0, v3, v1

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1619
    :cond_31
    :goto_31
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    iget-byte v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[BZ)V

    .line 1621
    :try_start_3a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmHidDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothHidDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-static {v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$fgetmPluggedDevice(Lcom/android/server/input/WirelessKeyboardMouseShare;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-byte v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mId:B

    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Keyboard;->mBuffer:[B

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_4d
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_4d} :catch_4e

    goto :goto_56

    :catch_4e
    const-string p0, "WirelessKeyboardMouseShare"

    const-string/jumbo p1, "ignore nullpointer exception "

    .line 1623
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method
