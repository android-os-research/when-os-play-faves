.class public Lcom/android/server/knox/dar/ddar/ta/TAProxy;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "TAProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;
    }
.end annotation


# static fields
.field public static final ALL_TAS:Ljava/lang/String; = "ALL_TAS"

.field public static final LOAD_TA:Ljava/lang/String; = "LOAD_TA"

.field public static final PROCESS_COMMAND:Ljava/lang/String; = "PROCESS_COMMAND"

.field public static final SETUP_TA:Ljava/lang/String; = "SETUP_TA"

.field public static final TAG:Ljava/lang/String; = "TAProxy"

.field public static final TA_CMD_DATA:Ljava/lang/String; = "TA_CMD_DATA"

.field public static final TA_CMD_ID:Ljava/lang/String; = "TA_CMD_ID"

.field public static final TA_ERROR_MSG:Ljava/lang/String; = "TA_ERROR_MSG"

.field public static final TA_FD:Ljava/lang/String; = "TA_FD"

.field public static final TA_FD_OFFSET:Ljava/lang/String; = "TA_FD_OFFSET"

.field public static final TA_FD_SIZE:Ljava/lang/String; = "TA_FD_SIZE"

.field public static final TA_ID:Ljava/lang/String; = "TA_ID"

.field public static final TA_MAGICNUM:Ljava/lang/String; = "TA_MAGICNUM"

.field public static final TA_PROCESS_NAME:Ljava/lang/String; = "TA_PROCESS_NAME"

.field public static final TA_RECV_RESP_SIZE:Ljava/lang/String; = "TA_RECV_RESP_SIZE"

.field public static final TA_RESPDATA:Ljava/lang/String; = "TA_RESPDATA"

.field public static final TA_RESP_CODE:Ljava/lang/String; = "TA_RESP_CODE"

.field public static final TA_ROOT_NAME:Ljava/lang/String; = "TA_ROOT_NAME"

.field public static final TA_SEND_CMD_SIZE:Ljava/lang/String; = "TA_SEND_CMD_SIZE"

.field public static final TA_TECHNOLOGY:Ljava/lang/String; = "TA_TECHNOLOGY"

.field public static final TA_VERSION:Ljava/lang/String; = "TA_VERSION"

.field public static final UNLOAD_TA:Ljava/lang/String; = "UNLOAD_TA"

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;


# instance fields
.field public mTAMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "TAProxy"

    const-string v1, "TAProxy() called updated"

    .line 62
    invoke-static {v0, v1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    sput-object p1, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/ta/TAProxy;
    .registers 3

    const-class v0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;

    .line 58
    :cond_e
    sget-object p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mInstance:Lcom/android/server/knox/dar/ddar/ta/TAProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enforceCallingUser(I)V
    .registers 3

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "TAProxy"

    const-string v0, "enforceCallingUser"

    .line 247
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 251
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 v0, 0x1482

    if-ne p1, v0, :cond_17

    return-void

    .line 255
    :cond_17
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    if-ne p0, p1, :cond_22

    return-void

    .line 256
    :cond_22
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by system user"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TAProxy"

    const-string v3, "TAProxy::loadTA"

    .line 216
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    if-eqz p2, :cond_11

    .line 219
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    goto :goto_12

    :cond_11
    const/4 v1, -0x1

    :goto_12
    move v4, v1

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA fd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 224
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    move-wide v5, p3

    move-wide v7, p5

    .line 227
    :try_start_49
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->loadTA(IJJ)Z

    move-result p0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_58

    if-eqz p2, :cond_57

    .line 231
    :try_start_4f
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_57
    :goto_57
    return p0

    :catchall_58
    move-exception p0

    if-eqz p2, :cond_63

    .line 231
    :try_start_5b
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p1

    .line 233
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 236
    :cond_63
    :goto_63
    throw p0
.end method

.method public final loadTARequest(Landroid/os/Bundle;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "loadTARequest called"

    .line 168
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "TA_FD"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    const-string v0, "TA_FD_OFFSET"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "TA_FD_SIZE"

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v1, p0

    .line 174
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->loadTA(ILandroid/os/ParcelFileDescriptor;JJ)Z

    move-result p0

    return p0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->enforceCallingUser(I)V

    :try_start_3
    const-string p1, "TAProxy"

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x1

    .line 114
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_88

    goto :goto_55

    :sswitch_2e
    const-string v1, "PROCESS_COMMAND"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    move v1, v3

    goto :goto_56

    :sswitch_38
    const-string v1, "LOAD_TA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    move v1, v5

    goto :goto_56

    :sswitch_42
    const-string v1, "UNLOAD_TA"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    move v1, v4

    goto :goto_56

    :sswitch_4c
    const-string v2, "SETUP_TA"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_52} :catch_81

    if-eqz p2, :cond_55

    goto :goto_56

    :cond_55
    :goto_55
    move v1, v0

    :goto_56
    const-string p2, "dual_dar_response"

    if-eqz v1, :cond_79

    if-eq v1, v5, :cond_71

    if-eq v1, v4, :cond_69

    if-eq v1, v3, :cond_61

    goto :goto_80

    .line 128
    :cond_61
    :try_start_61
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    .line 129
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_80

    .line 124
    :cond_69
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->unloadTARequest(Landroid/os/Bundle;)Z

    move-result p0

    .line 125
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_80

    .line 120
    :cond_71
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->loadTARequest(Landroid/os/Bundle;)Z

    move-result p0

    .line 121
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_80

    .line 116
    :cond_79
    invoke-virtual {p0, p3}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->setupTARequest(Landroid/os/Bundle;)Z

    move-result p0

    .line 117
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_80} :catch_81

    :goto_80
    return-object p1

    :catch_81
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_88
    .sparse-switch
        -0x7bc5cc71 -> :sswitch_4c
        0x203147ad -> :sswitch_42
        0x3edcc066 -> :sswitch_38
        0x632dfd3b -> :sswitch_2e
    .end sparse-switch
