.class public Landroid/net/compatibility/WebAddress;
.super Ljava/lang/Object;
.source "WebAddress.java"


# static fields
.field static final MATCH_GROUP_AUTHORITY:I = 0x2

.field static final MATCH_GROUP_HOST:I = 0x3

.field static final MATCH_GROUP_PATH:I = 0x5

.field static final MATCH_GROUP_PORT:I = 0x4

.field static final MATCH_GROUP_SCHEME:I = 0x1

.field static sAddressPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthInfo:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private mPort:I

.field private mScheme:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    const-string v0, "(?:(http|https|file)\\:\\/\\/)?(?:([-A-Za-z0-9$_.+!*\'(),;?&=]+(?:\\:[-A-Za-z0-9$_.+!*\'(),;?&=]+)?)@)?([a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_-][a-zA-Z0-9\u00a0-\ud7ff\uf900-\ufdcf\ufdf0-\uffef%_\\.-]*|\\[[0-9a-fA-F:\\.]+\\])?(?:\\:([0-9]*))?(\\/?[^#]*)?.*"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/compatibility/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    if-eqz p1, :cond_c5

    .line 69
    const-string v0, ""

    iput-object v0, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    .line 72
    const-string v2, "/"

    iput-object v2, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 75
    sget-object v3, Landroid/net/compatibility/WebAddress;->sAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 77
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 78
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "t":Ljava/lang/String;
    if-eqz v4, :cond_2f

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    .line 80
    :cond_2f
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_38

    iput-object v4, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 82
    :cond_38
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    if-eqz v4, :cond_41

    iput-object v4, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    .line 84
    :cond_41
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 85
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5e

    .line 88
    :try_start_4e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/compatibility/WebAddress;->mPort:I
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_54} :catch_55

    .line 91
    goto :goto_5e

    .line 89
    :catch_55
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad port"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_5e
    :goto_5e
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8a

    .line 97
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_77

    .line 98
    iput-object v4, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    goto :goto_8a

    .line 100
    :cond_77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    .line 111
    :cond_8a
    :goto_8a
    iget v2, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    const-string v5, "https"

    const/16 v6, 0x1bb

    if-ne v2, v6, :cond_9d

    iget-object v2, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 112
    iput-object v5, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    goto :goto_b0

    .line 113
    :cond_9d
    iget v2, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    if-ne v2, v1, :cond_b0

    .line 114
    iget-object v1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 115
    iput v6, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    goto :goto_b0

    .line 117
    :cond_ac
    const/16 v1, 0x50

    iput v1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    .line 119
    :cond_b0
    :goto_b0
    iget-object v1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "http"

    iput-object v0, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    .line 120
    :cond_bc
    return-void

    .line 106
    .end local v4    # "t":Ljava/lang/String;
    :cond_bd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_c5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getAuthInfo()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .line 158
    iget v0, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    return v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "authInfo"    # Ljava/lang/String;

    .line 170
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "host"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .param p1, "port"    # I

    .line 154
    iput p1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    .line 155
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .registers 2
    .param p1, "scheme"    # Ljava/lang/String;

    .line 138
    iput-object p1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 124
    const-string v0, ""

    .line 125
    .local v0, "port":Ljava/lang/String;
    iget v1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_12

    iget-object v1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    :cond_12
    iget v1, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_3b

    iget-object v1, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    .line 126
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 127
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/compatibility/WebAddress;->mPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_3b
    const-string v1, ""

    .line 130
    .local v1, "authInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5a

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mAuthInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/compatibility/WebAddress;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
