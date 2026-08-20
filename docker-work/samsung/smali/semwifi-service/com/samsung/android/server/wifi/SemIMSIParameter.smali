.class public Lcom/samsung/android/server/wifi/SemIMSIParameter;
.super Ljava/lang/Object;
.source "SemIMSIParameter.java"


# static fields
.field private static final MAX_IMSI_LENGTH:I = 0xf

.field public static final MCC_MNC_LENGTH_5:I = 0x5

.field public static final MCC_MNC_LENGTH_6:I = 0x6


# instance fields
.field private final mImsi:Ljava/lang/String;

.field private final mPrefix:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    .line 44
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    return-void
.end method

.method public static build(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIMSIParameter;
    .registers 7

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 58
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-le v0, v2, :cond_11

    return-object v1

    :cond_11
    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    .line 65
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2a

    .line 66
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2a

    const/16 v4, 0x39

    if-le v3, v4, :cond_27

    goto :goto_2a

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 72
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_36

    .line 74
    new-instance v1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemIMSIParameter;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 75
    :cond_36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_51

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_51

    const/4 v3, 0x5

    if-eq v2, v3, :cond_48

    const/4 v3, 0x6

    if-ne v2, v3, :cond_51

    .line 78
    :cond_48
    new-instance v1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/server/wifi/SemIMSIParameter;-><init>(Ljava/lang/String;Z)V

    :cond_51
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 138
    :cond_4
    instance-of v1, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 142
    :cond_a
    check-cast p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;

    .line 143
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    iget-boolean v3, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    if-ne v1, v3, :cond_1d

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 149
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public isFullImsi()Z
    .registers 1

    .line 130
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public matchesImsi(Ljava/lang/String;)Z
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 94
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_17

    .line 96
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0

    .line 99
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public matchesMccMnc(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 114
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_13

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_13

    return v0

    .line 117
    :cond_13
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_24

    return v0

    .line 121
    :cond_24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 155
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mPrefix:Z

    if-eqz v0, :cond_18

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIMSIParameter;->mImsi:Ljava/lang/String;

    return-object p0
.end method
