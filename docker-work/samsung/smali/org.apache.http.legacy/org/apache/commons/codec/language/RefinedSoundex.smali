.class public Lorg/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

.field public static final US_ENGLISH_MAPPING:[C


# instance fields
.field private soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lorg/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>()V

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lorg/apache/commons/codec/language/RefinedSoundex;

    .line 48
    const-string v0, "01360240043788015936020505"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    sget-object v0, Lorg/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/language/RefinedSoundex;-><init>([C)V

    .line 63
    return-void
.end method

.method public constructor <init>([C)V
    .registers 2
    .param p1, "mapping"    # [C

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 76
    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 104
    invoke-static {p0, p1, p2}, Lorg/apache/commons/codec/language/SoundexUtils;->difference(Lorg/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 121
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 124
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_c
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pString"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMappingCode(C)C
    .registers 4
    .param p1, "c"    # C

    .line 148
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_8

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_8
    iget-object v0, p0, Lorg/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    add-int/lit8 v1, v1, -0x41

    aget-char v0, v0, v1

    return v0
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 162
    if-nez p1, :cond_4

    .line 163
    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_4
    invoke-static {p1}, Lorg/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 167
    return-object p1

    .line 170
    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, "sBuf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    const/16 v1, 0x2a

    .line 176
    .local v1, "last":C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    .line 178
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    move-result v3

    .line 179
    .local v3, "current":C
    if-ne v3, v1, :cond_30

    .line 180
    goto :goto_36

    .line 181
    :cond_30
    if-eqz v3, :cond_35

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 185
    :cond_35
    move v1, v3

    .line 176
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 189
    .end local v2    # "i":I
    .end local v3    # "current":C
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
