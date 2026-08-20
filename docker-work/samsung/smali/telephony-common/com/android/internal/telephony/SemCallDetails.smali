.class public Lcom/android/internal/telephony/SemCallDetails;
.super Ljava/lang/Object;
.source "SemCallDetails.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/SemCallDetails;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>([Ljava/lang/String;Z)V
    .registers 3

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SemCallDetails;->getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SemCallDetails;->mExtras:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/SemCallDetails;)I
    .registers 3

    const-string v0, "callIndex"

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 54
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/SemCallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ge p0, p1, :cond_1e

    const/4 p0, -0x1

    goto :goto_23

    :cond_1e
    if-le p0, p1, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 12
    check-cast p1, Lcom/android/internal/telephony/SemCallDetails;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemCallDetails;->compareTo(Lcom/android/internal/telephony/SemCallDetails;)I

    move-result p0

    return p0
.end method

.method public blacklist getExtraValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    iget-object p0, p0, Lcom/android/internal/telephony/SemCallDetails;->mExtras:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMapFromExtras([Ljava/lang/String;Z)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_8

    return-object p0

    .line 30
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_59

    aget-object v3, p1, v2

    const/16 v4, 0x3d

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_18

    goto :goto_56

    .line 36
    :cond_18
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_29

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    :cond_29
    const-string v3, ""

    .line 39
    :goto_2b
    sget-boolean v4, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v4, :cond_4d

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SemCallDetails"

    invoke-static {v6, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eqz p2, :cond_53

    .line 43
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_53
    invoke-virtual {p0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_59
    return-object p0
.end method
