.class Lcom/android/commands/uinput/Device$DeviceCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/uinput/Device;


# direct methods
.method private constructor <init>(Lcom/android/commands/uinput/Device;)V
    .registers 2

    .line 184
    iput-object p1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/uinput/Device;Lcom/android/commands/uinput/Device$DeviceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Device$DeviceCallback;-><init>(Lcom/android/commands/uinput/Device;)V

    return-void
.end method


# virtual methods
.method public onDeviceConfigure(I)V
    .registers 7
    .param p1, "handle"    # I

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    .line 191
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 192
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 193
    .local v2, "data":[I
    invoke-static {p1, v1, v2}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeConfigure(II[I)V

    .line 190
    .end local v1    # "key":I
    .end local v2    # "data":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    .end local v0    # "i":I
    :cond_29
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_65

    .line 197
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_65

    .line 198
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 199
    .restart local v1    # "key":I
    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsrc/com/android/commands/uinput/InputAbsInfo;

    .line 200
    .local v2, "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 201
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lsrc/com/android/commands/uinput/InputAbsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 202
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 203
    invoke-static {p1, v1, v3}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeSetAbsInfo(IILandroid/os/Parcel;)V

    .line 197
    .end local v1    # "key":I
    .end local v2    # "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .end local v3    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 206
    .end local v0    # "i":I
    :cond_65
    return-void
.end method

.method public onDeviceError()V
    .registers 3

    .line 226
    const-string v0, "UinputDevice"

    const-string v1, "Device error occurred, closing /dev/uinput"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 228
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 229
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method

.method public onDeviceOpen()V
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->resumeEvents()V

    .line 187
    return-void
.end method

.method public onDeviceVibrating(I)V
    .registers 6
    .param p1, "value"    # I

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "reason"

    const-string v2, "vibrating"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "id"

    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmId(Lcom/android/commands/uinput/Device;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1c} :catch_40

    .line 216
    nop

    .line 218
    :try_start_1d
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/uinput/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 219
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/uinput/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_37} :catch_39

    .line 222
    nop

    .line 223
    return-void

    .line 220
    :catch_39
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v1

    .line 215
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create JSON object "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
