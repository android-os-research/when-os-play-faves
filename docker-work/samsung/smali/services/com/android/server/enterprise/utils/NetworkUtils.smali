.class public Lcom/android/server/enterprise/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 37
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2a

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getHostname()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPortNumber()I

    move-result v1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_21

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_25

    .line 42
    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getExclusionList()Ljava/util/List;

    move-result-object p0

    .line 39
    :goto_25
    invoke-static {v0, v1, p0}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object p0

    goto :goto_36

    .line 44
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object p0

    :goto_36
    return-object p0
.end method

.method public static getExclusionListAsString([Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    .line 21
    array-length v0, p0

    if-lez v0, :cond_c

    const-string v0, ","

    .line 22
    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e

    :cond_c
    const-string p0, ""

    :goto_e
    return-object p0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1f

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1f

    .line 61
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method
