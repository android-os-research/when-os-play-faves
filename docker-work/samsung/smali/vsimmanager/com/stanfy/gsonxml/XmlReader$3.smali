.class synthetic Lcom/stanfy/gsonxml/XmlReader$3;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$gson$stream$JsonToken:[I

.field static final synthetic $SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 546
    invoke-static {}, Lcom/stanfy/gsonxml/XmlReader$Scope;->values()[Lcom/stanfy/gsonxml/XmlReader$Scope;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    :try_start_2e
    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v3

    :goto_3b
    :try_start_3b
    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v3

    :goto_48
    :try_start_48
    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v3

    :goto_55
    :try_start_55
    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v3

    .line 198
    :goto_62
    invoke-static {}, Lcom/google/gson/stream/JsonToken;->values()[Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    :try_start_6b
    sget-object v4, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v4}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_73} :catch_74

    goto :goto_75

    :catch_74
    move-exception v1

    :goto_75
    :try_start_75
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v3}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_80

    goto :goto_81

    :catch_80
    move-exception v0

    :goto_81
    :try_start_81
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_8c

    goto :goto_8d

    :catch_8c
    move-exception v0

    :goto_8d
    return-void
.end method
