.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1120
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 1121
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 1118
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1124
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public disable()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1135
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1136
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1138
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method disable is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 1143
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1145
    throw p0
.end method

.method public enable(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1152
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1154
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 1158
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1156
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enable is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 1161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1163
    throw p0
.end method

.method public enableSaePkOnlyMode(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1170
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1172
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 1176
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1174
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enableSaePkOnlyMode is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1181
    throw p0
.end method

.method public enableSuiteBEapOpenSslCiphers()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1188
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1189
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_29

    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1191
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method enableSuiteBEapOpenSslCiphers is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 1196
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1197
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1198
    throw p0
.end method

.method public enableTlsSuiteBEapPhase1Param(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1205
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1207
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 1214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1209
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method enableTlsSuiteBEapPhase1Param is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 1214
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1216
    throw p0
.end method

.method public getAuthAlg()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1224
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1227
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getAuthAlg is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    throw p0
.end method

.method public getBssid()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1245
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1249
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1250
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1247
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getBssid is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 1253
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1254
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    throw p0
.end method

.method public getEapAltSubjectMatch()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1264
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1265
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1269
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1270
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1267
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapAltSubjectMatch is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1275
    throw p0
.end method

.method public getEapAnonymousIdentity()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1284
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1285
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1290
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1287
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapAnonymousIdentity is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1293
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1295
    throw p0
.end method

.method public getEapCACert()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1304
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1305
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1310
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1307
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapCACert is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1315
    throw p0
.end method

.method public getEapCAPath()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1324
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1325
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1329
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1330
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1327
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapCAPath is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw p0
.end method

.method public getEapClientCert()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1344
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1350
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1347
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapClientCert is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1353
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    throw p0
.end method

.method public getEapDomainSuffixMatch()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1364
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1365
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1369
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1370
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1367
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapDomainSuffixMatch is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1375
    throw p0
.end method

.method public getEapEngine()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1384
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1385
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1387
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapEngine is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    throw p0
.end method

.method public getEapEngineId()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1404
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1410
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1407
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapEngineId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    throw p0
.end method

.method public getEapIdentity()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1424
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1425
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1429
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1427
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapIdentity is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1435
    throw p0
.end method

.method public getEapMethod()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1444
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1445
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1449
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1447
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapMethod is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1453
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1455
    throw p0
.end method

.method public getEapPassword()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1464
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1465
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1467
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapPassword is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1475
    throw p0
.end method

.method public getEapPhase2Method()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1484
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1485
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1489
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1487
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapPhase2Method is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1495
    throw p0
.end method

.method public getEapPrivateKeyId()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1504
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1505
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1507
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapPrivateKeyId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw p0
.end method

.method public getEapSubjectMatch()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1524
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1525
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1529
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1527
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEapSubjectMatch is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1535
    throw p0
.end method

.method public getEdmg()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1544
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1545
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1547
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getEdmg is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    throw p0
.end method

.method public getGroupCipher()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1564
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1565
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1569
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1570
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1567
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getGroupCipher is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1573
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1574
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1575
    throw p0
.end method

.method public getGroupMgmtCipher()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1584
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1585
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1587
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getGroupMgmtCipher is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1595
    throw p0
.end method

.method public getId()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1604
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1605
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1609
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1607
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1615
    throw p0
.end method

.method public getIdStr()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1624
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1625
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1629
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1630
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1627
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getIdStr is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 1128
    sget-object p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "-1"

    .line 2897
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2899
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 2901
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2902
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2904
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 2906
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2908
    throw v2

    .line 2910
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1644
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1645
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1650
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1647
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getInterfaceName is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1653
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1655
    throw p0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2880
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 2881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2884
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2885
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2886
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 2889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 2889
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2890
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2891
    throw p0

    .line 2893
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public getKeyMgmt()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1664
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1665
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1667
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getKeyMgmt is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1675
    throw p0
.end method

.method public getOcsp()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1684
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1685
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1690
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1687
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getOcsp is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    throw p0
.end method

.method public getPairwiseCipher()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1704
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1705
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1710
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1707
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getPairwiseCipher is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw p0
.end method

.method public getProto()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1724
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1725
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1729
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1730
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1727
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getProto is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1733
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1734
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1735
    throw p0
.end method

.method public getPsk()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1744
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1745
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1749
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1750
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1747
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getPsk is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1755
    throw p0
.end method

.method public getPskPassphrase()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1760
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1764
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1765
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1770
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1767
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getPskPassphrase is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1775
    throw p0
.end method

.method public getRequirePmf()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1784
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1785
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1789
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1790
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1787
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getRequirePmf is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1795
    throw p0
.end method

.method public getSaePassword()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1804
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1805
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1810
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1807
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getSaePassword is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1815
    throw p0
.end method

.method public getSaePasswordId()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1824
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1825
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1829
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1830
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1827
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getSaePasswordId is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1833
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    throw p0
.end method

.method public getScanSsid()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1841
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1844
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1845
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1849
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1850
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1847
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getScanSsid is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1853
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1855
    throw p0
.end method

.method public getSsid()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1864
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1869
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1870
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1867
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getSsid is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1875
    throw p0
.end method

.method public getType()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1884
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1885
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1890
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1887
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getType is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1895
    throw p0
.end method

.method public getWapiCertSuite()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1904
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1905
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1909
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1910
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1907
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getWapiCertSuite is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1915
    throw p0
.end method

.method public getWepKey(I)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1924
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 1930
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1931
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_31

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1928
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getWepKey is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 1934
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1935
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1936
    throw p0
.end method

.method public getWepTxKeyIdx()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1945
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1946
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1950
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1948
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getWepTxKeyIdx is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1954
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1956
    throw p0
.end method

.method public getWpsNfcConfigurationToken()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1965
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1966
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 1970
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1971
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1968
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getWpsNfcConfigurationToken is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 1974
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1976
    throw p0
.end method

.method public registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1981
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1984
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1985
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1986
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 1990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 1988
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method registerCallback is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 1993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1995
    throw p0
.end method

.method public select()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2002
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2003
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2005
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method select is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2012
    throw p0
.end method

.method public sendNetworkEapIdentityResponse([B[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2017
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2019
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2021
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2022
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2024
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sendNetworkEapIdentityResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2029
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2031
    throw p0
.end method

.method public sendNetworkEapSimGsmAuthFailure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2038
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2041
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method sendNetworkEapSimGsmAuthFailure is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2047
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2048
    throw p0
.end method

.method public sendNetworkEapSimGsmAuthResponse([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimGsmAuthParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2055
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2056
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2057
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2061
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2059
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sendNetworkEapSimGsmAuthResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2064
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    throw p0
.end method

.method public sendNetworkEapSimUmtsAuthFailure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2073
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2074
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 2078
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2076
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method sendNetworkEapSimUmtsAuthFailure is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 2081
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2082
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2083
    throw p0
.end method

.method public sendNetworkEapSimUmtsAuthResponse(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2087
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2090
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2091
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2092
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2094
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sendNetworkEapSimUmtsAuthResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2099
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    throw p0
.end method

.method public sendNetworkEapSimUmtsAutsResponse([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2106
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2108
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2110
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x33

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2114
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2112
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method sendNetworkEapSimUmtsAutsResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2119
    throw p0
.end method

.method public setAuthAlg(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2126
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2132
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2130
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setAuthAlg is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2137
    throw p0
.end method

.method public setBssid([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2144
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2146
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2150
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2148
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setBssid is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2155
    throw p0
.end method

.method public setDppKeys(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2162
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2163
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2164
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x36

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2166
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setDppKeys is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2171
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2173
    throw p0
.end method

.method public setEapAltSubjectMatch(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2180
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2181
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2182
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x37

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2186
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2184
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapAltSubjectMatch is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2189
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2191
    throw p0
.end method

.method public setEapAnonymousIdentity([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2198
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2200
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x38

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2202
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapAnonymousIdentity is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2209
    throw p0
.end method

.method public setEapCACert(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2213
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2216
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2218
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2222
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2220
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapCACert is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2227
    throw p0
.end method

.method public setEapCAPath(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2234
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2236
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2240
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2238
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapCAPath is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2243
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2245
    throw p0
.end method

.method public setEapClientCert(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2252
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2254
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2258
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2256
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapClientCert is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2261
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    throw p0
.end method

.method public setEapDomainSuffixMatch(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2270
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2272
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2274
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapDomainSuffixMatch is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    throw p0
.end method

.method public setEapEncryptedImsiIdentity([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2288
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2290
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2294
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2292
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapEncryptedImsiIdentity is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2299
    throw p0
.end method

.method public setEapEngine(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2306
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2308
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2310
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapEngine is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2317
    throw p0
.end method

.method public setEapEngineID(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2324
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2326
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2328
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapEngineID is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2333
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2335
    throw p0
.end method

.method public setEapErp(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2342
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2344
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2348
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2346
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapErp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2351
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2353
    throw p0
.end method

.method public setEapIdentity([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2360
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2362
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2364
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapIdentity is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2369
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    throw p0
.end method

.method public setEapMethod(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2378
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x42

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2384
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2382
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapMethod is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2389
    throw p0
.end method

.method public setEapPassword([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2396
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2398
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2402
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2400
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapPassword is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2407
    throw p0
.end method

.method public setEapPhase2Method(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2414
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x44

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2420
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2418
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapPhase2Method is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2425
    throw p0
.end method

.method public setEapPrivateKeyId(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2432
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2434
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2438
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2436
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapPrivateKeyId is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2441
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2443
    throw p0
.end method

.method public setEapSubjectMatch(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2450
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2452
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x46

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2454
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEapSubjectMatch is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2461
    throw p0
.end method

.method public setEdmg(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2468
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2469
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2470
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x47

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2474
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2472
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setEdmg is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2477
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2479
    throw p0
.end method

.method public setGroupCipher(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2486
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2487
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2488
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x48

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2492
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2490
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setGroupCipher is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2495
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2497
    throw p0
.end method

.method public setGroupMgmtCipher(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2504
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x49

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2510
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2508
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setGroupMgmtCipher is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    throw p0
.end method

.method public setIdStr(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2522
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2524
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2526
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setIdStr is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2533
    throw p0
.end method

.method public setKeyMgmt(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2540
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2542
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2544
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setKeyMgmt is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2551
    throw p0
.end method

.method public setOcsp(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2558
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2560
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2564
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2562
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setOcsp is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2567
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2568
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    throw p0
.end method

.method public setPairwiseCipher(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2574
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2576
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2577
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2578
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2582
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2580
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setPairwiseCipher is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2585
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2587
    throw p0
.end method

.method public setPmkCache([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2594
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2596
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2600
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2598
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setPmkCache is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2605
    throw p0
.end method

.method public setProactiveKeyCaching(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2612
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2614
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2618
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2616
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setProactiveKeyCaching is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2621
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2623
    throw p0
.end method

.method public setProto(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2630
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2632
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x50

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2636
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2634
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setProto is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2639
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2640
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2641
    throw p0
.end method

.method public setPsk([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2648
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2650
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x51

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2654
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2652
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setPsk is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2657
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2659
    throw p0
.end method

.method public setPskPassphrase(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2666
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2668
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x52

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2672
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2670
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setPskPassphrase is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2675
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2677
    throw p0
.end method

.method public setRequirePmf(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2684
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2686
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x53

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2688
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setRequirePmf is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2693
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2695
    throw p0
.end method

.method public setRoamingConsortiumSelection([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2862
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2865
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2867
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2869
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setRoamingConsortiumSelection is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2876
    throw p0
.end method

.method public setSaeH2eMode(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2702
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2703
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 2704
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x54

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2708
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2706
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setSaeH2eMode is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2712
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2713
    throw p0
.end method

.method public setSaePassword(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2720
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2722
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2726
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2724
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setSaePassword is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2729
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2731
    throw p0
.end method

.method public setSaePasswordId(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2738
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2739
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2740
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x56

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2744
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2742
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setSaePasswordId is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2747
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2748
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2749
    throw p0
.end method

.method public setScanSsid(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2753
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2756
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2758
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2762
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2760
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setScanSsid is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2767
    throw p0
.end method

.method public setSsid([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2774
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2775
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2776
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x58

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2780
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2778
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setSsid is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2785
    throw p0
.end method

.method public setUpdateIdentifier(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2792
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2793
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2794
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x59

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2798
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2796
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setUpdateIdentifier is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2803
    throw p0
.end method

.method public setWapiCertSuite(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2810
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2812
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2814
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setWapiCertSuite is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2819
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2821
    throw p0
.end method

.method public setWepKey(I[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2828
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2830
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2831
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 2835
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_30

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2833
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setWepKey is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 2838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2840
    throw p0
.end method

.method public setWepTxKeyIdx(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2845
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2847
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2849
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetwork$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 2853
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 2856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2851
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setWepTxKeyIdx is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 2856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2858
    throw p0
.end method
