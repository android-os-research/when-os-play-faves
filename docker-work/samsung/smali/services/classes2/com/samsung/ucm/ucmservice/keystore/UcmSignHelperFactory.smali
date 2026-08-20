.class public Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
.super Ljava/lang/Object;
.source "UcmSignHelperFactory.java"


# static fields
.field public static volatile sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
    .registers 2

    const-class v0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    if-nez v1, :cond_18

    .line 28
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 29
    :try_start_8
    sget-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    if-nez v1, :cond_13

    .line 30
    new-instance v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    invoke-direct {v1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;-><init>()V

    sput-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;

    .line 32
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw v1

    .line 34
    :cond_18
    :goto_18
    sget-object v1, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->sInstance:Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperFactory;->getInstance(Ljava/lang/String;Z)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;

    move-result-object p0

    return-object p0
.end method

.method public getInstance(Ljava/lang/String;Z)Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelper;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_49

    .line 49
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;->isSupportedAlgorithm(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    .line 50
    new-instance p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1Enc;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_12
    if-eqz p2, :cond_1a

    .line 53
    new-instance p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperSupportSign;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperSupportSign;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 55
    :cond_1a
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;->isSupportedAlgorithm(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 56
    new-instance p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperPkcs1;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 58
    :cond_26
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;->isSupportedAlgorithm(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 59
    new-instance p0, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;

    invoke-direct {p0, p1}, Lcom/samsung/ucm/ucmservice/keystore/UcmSignHelperEcdsa;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 62
    :cond_32
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not supported algorithm "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_49
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "algorithm is empty"

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
