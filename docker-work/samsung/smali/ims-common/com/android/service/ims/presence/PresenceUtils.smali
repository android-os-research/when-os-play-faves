.class public Lcom/android/service/ims/presence/PresenceUtils;
.super Ljava/lang/Object;
.source "PresenceUtils.java"


# static fields
.field public static final blacklist LOG_TAG_PREFIX:Ljava/lang/String; = "rcs_lib"

.field private static final blacklist TEL_SCHEME:Ljava/lang/String; = "tel:"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertContactNumber(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "number"    # Ljava/lang/String;

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 58
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "possibleNumber":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 61
    return-object v0

    .line 64
    :cond_19
    invoke-static {v3, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getNumber(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "numberUri"    # Landroid/net/Uri;

    .line 68
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 69
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toContactString([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "contacts"    # [Ljava/lang/String;

    .line 41
    if-nez p0, :cond_4

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_4
    const-string v0, ""

    .line 46
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_38

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_35

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 53
    .end local v1    # "i":I
    :cond_38
    return-object v0
.end method
