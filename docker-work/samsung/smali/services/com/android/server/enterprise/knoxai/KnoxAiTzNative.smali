.class public Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;
.super Ljava/lang/Object;
.source "KnoxAiTzNative.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxAiTzNative"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initializeTaSession(Lcom/samsung/android/knox/knoxai/TaLoaderOptions;)I
    .registers 10

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getRoot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getRootLength()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getProcess()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getProcessLength()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getFd()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getTaOffset()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaLoaderOptions;->getTaSize()I

    move-result v7

    move-object v0, p0

    .line 35
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->tzKnoxAiInitializeFd(Ljava/lang/String;ILjava/lang/String;ILjava/io/FileDescriptor;II)I

    move-result p0

    return p0
.end method

.method public processTaCommand(I[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;[Lcom/samsung/android/knox/knoxai/TaProcessBuffer;)V
    .registers 8

    if-eqz p3, :cond_83

    .line 46
    array-length v0, p3

    if-nez v0, :cond_7

    goto/16 :goto_83

    .line 47
    :cond_7
    new-instance v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;

    invoke-direct {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    .line 48
    sget-object v2, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;->OUTPUT_RESULT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;

    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->setProcessBufferType(Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessBufferType;)V

    if-eqz p2, :cond_7d

    .line 49
    array-length v0, p2

    if-lez v0, :cond_7d

    .line 50
    sget-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->GET_CERT:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_32

    .line 51
    aget-object p1, p2, v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBuffer()[B

    move-result-object p1

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBufferLength()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->tzKnoxAiGetCert([BI)[B

    move-result-object p0

    goto :goto_7e

    .line 52
    :cond_32
    sget-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->SET_PROV:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->getValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_58

    .line 53
    aget-object p1, p2, v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBuffer()[B

    move-result-object p1

    aget-object v0, p2, v1

    invoke-virtual {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBufferLength()I

    move-result v0

    aget-object v3, p2, v2

    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBuffer()[B

    move-result-object v3

    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBufferLength()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->tzKnoxAiSetProv([BI[BI)[B

    move-result-object p0

    goto :goto_7e

    .line 55
    :cond_58
    sget-object v0, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->RETURN_PLAIN_FACTORY_MODEL_KEY:Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer$ProcessType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_7d

    .line 56
    aget-object p1, p2, v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBuffer()[B

    move-result-object p1

    aget-object v0, p2, v1

    .line 57
    invoke-virtual {v0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBufferLength()I

    move-result v0

    aget-object v3, p2, v2

    .line 58
    invoke-virtual {v3}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBuffer()[B

    move-result-object v3

    aget-object p2, p2, v2

    .line 59
    invoke-virtual {p2}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->getBufferLength()I

    move-result p2

    .line 56
    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->tzKnoxAiReturnPlainFactoryModelKey([BI[BI)[B

    move-result-object p0

    goto :goto_7e

    :cond_7d
    const/4 p0, 0x0

    .line 62
    :goto_7e
    aget-object p1, p3, v1

    invoke-virtual {p1, p0}, Lcom/samsung/android/knox/knoxai/TaProcessBuffer;->setBuffer([B)V

    :cond_83
    :goto_83
    return-void
.end method

.method public terminateTaSession()I
    .registers 1

    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/knoxai/KnoxAiTzNative;->tzKnoxAiTerminate()I

    move-result p0

    return p0
.end method

.method public native tzKnoxAiGetCert([BI)[B
.end method

.method public native tzKnoxAiInitializeFd(Ljava/lang/String;ILjava/lang/String;ILjava/io/FileDescriptor;II)I
.end method

.method public native tzKnoxAiReturnPlainFactoryModelKey([BI[BI)[B
.end method

.method public native tzKnoxAiSetProv([BI[BI)[B
.end method

.method public native tzKnoxAiTerminate()I
.end method
