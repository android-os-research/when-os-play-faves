.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"


# static fields
.field public static final PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Class;

    .line 35
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/lang/Short;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/lang/Float;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Ljava/lang/Byte;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Ljava/lang/Character;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Character;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .line 84
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 335
    check-cast p0, Ljava/lang/Number;

    .line 336
    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1d

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1d

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public static isPrimitiveOrString(Ljava/lang/Object;)Z
    .registers 7

    .line 274
    instance-of v0, p0, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 278
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 279
    sget-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v2, :cond_1d

    aget-object v5, v0, v4

    .line 280
    invoke-virtual {v5, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1d
    return v3
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
    .registers 1

    .line 33
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public deepCopy()Lcom/google/gson/JsonPrimitive;
    .registers 1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_76

    .line 309
    const-class v2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_76

    .line 312
    :cond_10
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 313
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v2, :cond_1d

    .line 314
    iget-object p0, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    .line 316
    :cond_1d
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 317
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    return v0

    .line 319
    :cond_40
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_6f

    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_6f

    .line 320
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 323
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-eqz v4, :cond_6e

    .line 324
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6d

    goto :goto_6e

    :cond_6d
    move v0, v1

    :cond_6e
    :goto_6e
    return v0

    .line 326
    :cond_6f
    iget-object p0, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_76
    :goto_76
    return v1
.end method

.method public getAsBigDecimal()Ljava/math/BigDecimal;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/math/BigDecimal;

    goto :goto_14

    :cond_9
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_14
    return-object v0
.end method

.method public getAsBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/math/BigInteger;

    goto :goto_14

    :cond_9
    new-instance v0, Ljava/math/BigInteger;

    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_14
    return-object v0
.end method

.method public getAsBoolean()Z
    .registers 2

    .line 132
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 133
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 136
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getAsBooleanWrapper()Ljava/lang/Boolean;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public getAsByte()B
    .registers 2

    .line 265
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0

    :goto_17
    return p0
.end method

.method public getAsCharacter()C
    .registers 2

    .line 270
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method

.method public getAsDouble()D
    .registers 3

    .line 193
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public getAsFloat()F
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    :goto_17
    return p0
.end method

.method public getAsInt()I
    .registers 2

    .line 260
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_17
    return p0
.end method

.method public getAsLong()J
    .registers 3

    .line 238
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_17
    return-wide v0
.end method

.method public getAsNumber()Ljava/lang/Number;
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_e
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    :goto_11
    return-object v0
.end method

.method public getAsShort()S
    .registers 2

    .line 249
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    goto :goto_17

    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0

    :goto_17
    return p0
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 176
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 178
    :cond_f
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 179
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_1e
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 5

    .line 289
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    if-nez v0, :cond_7

    const/16 p0, 0x1f

    return p0

    .line 293
    :cond_7
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1c

    .line 294
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_17
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    .line 297
    :cond_1c
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2f

    .line 298
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_17

    .line 301
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public isBoolean()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Boolean;

    return p0
.end method

.method public isNumber()Z
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/Number;

    return p0
.end method

.method public isString()Z
    .registers 1

    .line 166
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    instance-of p0, p0, Ljava/lang/String;

    return p0
.end method

.method public setValue(Ljava/lang/Object;)V
    .registers 3

    .line 94
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_11

    .line 97
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    goto :goto_24

    .line 100
    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1e

    .line 101
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 100
    :goto_1f
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 102
    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    :goto_24
    return-void
.end method
