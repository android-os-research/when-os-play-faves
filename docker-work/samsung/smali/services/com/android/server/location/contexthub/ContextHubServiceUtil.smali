.class public Lcom/android/server/location/contexthub/ContextHubServiceUtil;
.super Ljava/lang/Object;
.source "ContextHubServiceUtil.java"


# static fields
.field public static final CONTEXT_HUB_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_CONTEXT_HUB"

.field public static final HOST_ENDPOINT_BROADCAST:C = '\uffff'

.field public static final TAG:Ljava/lang/String; = "ContextHubServiceUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermissions(Landroid/content/Context;)V
    .registers 3

    const-string v0, "android.permission.ACCESS_CONTEXT_HUB"

    const-string v1, "ACCESS_CONTEXT_HUB permission required to use Context Hub"

    .line 304
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyToByteArrayList([BLjava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 78
    array-length v0, p0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 79
    array-length v0, p0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_17

    aget-byte v2, p0, v1

    .line 80
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    return-void
.end method

.method public static createAidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/ContextHubMessage;
    .registers 5

    .line 255
    new-instance v0, Landroid/hardware/contexthub/ContextHubMessage;

    invoke-direct {v0}, Landroid/hardware/contexthub/ContextHubMessage;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    int-to-char p0, p0

    .line 259
    iput-char p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    .line 260
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    .line 261
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    .line 263
    iput-object p0, v0, Landroid/hardware/contexthub/ContextHubMessage;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method public static createAidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/NanoappBinary;
    .registers 5

    const-string v0, "ContextHubServiceUtil"

    .line 159
    new-instance v1, Landroid/hardware/contexthub/NanoappBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/NanoappBinary;-><init>()V

    .line 162
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappId:J

    .line 163
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->nanoappVersion:I

    .line 164
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/NanoappBinary;->flags:I

    .line 165
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMajorVersion:B

    .line 166
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/NanoappBinary;->targetChreApiMinorVersion:B

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 168
    iput-object v2, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B

    .line 173
    :try_start_2a
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p0

    iput-object p0, v1, Landroid/hardware/contexthub/NanoappBinary;->customBinary:[B
    :try_end_30
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2a .. :try_end_30} :catch_37
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_30} :catch_31

    goto :goto_3f

    :catch_31
    const-string p0, "NanoApp binary was null"

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_37
    move-exception p0

    .line 175
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3f
    return-object v1
.end method

.method public static createContextHubInfoMap(Ljava/util/List;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/location/ContextHubInfo;

    .line 63
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_21
    return-object v0
.end method

.method public static createHidlContextHubMessage(SLandroid/hardware/location/NanoAppMessage;)Landroid/hardware/contexthub/V1_0/ContextHubMsg;
    .registers 5

    .line 235
    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    .line 238
    iput-short p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    .line 239
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageType()I

    move-result p0

    iput p0, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    .line 240
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object p0

    iget-object p1, v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V

    return-object v0
.end method

.method public static createHidlNanoAppBinary(Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/contexthub/V1_0/NanoAppBinary;
    .registers 5

    const-string v0, "ContextHubServiceUtil"

    .line 127
    new-instance v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;

    invoke-direct {v1}, Landroid/hardware/contexthub/V1_0/NanoAppBinary;-><init>()V

    .line 130
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppId()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appId:J

    .line 131
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getNanoAppVersion()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->appVersion:I

    .line 132
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getFlags()I

    move-result v2

    iput v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->flags:I

    .line 133
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMajorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMajorVersion:B

    .line 134
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getTargetChreApiMinorVersion()B

    move-result v2

    iput-byte v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->targetChreApiMinorVersion:B

    .line 139
    :try_start_25
    invoke-virtual {p0}, Landroid/hardware/location/NanoAppBinary;->getBinaryNoHeader()[B

    move-result-object p0

    iget-object v2, v1, Landroid/hardware/contexthub/V1_0/NanoAppBinary;->customBinary:Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->copyToByteArrayList([BLjava/util/ArrayList;)V
    :try_end_2e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_25 .. :try_end_2e} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_3d

    :catch_2f
    const-string p0, "NanoApp binary was null"

    .line 143
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :catch_35
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3d
    return-object v1
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/ContextHubMessage;)Landroid/hardware/location/NanoAppMessage;
    .registers 6

    .line 292
    iget-wide v0, p0, Landroid/hardware/contexthub/ContextHubMessage;->nanoappId:J

    iget v2, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageType:I

    iget-object v3, p0, Landroid/hardware/contexthub/ContextHubMessage;->messageBody:[B

    iget-char p0, p0, Landroid/hardware/contexthub/ContextHubMessage;->hostEndPoint:C

    const v4, 0xffff

    if-ne p0, v4, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-static {v0, v1, v2, v3, p0}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;
    .registers 6

    .line 276
    iget-object v0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msg:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->createPrimitiveByteArray(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 278
    iget-wide v1, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->appName:J

    iget v3, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->msgType:I

    iget-short p0, p0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    const/4 v4, -0x1

    if-ne p0, v4, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    invoke-static {v1, v2, v3, v0, p0}, Landroid/hardware/location/NanoAppMessage;->createMessageFromNanoApp(JI[BZ)Landroid/hardware/location/NanoAppMessage;

    move-result-object p0

    return-object p0
.end method

.method public static createNanoAppStateList(Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    .line 194
    new-instance v8, Landroid/hardware/location/NanoAppState;

    iget-object v2, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v3, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iget v5, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iget-boolean v6, v2, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iget-object v7, v1, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_29
    return-object v0
.end method

.method public static createNanoAppStateList([Landroid/hardware/contexthub/NanoappInfo;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/hardware/contexthub/NanoappInfo;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;"
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_45

    aget-object v4, p0, v3

    .line 213
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object v5, v4, Landroid/hardware/contexthub/NanoappInfo;->rpcServices:[Landroid/hardware/contexthub/NanoappRpcService;

    array-length v6, v5

    move v7, v2

    :goto_15
    if-ge v7, v6, :cond_28

    aget-object v8, v5, v7

    .line 215
    new-instance v9, Landroid/hardware/location/NanoAppRpcService;

    iget-wide v12, v8, Landroid/hardware/contexthub/NanoappRpcService;->id:J

    iget v8, v8, Landroid/hardware/contexthub/NanoappRpcService;->version:I

    invoke-direct {v9, v12, v13, v8}, Landroid/hardware/location/NanoAppRpcService;-><init>(JI)V

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 217
    :cond_28
    new-instance v12, Landroid/hardware/location/NanoAppState;

    iget-wide v6, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappId:J

    iget v8, v4, Landroid/hardware/contexthub/NanoappInfo;->nanoappVersion:I

    iget-boolean v9, v4, Landroid/hardware/contexthub/NanoappInfo;->enabled:Z

    new-instance v10, Ljava/util/ArrayList;

    iget-object v4, v4, Landroid/hardware/contexthub/NanoappInfo;->permissions:[Ljava/lang/String;

    .line 219
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Landroid/hardware/location/NanoAppState;-><init>(JIZLjava/util/List;Ljava/util/List;)V

    .line 217
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_45
    return-object v0
.end method

.method public static createPrimitiveByteArray(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 93
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 94
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method public static createPrimitiveIntArray(Ljava/util/Collection;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 107
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 110
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    .line 111
    aput v2, v0, v1

    move v1, v3

    goto :goto_b

    :cond_21
    return-object v0
.end method

.method public static toContextHubEvent(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEvent: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextHubServiceUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v0
.end method

.method public static toContextHubEventFromAidl(I)I
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toContextHubEventFromAidl: Unknown event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContextHubServiceUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1c
    return v0
.end method

.method public static toHubAppInfo_1_2(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_0/HubAppInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/contexthub/V1_2/HubAppInfo;",
            ">;"
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;

    .line 345
    new-instance v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;

    invoke-direct {v2}, Landroid/hardware/contexthub/V1_2/HubAppInfo;-><init>()V

    .line 346
    iget-object v3, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->info_1_0:Landroid/hardware/contexthub/V1_0/HubAppInfo;

    iget-wide v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    iput-wide v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->appId:J

    .line 347
    iget v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    iput v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->version:I

    .line 348
    iget-object v4, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->memUsage:Ljava/util/ArrayList;

    .line 349
    iget-boolean v1, v1, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    iput-boolean v1, v3, Landroid/hardware/contexthub/V1_0/HubAppInfo;->enabled:Z

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Landroid/hardware/contexthub/V1_2/HubAppInfo;->permissions:Ljava/util/ArrayList;

    .line 351
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_37
    return-object v0
.end method

.method public static toTransactionResult(I)I
    .registers 2

    if-eqz p0, :cond_10

    const/4 v0, 0x5

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    return v0

    :cond_e
    const/4 p0, 0x4

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method
