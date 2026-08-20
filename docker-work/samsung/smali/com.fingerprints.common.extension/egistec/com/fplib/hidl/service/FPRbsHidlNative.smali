.class public Legistec/com/fplib/hidl/service/FPRbsHidlNative;
.super Ljava/lang/Object;
.source "FPRbsHidlNative.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# static fields
.field private static final NO_SERVICE:I = -0x1

.field private static final RUN_ERROR:I = -0x2

.field private static final SERVICE_NAME:Ljava/lang/String; = "egistec.rbs.service.daemon"

.field private static final TAG:Ljava/lang/String; = "FPRbsNative"

.field private static mApHandler:Landroid/os/Handler;


# instance fields
.field private mBadPixelCount:I

.field private mCallback:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback;

.field private mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mBadPixelCount:I

    .line 76
    new-instance v0, Legistec/com/fplib/hidl/service/FPRbsHidlNative$1;

    invoke-direct {v0, p0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative$1;-><init>(Legistec/com/fplib/hidl/service/FPRbsHidlNative;)V

    iput-object v0, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mCallback:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback;

    .line 27
    const-string v0, "FPRbsNative"

    const-string v1, "FPRbsNative Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sput-object p1, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mApHandler:Landroid/os/Handler;

    .line 29
    invoke-virtual {p0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->getService()Z

    .line 30
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .line 16
    sget-object v0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mApHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()I
    .registers 4

    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "retval":I
    const-string v1, "FPRbsNative"

    const-string v2, "cancel enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->getService()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 151
    :try_start_e
    iget-object v2, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    invoke-interface {v2}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;->cancel()I

    move-result v2
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_14} :catch_18

    if-eqz v2, :cond_1c

    .line 152
    const/4 v0, -0x2

    goto :goto_1c

    .line 154
    :catch_18
    move-exception v2

    .line 155
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 156
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1c
    :goto_1c
    goto :goto_23

    .line 158
    :cond_1d
    const-string v2, "no service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, -0x1

    .line 162
    :goto_23
    const-string v2, "cancel end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v0
.end method

.method public extraApi(II[B[B[I)I
    .registers 26
    .param p1, "pid"    # I
    .param p2, "cid"    # I
    .param p3, "in_buffer"    # [B
    .param p4, "out_buffer"    # [B
    .param p5, "out_buffer_size"    # [I

    .line 93
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .line 94
    .local v3, "ret":I
    invoke-virtual/range {p0 .. p0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->getService()Z

    move-result v0

    const-string v4, "FPRbsNative"

    if-eqz v0, :cond_16d

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "in_buffer_size":I
    if-eqz v2, :cond_12

    .line 98
    :try_start_10
    array-length v5, v2

    move v0, v5

    .line 100
    :cond_12
    add-int/lit8 v5, v0, 0x4

    new-array v5, v5, [B

    .line 101
    .local v5, "in_msg":[B
    const/4 v6, 0x4

    new-array v7, v6, [B

    .line 102
    .local v7, "cid_buf":[B
    move/from16 v8, p2

    invoke-static {v8, v7}, Legistec/com/fplib/common/Common;->intToBytes(I[B)I

    .line 104
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v9, "vec_buf":Ljava/util/ArrayList;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_24
    array-length v11, v7

    if-ge v10, v11, :cond_33

    .line 107
    aget-byte v11, v7, v10

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v10, v10, 0x1

    goto :goto_24

    .line 110
    .end local v10    # "i":I
    :cond_33
    if-eqz v2, :cond_47

    .line 111
    array-length v10, v7

    .restart local v10    # "i":I
    :goto_36
    array-length v11, v7

    array-length v12, v2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_47

    .line 112
    aget-byte v11, v2, v10

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v10, v10, 0x1

    goto :goto_36

    .line 116
    .end local v10    # "i":I
    :cond_47
    iget-object v10, v1, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_49} :catch_165

    move/from16 v11, p1

    :try_start_4b
    invoke-interface {v10, v11, v9}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;->extra_api(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 118
    .local v10, "vec_outBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Byte;

    invoke-virtual {v12}, Ljava/lang/Byte;->byteValue()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 119
    .local v12, "val1":I
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 120
    .local v13, "val2":I
    const/4 v14, 0x2

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Byte;

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    .line 121
    .local v14, "val3":I
    const/4 v15, 0x3

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Byte;

    invoke-virtual {v15}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    .line 122
    .local v15, "val":I
    add-int v16, v12, v13

    add-int v16, v16, v14

    add-int v3, v16, v15

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v0

    .end local v0    # "in_buffer_size":I
    .local v17, "in_buffer_size":I
    const-string v0, "extra_api, val1: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " val2: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " val3: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " val: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x4

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 126
    .local v0, "out_val1":I
    const/4 v6, 0x5

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    .line 127
    .local v6, "out_val2":I
    const/4 v2, 0x6

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    .line 128
    .local v2, "out_val3":I
    move-object/from16 v16, v5

    .end local v5    # "in_msg":[B
    .local v16, "in_msg":[B
    const/4 v5, 0x7

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 129
    .local v5, "out_val":I
    add-int v18, v0, v6

    add-int v18, v18, v2

    move-object/from16 v19, v7

    .end local v7    # "cid_buf":[B
    .local v19, "cid_buf":[B
    add-int v7, v18, v5

    iput v7, v1, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mBadPixelCount:I

    .line 130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extra_api, out_val1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out_val2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out_val3: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " out_val: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extra_api, ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mBadPixelCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mBadPixelCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_161} :catch_163

    .line 136
    nop

    .end local v0    # "out_val1":I
    .end local v2    # "out_val3":I
    .end local v5    # "out_val":I
    .end local v6    # "out_val2":I
    .end local v9    # "vec_buf":Ljava/util/ArrayList;
    .end local v10    # "vec_outBuf":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v12    # "val1":I
    .end local v13    # "val2":I
    .end local v14    # "val3":I
    .end local v15    # "val":I
    .end local v16    # "in_msg":[B
    .end local v17    # "in_buffer_size":I
    .end local v19    # "cid_buf":[B
    goto :goto_175

    .line 133
    :catch_163
    move-exception v0

    goto :goto_168

    :catch_165
    move-exception v0

    move/from16 v11, p1

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    :goto_168
    const/4 v3, -0x2

    .line 135
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_175

    .line 138
    :cond_16d
    move/from16 v11, p1

    const-string v0, "no service"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, -0x1

    .line 142
    :goto_175
    return v3
.end method

.method public getBadPixelCount()I
    .registers 2

    .line 167
    iget v0, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mBadPixelCount:I

    return v0
.end method

.method public getService()Z
    .registers 6

    .line 33
    const-string v0, "FPRbsNative"

    const-string v1, "getService enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v1, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 35
    return v2

    .line 39
    :cond_d
    :try_start_d
    invoke-static {}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;->getService()Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    move-result-object v1

    iput-object v1, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_13} :catch_14

    .line 42
    goto :goto_18

    .line 40
    :catch_14
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    iget-object v1, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    if-nez v1, :cond_23

    .line 45
    const-string v1, "get service fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_23
    const-string v1, "get service success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    invoke-interface {v0}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-interface {v0, p0, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 52
    return v2
.end method

.method public serviceDied(J)V
    .registers 5
    .param p1, "l"    # J

    .line 172
    const-string v0, "FPRbsNative"

    const-string v1, "ETS Daemon binder Died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    .line 174
    return-void
.end method

.method public setCallback()I
    .registers 5

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "retval":I
    const-string v1, "FPRbsNative"

    const-string v2, "setCallback enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->getService()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 61
    :try_start_e
    iget-object v2, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mRbsService:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;

    iget-object v3, p0, Legistec/com/fplib/hidl/service/FPRbsHidlNative;->mCallback:Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback;

    invoke-interface {v2, v3}, Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbs;->set_on_callback_proc(Lvendor/egistec/hardware/fingerprint/V4_0/IBiometricsFingerprintRbsCallback;)I

    move-result v2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_1a

    if-eqz v2, :cond_1e

    .line 62
    const/4 v0, -0x2

    goto :goto_1e

    .line 64
    :catch_1a
    move-exception v2

    .line 65
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 66
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    goto :goto_25

    .line 68
    :cond_1f
    const-string v2, "no service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, -0x1

    .line 72
    :goto_25
    const-string v2, "enableBinderCallback end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0
.end method
