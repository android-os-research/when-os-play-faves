.class public Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
.super Ljava/lang/Object;
.source "fpExtSvc2HidlMgr.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    }
.end annotation


# static fields
.field public static final DEBUGENABLE:Z = true

.field private static final TAG:Ljava/lang/String; = "fpCoreHidlSvc2-Mgr"

.field private static final Version:Ljava/lang/String; = "hidl-client-1.8.0-20200922"

.field private static fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;


# instance fields
.field private ext_cmd_result:[B

.field private fpHidlCallback:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;

.field private fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

.field private mCtx:Landroid/content/Context;

.field private theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    .line 19
    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    .line 20
    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->mCtx:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B

    .line 92
    new-instance v0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;

    invoke-direct {v0, p0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$2;-><init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)V

    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlCallback:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;

    .line 339
    const-string v0, "fpCoreHidlSvc2-Mgr"

    const-string v1, "construct fpSensorManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->mCtx:Landroid/content/Context;

    .line 341
    invoke-static {}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getHidlSvc()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    move-result-object v0

    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    .registers 2
    .param p0, "x0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 13
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;)Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    .registers 2
    .param p0, "x0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    .param p1, "x1"    # Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    .line 13
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    return-object p1
.end method

.method static synthetic access$100()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    .registers 1

    .line 13
    invoke-static {}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getHidlSvc()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 13
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)[B
    .registers 2
    .param p0, "x0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 13
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[B)[B
    .registers 2
    .param p0, "x0"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    .param p1, "x1"    # [B

    .line 13
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B

    return-object p1
.end method

.method private static byteArray2int([BI)I
    .registers 4
    .param p0, "indata"    # [B
    .param p1, "offset"    # I

    .line 368
    aget-byte v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 372
    .local v0, "ret":I
    return v0
.end method

.method private extCmd([B)[B
    .registers 7
    .param p1, "cmd"    # [B

    .line 297
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v1, :cond_2b

    .line 298
    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B

    .line 299
    if-eqz v1, :cond_2b

    .line 301
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v1, "theList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v2, p1

    .line 303
    .local v2, "cmdLen":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_10
    if-ge v3, v2, :cond_1e

    .line 304
    aget-byte v4, p1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 307
    .end local v3    # "idx":I
    :cond_1e
    iget-object v3, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    new-instance v4, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;

    invoke-direct {v4, p0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$5;-><init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)V

    invoke-interface {v3, v1, v4}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->ext_cmd(Ljava/util/ArrayList;Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$ext_cmdCallback;)V

    .line 328
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->ext_cmd_result:[B
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2a} :catch_2c

    return-object v0

    .line 334
    .end local v1    # "theList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "cmdLen":I
    :cond_2b
    goto :goto_30

    .line 331
    :catch_2c
    move-exception v1

    .line 333
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 335
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_30
    return-object v0
.end method

.method public static getFpManager(Landroid/content/Context;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    .registers 3
    .param p0, "theCtx"    # Landroid/content/Context;

    .line 73
    const-string v0, "fpCoreHidlSvc2-Mgr"

    const-string v1, "fpExtSvc2HidlMgr svc2 Hidl name:vendor.fpsensor.hardware.fpsensorhidlsvc@2.0::IFpsensorHidlSvc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v1, "fpExtSvc2HidlMgr version:hidl-client-1.8.0-20200922"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    if-nez v1, :cond_25

    .line 76
    new-instance v1, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    invoke-direct {v1, p0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 77
    invoke-direct {v1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->isSvcAvailable()Z

    move-result v1

    if-nez v1, :cond_25

    .line 79
    const-string v1, "fpExtSvc2HidlMgr get hidl svc failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    .line 84
    :cond_25
    sget-object v0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpExtSvc2Instance:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    return-object v0
.end method

.method private static getHidlSvc()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    .registers 4

    .line 346
    const-string v0, "fpCoreHidlSvc2-Mgr"

    const-string v1, "getHidlSvc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, "tmp_svc":Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;
    :try_start_8
    invoke-static {}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->getService()Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    move-result-object v0
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_c} :catch_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_e

    move-object v1, v0

    .line 355
    :goto_d
    goto :goto_1c

    .line 353
    :catch_e
    move-exception v2

    .line 354
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteException"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 350
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_15
    move-exception v2

    .line 352
    .local v2, "e":Ljava/util/NoSuchElementException;
    const-string v3, "NoSuchElementException"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/util/NoSuchElementException;
    goto :goto_d

    .line 356
    :goto_1c
    return-object v1
.end method

.method private static int2byteArray(I)[B
    .registers 4
    .param p0, "value"    # I

    .line 360
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 361
    .local v0, "intArray":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 362
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 363
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 364
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 365
    return-object v0
.end method

.method private isSvcAvailable()Z
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public cancel()I
    .registers 2

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_9

    .line 263
    invoke-interface {v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->cancel()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 267
    :cond_9
    goto :goto_e

    .line 264
    :catch_a
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, -0x2

    return v0
.end method

.method public captureRawImg(I)I
    .registers 3
    .param p1, "mode"    # I

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_9

    .line 286
    invoke-interface {v0, p1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->capture_raw_img(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 290
    :cond_9
    goto :goto_e

    .line 287
    :catch_a
    move-exception v0

    .line 289
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 291
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, -0x2

    return v0
.end method

.method public fingerDetect(I)I
    .registers 3
    .param p1, "dummy"    # I

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_9

    .line 274
    invoke-interface {v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->finger_detect_async()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 278
    :cond_9
    goto :goto_e

    .line 275
    :catch_a
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 279
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, -0x2

    return v0
.end method

.method public getImgQuality()[I
    .registers 4

    .line 161
    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [I

    .line 162
    .local v0, "tmpQuality":[I
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v1, :cond_10

    .line 163
    new-instance v2, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;

    invoke-direct {v2, p0, v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$3;-><init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[I)V

    invoke-interface {v1, v2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->get_img_quality(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_img_qualityCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    .line 183
    return-object v0

    .line 189
    .end local v0    # "tmpQuality":[I
    :cond_10
    goto :goto_15

    .line 186
    :catch_11
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()[I
    .registers 4

    .line 207
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [I

    .line 208
    .local v0, "tmpSize":[I
    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v1, :cond_10

    .line 210
    new-instance v2, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;

    invoke-direct {v2, p0, v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$4;-><init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;[I)V

    invoke-interface {v1, v2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->get_size(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc$get_sizeCallback;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    .line 227
    return-object v0

    .line 233
    .end local v0    # "tmpSize":[I
    :cond_10
    goto :goto_15

    .line 230
    :catch_11
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 234
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public sensorCheckboard()I
    .registers 4

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_c

    .line 252
    const/16 v1, 0x6e

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->svc_ctrl(II)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    return v0

    .line 256
    :cond_c
    goto :goto_11

    .line 253
    :catch_d
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    const/4 v0, -0x2

    return v0
.end method

.method public sensorSelfTest()I
    .registers 4

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_c

    .line 241
    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->svc_ctrl(II)I

    move-result v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    return v0

    .line 245
    :cond_c
    goto :goto_11

    .line 242
    :catch_d
    move-exception v0

    .line 244
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    const/4 v0, -0x2

    return v0
.end method

.method public serviceDied(J)V
    .registers 7
    .param p1, "cookie"    # J

    .line 59
    const-string v0, "fpCoreHidlSvc2-Mgr"

    const-string v1, "fpHidlSvc Hidl service died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 63
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;

    invoke-direct {v1, p0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$1;-><init>(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public service_control(II)I
    .registers 4
    .param p1, "p1"    # I
    .param p2, "p2"    # I

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_9

    .line 149
    invoke-interface {v0, p1, p2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->svc_ctrl(II)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 154
    :cond_9
    goto :goto_e

    .line 151
    :catch_a
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, -0x2

    return v0
.end method

.method public setFpEventListener(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;)V
    .registers 5
    .param p1, "l"    # Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpEventListener l is valid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fpCoreHidlSvc2-Mgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-nez v0, :cond_27

    .line 36
    const-string v0, "setFpEventListener but fpHidlSvc is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void

    .line 40
    :cond_27
    iput-object p1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->theEventListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    .line 42
    if-eqz p1, :cond_3c

    .line 43
    :try_start_2b
    invoke-interface {v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 44
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    iget-object v1, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlCallback:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;

    invoke-interface {v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->set_callback(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;)I

    goto :goto_49

    .line 48
    :cond_3c
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->set_callback(Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvcClientCallback;)I

    .line 49
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    invoke-interface {v0}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_49} :catch_4a

    .line 54
    :goto_49
    goto :goto_4e

    .line 51
    :catch_4a
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4e
    return-void
.end method

.method public setProperty(II)I
    .registers 4
    .param p1, "tag"    # I
    .param p2, "value"    # I

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->fpHidlSvc:Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;

    if-eqz v0, :cond_9

    .line 197
    invoke-interface {v0, p1, p2}, Lvendor/fpsensor/hardware/fpsensorhidlsvc/V2_0/IFpsensorHidlSvc;->set_property(II)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    return v0

    .line 201
    :cond_9
    goto :goto_e

    .line 198
    :catch_a
    move-exception v0

    .line 200
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 202
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    const/4 v0, -0x2

    return v0
.end method
