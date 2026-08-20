.class Lcom/android/commands/hid/Device$DeviceCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method private constructor <init>(Lcom/android/commands/hid/Device;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device$DeviceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;)V

    return-void
.end method

.method private sendReportOutput(BB[B)V
    .registers 8
    .param p1, "eventId"    # B
    .param p2, "rtype"    # B
    .param p3, "data"    # [B

    .line 204
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 206
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "eventId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 207
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmId(Lcom/android/commands/hid/Device;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    const-string v1, "reportType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 209
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 210
    .local v1, "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_20
    array-length v3, p3

    if-ge v2, v3, :cond_2d

    .line 211
    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 213
    .end local v2    # "i":I
    :cond_2d
    const-string v2, "reportData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_56

    .line 216
    nop

    .line 218
    .end local v1    # "dataArray":Lorg/json/JSONArray;
    :try_start_33
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/hid/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 219
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/hid/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_4d} :catch_4f

    .line 222
    nop

    .line 224
    return-void

    .line 220
    :catch_4f
    move-exception v1

    .line 221
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 214
    .end local v1    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v1

    .line 215
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create JSON object "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public onDeviceError()V
    .registers 3

    .line 258
    const-string v0, "HidDevice"

    const-string v1, "Device error occurred, closing /dev/uhid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 261
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public onDeviceGetReport(II)V
    .registers 8
    .param p1, "requestId"    # I
    .param p2, "reportId"    # I

    .line 181
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmFeatureReports(Lcom/android/commands/hid/Device;)Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "HidDevice"

    if-nez v0, :cond_27

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received GET_REPORT request for reportId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but \'feature_reports\' section is not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void

    .line 186
    :cond_27
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmFeatureReports(Lcom/android/commands/hid/Device;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 188
    .local v0, "report":[B
    if-nez v0, :cond_51

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested feature report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not specified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_51
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 198
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 199
    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v3}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmTimeToSend(Lcom/android/commands/hid/Device;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 200
    return-void
.end method

.method public onDeviceOpen()V
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/hid/Device$DeviceHandler;->resumeEvents()V

    .line 178
    return-void
.end method

.method public onDeviceOutput(B[B)V
    .registers 8
    .param p1, "rtype"    # B
    .param p2, "data"    # [B

    .line 235
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/android/commands/hid/Device$DeviceCallback;->sendReportOutput(BB[B)V

    .line 236
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputs(Lcom/android/commands/hid/Device;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HidDevice"

    if-nez v0, :cond_14

    .line 237
    const-string v0, "Received OUTPUT request, but \'outputs\' section is not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_14
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputs(Lcom/android/commands/hid/Device;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 241
    .local v0, "response":[B
    if-nez v0, :cond_47

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested response for output "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 248
    :cond_47
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 253
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 254
    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v3}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmTimeToSend(Lcom/android/commands/hid/Device;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 255
    return-void
.end method

.method public onDeviceSetReport(B[B)V
    .registers 4
    .param p1, "rtype"    # B
    .param p2, "data"    # [B

    .line 230
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Lcom/android/commands/hid/Device$DeviceCallback;->sendReportOutput(BB[B)V

    .line 231
    return-void
.end method
