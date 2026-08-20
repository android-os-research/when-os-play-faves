.class public Lcom/focaltech/mmitest/FocalFingerprintManager;
.super Ljava/lang/Object;
.source "FocalFingerprintManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FocalFingerprintManager"

.field private static mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/focaltech/mmitest/FocalFingerprintManager;->mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcom/focaltech/mmitest/FocalFingerprintManager;->getService()I

    return-void
.end method

.method private getService()I
    .registers 4

    .line 27
    const-string v0, "FocalFingerprintManager"

    :try_start_2
    invoke-static {}, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;->getService()Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;

    move-result-object v1

    sput-object v1, Lcom/focaltech/mmitest/FocalFingerprintManager;->mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_8} :catch_10
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_8} :catch_9

    goto :goto_16

    .line 31
    :catch_9
    move-exception v1

    .line 32
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to get HIDL interface"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 28
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_10
    move-exception v1

    .line 30
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v2, "service not available"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    :goto_16
    nop

    .line 34
    :goto_17
    sget-object v1, Lcom/focaltech/mmitest/FocalFingerprintManager;->mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;

    if-nez v1, :cond_22

    .line 35
    const-string v1, "HIDL not available"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, -0x1

    return v0

    .line 38
    :cond_22
    const-string v1, "get focal HIDL service success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public exeCmd(I[B[I)I
    .registers 12
    .param p1, "cmd"    # I
    .param p2, "data"    # [B
    .param p3, "dLen"    # [I

    .line 44
    const/4 v0, -0x1

    .line 45
    .local v0, "ret":I
    const-string v1, "FocalFingerprintManager"

    const-string v2, "exeCmd invokes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v2, Lcom/focaltech/mmitest/FocalFingerprintManager;->mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;

    if-eqz v2, :cond_89

    .line 47
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, -0x1

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 48
    .local v3, "Ret":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executeCommand: cmd:(0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ") dlen:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v7, p3, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_39
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, p2

    if-lez v7, :cond_3f

    array-length v2, p2

    :cond_3f
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 53
    .local v2, "in_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_44
    array-length v7, p2

    if-ge v4, v7, :cond_53

    .line 54
    aget-byte v7, p2, v4

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_44

    .line 57
    .end local v4    # "i":I
    :cond_53
    sget-object v4, Lcom/focaltech/mmitest/FocalFingerprintManager;->mIService:Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;

    new-instance v7, Lcom/focaltech/mmitest/FocalFingerprintManager$1;

    invoke-direct {v7, p0, p2, p3, v3}, Lcom/focaltech/mmitest/FocalFingerprintManager$1;-><init>(Lcom/focaltech/mmitest/FocalFingerprintManager;[B[I[I)V

    invoke-interface {v4, p1, v2, v7}, Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService;->executeCommand(ILjava/util/ArrayList;Lvendor/focaltech/fingerprint/V1_0/IFocalFingerprintService$executeCommandCallback;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_5d} :catch_5e

    .line 73
    .end local v2    # "in_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    goto :goto_62

    .line 71
    :catch_5e
    move-exception v2

    .line 72
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 74
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") ret:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v3, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    aget v1, v3, v5

    return v1

    .line 77
    .end local v3    # "Ret":[I
    :cond_89
    return v0
.end method
