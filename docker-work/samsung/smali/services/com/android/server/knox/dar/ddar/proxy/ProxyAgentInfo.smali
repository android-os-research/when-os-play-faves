.class public Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;
.super Ljava/lang/Object;
.source "ProxyAgentInfo.java"


# instance fields
.field public mCompName:Landroid/content/ComponentName;

.field public mName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    .line 30
    iput-object p3, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_32

    .line 40
    :try_start_7
    check-cast p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;

    .line 41
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget v2, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    iget v3, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v2, v3, :cond_2c

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 43
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_29
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_29} :catch_2e

    if-eqz p0, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    :goto_2d
    return v0

    :catch_2e
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_32
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/server/knox/dar/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "ProxyAgentInfo {mName:%s mCompName:%s mUserId:%d}"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
