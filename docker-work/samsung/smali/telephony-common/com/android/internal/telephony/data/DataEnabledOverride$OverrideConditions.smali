.class Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;
.super Ljava/lang/Object;
.source "DataEnabledOverride.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataEnabledOverride;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverrideConditions"
.end annotation


# static fields
.field private static final blacklist OVERRIDE_CONDITION_INT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist OVERRIDE_CONDITION_STRING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConditions:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 197
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->OVERRIDE_CONDITION_INT_MAP:Ljava/util/Map;

    .line 198
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->OVERRIDE_CONDITION_STRING_MAP:Ljava/util/Map;

    const/4 v2, 0x1

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "nonDefault"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    .line 203
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "inVoiceCall"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    .line 205
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "DefaultDataOn"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x8

    .line 207
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "dsdsEnabled"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v10, "unconditionally"

    .line 210
    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 2

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput p1, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    invoke-static {p1}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->getBitmaskFromString(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    return-void
.end method

.method private static blacklist getBitmaskFromString(Ljava/lang/String;)I
    .registers 8

    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*&\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    if-ge v2, v1, :cond_4b

    aget-object v4, v0, v2

    .line 264
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_48

    .line 265
    sget-object v5, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->OVERRIDE_CONDITION_STRING_MAP:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 268
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_48

    .line 266
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid conditions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_4b
    return v3

    .line 257
    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty rule string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getStringFromBitmask(I)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_5

    const-string p0, "unconditionally"

    return-object p0

    .line 246
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    sget-object v1, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->OVERRIDE_CONDITION_INT_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 248
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, p0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_14

    .line 249
    sget-object v3, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->OVERRIDE_CONDITION_INT_MAP:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_37
    const-string p0, "&"

    .line 252
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method blacklist allMet(I)Z
    .registers 2

    .line 282
    iget p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1d

    .line 289
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;

    .line 290
    iget p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    iget p1, p1, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    if-ne p0, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 295
    iget p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 300
    iget p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->mConditions:I

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;->getStringFromBitmask(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