.end method

.method public final processCommandRequest(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "processCommandRequest called"

    .line 185
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    new-instance v2, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;

    invoke-direct {v2}, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;-><init>()V

    const-string v3, "TA_VERSION"

    .line 192
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "TA_MAGICNUM"

    .line 193
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "TA_CMD_ID"

    .line 194
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "TA_CMD_DATA"

    .line 195
    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 191
    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->init(I[BI[B)V

    .line 197
    invoke-virtual {p0, v0, v2}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->processTACommand(ILcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;

    move-result-object p0

    if-eqz p0, :cond_51

    .line 199
    iget p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponseCode:I

    const-string v0, "TA_RESP_CODE"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    iget-object p1, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mErrorMsg:Ljava/lang/String;

    const-string v0, "TA_ERROR_MSG"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;->mResponse:[B

    const-string p1, "TA_RESPDATA"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_51
    return-object v1
.end method

.method public processTACommand(ILcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;
    .registers 6

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAProxy::processTACommand: request = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; request.mCommandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;->mCommandId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; this.mTAId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "TAProxy"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 211
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 212
    invoke-virtual {p0, p2}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->processTACommand(Lcom/android/server/knox/dar/ddar/ta/TACommandRequest;)Lcom/android/server/knox/dar/ddar/ta/TACommandResponse;

    move-result-object p0

    return-object p0
.end method

.method public final setupTARequest(Landroid/os/Bundle;)Z
    .registers 15

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TAProxy"

    const-string/jumbo v3, "setupTARequest called"

    .line 144
    invoke-static {v2, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "ALL_TAS"

    .line 145
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    move v1, v0

    .line 146
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_80

    .line 147
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "TA_ID"

    .line 148
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 149
    iget-object v5, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7d

    .line 150
    new-instance v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;-><init>(Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo-IA;)V

    .line 151
    iput v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    const-string v4, "TA_TECHNOLOGY"

    .line 152
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    const-string v4, "TA_ROOT_NAME"

    .line 153
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    const-string v4, "TA_PROCESS_NAME"

    .line 154
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    const-string v4, "TA_SEND_CMD_SIZE"

    .line 155
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    const-string v4, "TA_RECV_RESP_SIZE"

    .line 156
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->maxRecvRespSize:I

    .line 157
    new-instance v3, Lcom/android/server/knox/dar/ddar/ta/TZNative;

    iget v7, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    iget-object v8, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taTechnology:Ljava/lang/String;

    iget-object v9, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taRootName:Ljava/lang/String;

    iget-object v10, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taProcessName:Ljava/lang/String;

    iget v11, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->maxSendCmdSize:I

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Lcom/android/server/knox/dar/ddar/ta/TZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 159
    iput-object v3, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 160
    iget-object v3, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    iget v4, v5, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->taId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_80
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo p1, "setupTARequest completed"

    .line 163
    invoke-static {v2, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x1

    return p0
.end method

.method public unloadTA(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string v2, "TAProxy::unloadTA"

    .line 240
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->mTAMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/ta/TAProxy$TAInfo;->ta:Lcom/android/server/knox/dar/ddar/ta/TZNative;

    .line 243
    invoke-virtual {p0}, Lcom/android/server/knox/dar/ddar/ta/TZNative;->unloadTA()V

    return-void
.end method

.method public final unloadTARequest(Landroid/os/Bundle;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TAProxy"

    const-string/jumbo v2, "unloadTARequest called"

    .line 178
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v0, "TA_ID"

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/knox/dar/ddar/ta/TAProxy;->unloadTA(I)V

    const/4 p0, 0x1

    return p0
.end method
