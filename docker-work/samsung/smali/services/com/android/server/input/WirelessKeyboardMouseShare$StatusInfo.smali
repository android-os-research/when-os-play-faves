.class public Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;
.super Ljava/lang/Object;
.source "WirelessKeyboardMouseShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/WirelessKeyboardMouseShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatusInfo"
.end annotation


# instance fields
.field public mAppRegistered:Z

.field public mConnectionState:I

.field public mFocusedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToString:Ljava/lang/String;

.field public mPluggedDeviceToStringList:Ljava/lang/String;

.field public mToLocalTablet:Z

.field public final synthetic this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;


# direct methods
.method public constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V
    .registers 3

    .line 185
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const-string/jumbo v0, "null"

    .line 187
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 188
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 191
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    return-void
.end method


# virtual methods
.method public Equals(Ljava/lang/Object;)I
    .registers 5

    .line 226
    instance-of v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    .line 227
    iget v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    check-cast p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    if-eq v0, v2, :cond_e

    const/4 v1, 0x1

    .line 230
    :cond_e
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    or-int/lit8 v1, v1, 0x2

    .line 233
    :cond_1a
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    or-int/lit8 v1, v1, 0x4

    .line 236
    :cond_26
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    or-int/lit8 v1, v1, 0x8

    .line 239
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iget-boolean v2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    if-eq v0, v2, :cond_3b

    or-int/lit8 v0, v1, 0x10

    move v1, v0

    .line 242
    :cond_3b
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    iget-boolean p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    if-eq p0, p1, :cond_43

    or-int/lit8 v1, v1, 0x20

    :cond_43
    return v1
.end method

.method public setInfo(ILandroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ZZ)V
    .registers 7

    .line 195
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    const-string/jumbo p1, "null"

    if-nez p2, :cond_9

    move-object p2, p1

    goto :goto_d

    .line 196
    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_d
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    if-nez p3, :cond_12

    goto :goto_16

    .line 197
    :cond_12
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_16
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 198
    iput-object p4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 199
    iput-boolean p5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 200
    iput-boolean p6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    return-void
.end method

.method public setInfo(Ljava/lang/Object;)V
    .registers 3

    .line 204
    instance-of v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    if-eqz v0, :cond_1e

    .line 205
    check-cast p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    iget v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 206
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 209
    iget-boolean v0, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 210
    iget-boolean p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    :cond_1e
    return-void
.end method
