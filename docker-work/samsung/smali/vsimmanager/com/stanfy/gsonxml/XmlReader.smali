.class public Lcom/stanfy/gsonxml/XmlReader;
.super Lcom/google/gson/stream/JsonReader;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stanfy/gsonxml/XmlReader$Creator;,
        Lcom/stanfy/gsonxml/XmlReader$RefsPool;,
        Lcom/stanfy/gsonxml/XmlReader$ClosedTag;,
        Lcom/stanfy/gsonxml/XmlReader$Options;,
        Lcom/stanfy/gsonxml/XmlReader$AttributesData;,
        Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;,
        Lcom/stanfy/gsonxml/XmlReader$ValueRef;,
        Lcom/stanfy/gsonxml/XmlReader$TokenRef;,
        Lcom/stanfy/gsonxml/XmlReader$Scope;
    }
.end annotation


# static fields
.field private static final END_TAG:I = 0x2

.field private static final IGNORE:I = -0x1

.field private static final START_TAG:I = 0x1

.field private static final VALUE:I = 0x3


# instance fields
.field private final attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

.field private final closeStack:Lcom/stanfy/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/Stack<",
            "Lcom/stanfy/gsonxml/XmlReader$ClosedTag;",
            ">;"
        }
    .end annotation
.end field

.field private endReached:Z

.field private expectedToken:Lcom/google/gson/stream/JsonToken;

.field private firstStart:Z

.field private lastTextWhiteSpace:Z

.field final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private final scopeStack:Lcom/stanfy/gsonxml/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/Stack<",
            "Lcom/stanfy/gsonxml/XmlReader$Scope;",
            ">;"
        }
    .end annotation
.end field

.field private skipping:Z

.field private textNameCounter:I

.field private token:Lcom/google/gson/stream/JsonToken;

.field private final tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/XmlReader$RefsPool<",
            "Lcom/stanfy/gsonxml/XmlReader$TokenRef;",
            ">;"
        }
    .end annotation
.end field

.field private tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

.field private final valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stanfy/gsonxml/XmlReader$RefsPool<",
            "Lcom/stanfy/gsonxml/XmlReader$ValueRef;",
            ">;"
        }
    .end annotation
.end field

.field private valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

.field private final xmlParser:Lorg/xmlpull/v1/XmlPullParser;

.field private final xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;


# direct methods
.method public constructor <init>(Ljava/io/Reader;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V
    .registers 7
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "creator"    # Lcom/stanfy/gsonxml/XmlParserCreator;
    .param p3, "options"    # Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 92
    invoke-direct {p0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 53
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$1;

    invoke-direct {v1, p0}, Lcom/stanfy/gsonxml/XmlReader$1;-><init>(Lcom/stanfy/gsonxml/XmlReader;)V

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;-><init>(Lcom/stanfy/gsonxml/XmlReader$Creator;)V

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    .line 57
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$2;

    invoke-direct {v1, p0}, Lcom/stanfy/gsonxml/XmlReader$2;-><init>(Lcom/stanfy/gsonxml/XmlReader;)V

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;-><init>(Lcom/stanfy/gsonxml/XmlReader$Creator;)V

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 72
    new-instance v1, Lcom/stanfy/gsonxml/Stack;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    .line 74
    new-instance v1, Lcom/stanfy/gsonxml/Stack;

    invoke-direct {v1}, Lcom/stanfy/gsonxml/Stack;-><init>()V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    .line 80
    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 86
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;-><init>(Lcom/stanfy/gsonxml/XmlReader$1;)V

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .line 89
    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;-><init>(Lcom/stanfy/gsonxml/XmlReader;I)V

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    .line 93
    invoke-interface {p2}, Lcom/stanfy/gsonxml/XmlParserCreator;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 94
    iput-object p3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 95
    const/4 v2, -0x1

    iput v2, v0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 97
    :try_start_4d
    invoke-interface {v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 98
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    iget-boolean v2, p3, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    invoke-interface {v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_57
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_57} :catch_59

    .line 101
    nop

    .line 102
    return-void

    .line 99
    :catch_59
    move-exception v0

    .line 100
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private adaptCurrentToken()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_7

    return-void

    .line 196
    :cond_7
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v1, v0, :cond_c

    return-void

    .line 198
    :cond_c
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_11e

    goto/16 :goto_11d

    :pswitch_1b
    const/4 v0, 0x0

    .line 250
    .local v0, "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 251
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v1, :cond_65

    .line 253
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v1, :cond_3a

    .line 255
    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 256
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto/16 :goto_11d

    .line 259
    :cond_3a
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v1

    iget-object v1, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 260
    .local v1, "value":Ljava/lang/String;
    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 261
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 262
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 263
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 264
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    .line 265
    const-string v2, "$"

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 267
    .end local v1    # "value":Ljava/lang/String;
    goto/16 :goto_11d

    .line 271
    :cond_65
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 272
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v1, :cond_11d

    .line 273
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto/16 :goto_11d

    .line 202
    .end local v0    # "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    :pswitch_73
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 204
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 206
    .restart local v0    # "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_11d

    .line 207
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_b2

    .line 209
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1, v2}, Lcom/stanfy/gsonxml/Stack;->cleanup(I)I

    .line 212
    sget-object v1, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 214
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 216
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v0, v1, :cond_11d

    .line 217
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1, v2}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    goto :goto_11d

    .line 221
    :cond_b2
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    .line 222
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 224
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v1

    .line 225
    .local v1, "pushPos":I
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v3, :cond_cd

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v3

    if-nez v3, :cond_cd

    .line 227
    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    .line 229
    :cond_cd
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/stanfy/gsonxml/Stack;->cleanup(II)I

    move-result v1

    .line 231
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    if-eqz v2, :cond_ea

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_ea

    .line 233
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v1, v3}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    goto :goto_11d

    .line 236
    :cond_ea
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v1, v3}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    .line 237
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_107

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-eq v2, v3, :cond_110

    .line 238
    :cond_107
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    add-int/lit8 v3, v1, 0x1

    sget-object v4, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3, v4}, Lcom/stanfy/gsonxml/Stack;->pushAt(ILjava/lang/Object;)V

    .line 240
    :cond_110
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->peekNextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_11d

    .line 241
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->pushToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 281
    .end local v0    # "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    .end local v1    # "pushPos":I
    :cond_11d
    :goto_11d
    return-void

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_73
        :pswitch_1b
    .end packed-switch
.end method

.method private addTextToQueue(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "canBeAppended"    # Z

    .line 612
    if-eqz p2, :cond_30

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_30

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_30

    .line 613
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iget-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    goto :goto_38

    .line 617
    :cond_30
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 618
    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 620
    :cond_38
    :goto_38
    return-void
.end method

.method private addToQueue(Lcom/google/gson/stream/JsonToken;)V
    .registers 4
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .line 399
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 400
    .local v0, "tokenRef":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 401
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 403
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_16

    .line 404
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 405
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_1a

    .line 407
    :cond_16
    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 408
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 410
    :goto_1a
    return-void
.end method

.method private addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V
    .registers 6
    .param p1, "attrData"    # Lcom/stanfy/gsonxml/XmlReader$AttributesData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 451
    iget v0, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 452
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v0, :cond_33

    .line 453
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 455
    sget-object v2, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 456
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 458
    .end local v1    # "i":I
    :cond_33
    return-void
.end method

.method private addToQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 426
    .local v0, "valueRef":Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 427
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 429
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_1a

    .line 430
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 431
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_1e

    .line 433
    :cond_1a
    iput-object v0, v1, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 434
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 436
    :goto_1e
    return-void
.end method

.method private dump()Ljava/lang/CharSequence;
    .registers 4

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scopes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Closed tags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Tokens queue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Values queue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private expect(Lcom/google/gson/stream/JsonToken;)V
    .registers 6
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    .line 142
    .local v0, "actual":Lcom/google/gson/stream/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    .line 143
    if-ne v0, p1, :cond_a

    .line 144
    return-void

    .line 143
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected, but met "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fillQueues(Z)V
    .registers 6
    .param p1, "force"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 462
    move v0, p1

    .line 464
    .local v0, "mustRepeat":Z
    :goto_1
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-eqz v1, :cond_b

    :cond_9
    if-eqz v0, :cond_4c

    .line 465
    :cond_b
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    move-result-object v1

    .line 466
    .local v1, "xml":Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    if-eqz v2, :cond_1f

    .line 467
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v2, :cond_4c

    sget-object v2, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    goto :goto_4c

    .line 470
    :cond_1f
    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_25

    goto :goto_1

    .line 472
    :cond_25
    const/4 v0, 0x0

    .line 474
    iget v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    packed-switch v2, :pswitch_data_4e

    goto :goto_44

    .line 484
    :pswitch_2c
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z

    move-result v0

    .line 485
    goto :goto_44

    .line 487
    :pswitch_31
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    .line 488
    goto :goto_44

    .line 476
    :pswitch_35
    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-eqz v2, :cond_40

    .line 477
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    .line 478
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_44

    .line 480
    :cond_40
    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    .line 482
    nop

    .line 492
    :goto_44
    if-nez v0, :cond_4b

    iget-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    if-eqz v2, :cond_4b

    goto :goto_4c

    .line 493
    .end local v1    # "xml":Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    :cond_4b
    goto :goto_1

    .line 494
    :cond_4c
    :goto_4c
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_35
        :pswitch_31
        :pswitch_2c
    .end packed-switch
.end method

.method private fixScopeStack()V
    .registers 3

    .line 623
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->fix(Ljava/lang/Object;)V

    .line 624
    return-void
.end method

.method static nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 698
    move-object v0, p0

    .line 699
    .local v0, "result":Ljava/lang/String;
    move-object v1, p1

    .line 700
    .local v1, "ns":Ljava/lang/String;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_46

    .line 701
    if-eqz p2, :cond_29

    .line 702
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    invoke-interface {p2, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v2

    .line 703
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_29

    .line 704
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 705
    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v1

    .line 706
    goto :goto_29

    .line 703
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 710
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_29
    :goto_29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    :cond_46
    return-object v0
.end method

.method private nextToken()Lcom/google/gson/stream/JsonToken;
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 121
    .local v0, "ref":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    if-nez v0, :cond_7

    .line 122
    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    return-object v1

    .line 125
    :cond_7
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 126
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-ne v0, v1, :cond_12

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 127
    :cond_12
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    return-object v1
.end method

.method private nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 133
    .local v0, "ref":Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    if-eqz v0, :cond_15

    .line 134
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 135
    :cond_b
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v1, v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->release(Ljava/lang/Object;)V

    .line 136
    iget-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    iput-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 137
    return-object v0

    .line 133
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value can be given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextXmlInfo()Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 352
    .local v0, "type":I
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlToken:Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .line 353
    .local v1, "info":Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->clear()V

    .line 355
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_72

    .local v3, "aCount":I
    .local v5, "text":Ljava/lang/String;
    goto :goto_6e

    .end local v3    # "aCount":I
    .end local v5    # "text":Ljava/lang/String;
    :pswitch_13
    move v5, v3

    .line 375
    .local v5, "aCount":I
    iget-object v6, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "text":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_29

    .line 377
    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 378
    iput v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 379
    return-object v1

    .line 381
    :cond_29
    iput-boolean v3, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 382
    const/4 v2, 0x3

    iput v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 383
    iput-object v6, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    .line 384
    goto :goto_70

    .line 355
    .end local v5    # "aCount":I
    .end local v6    # "text":Ljava/lang/String;
    :pswitch_31
    move v2, v3

    .line 369
    .local v2, "aCount":I
    const/4 v3, 0x2

    iput v3, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 370
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 371
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 372
    goto :goto_70

    .line 358
    .end local v2    # "aCount":I
    :pswitch_46
    iput v4, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 359
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 360
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 361
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    .line 362
    .restart local v2    # "aCount":I
    if-lez v2, :cond_70

    .line 363
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v3, v4}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->fill(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 364
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->attributes:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    iput-object v3, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    goto :goto_70

    .line 388
    .end local v2    # "aCount":I
    .restart local v3    # "aCount":I
    .local v5, "text":Ljava/lang/String;
    :pswitch_6c
    iput-boolean v4, p0, Lcom/stanfy/gsonxml/XmlReader;->endReached:Z

    .line 392
    :goto_6e
    iput v2, v1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 395
    .end local v3    # "aCount":I
    .end local v5    # "text":Ljava/lang/String;
    :cond_70
    :goto_70
    return-object v1

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_46
        :pswitch_31
        :pswitch_13
    .end packed-switch
.end method

.method private peekNextToken()Lcom/google/gson/stream/JsonToken;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method private processEnd(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 7
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 627
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a4

    goto :goto_4e

    .line 630
    :pswitch_14
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 631
    const/4 v0, 0x0

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 632
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 633
    goto :goto_4e

    .line 636
    :pswitch_20
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/Stack;->drop()V

    .line 637
    goto :goto_4e

    .line 654
    :pswitch_26
    iget-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    if-eqz v0, :cond_30

    .line 655
    const/4 v0, 0x1

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 657
    :cond_30
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 658
    goto :goto_4e

    .line 641
    :pswitch_34
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 642
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 643
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 644
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 645
    goto :goto_4e

    .line 649
    :pswitch_45
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 650
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 651
    nop

    .line 664
    :goto_4e
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v0, :cond_a2

    .line 665
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 666
    .local v0, "stackSize":I
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v1}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    goto :goto_69

    :cond_67
    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 667
    .local v1, "name":Ljava/lang/String;
    :goto_69
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    .line 668
    .local v2, "closeStack":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<Lcom/stanfy/gsonxml/XmlReader$ClosedTag;>;"
    const/4 v3, 0x0

    .line 669
    .local v3, "nameChange":Z
    :goto_6c
    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v4

    if-lez v4, :cond_80

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iget v4, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    if-le v4, v0, :cond_80

    .line 670
    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->drop()V

    goto :goto_6c

    .line 672
    :cond_80
    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iget v4, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    if-ge v4, v0, :cond_91

    goto :goto_9a

    .line 675
    :cond_91
    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    iput-object v1, v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    goto :goto_a2

    .line 673
    :cond_9a
    :goto_9a
    new-instance v4, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    invoke-direct {v4, v0, v1}, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 678
    .end local v0    # "stackSize":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "closeStack":Lcom/stanfy/gsonxml/Stack;, "Lcom/stanfy/gsonxml/Stack<Lcom/stanfy/gsonxml/XmlReader$ClosedTag;>;"
    .end local v3    # "nameChange":Z
    :cond_a2
    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_45
        :pswitch_34
        :pswitch_34
        :pswitch_45
        :pswitch_26
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method private processRoot(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 5
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v0, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    if-nez v0, :cond_16

    .line 499
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 500
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 501
    invoke-direct {p0, p1}, Lcom/stanfy/gsonxml/XmlReader;->processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V

    goto :goto_7d

    .line 503
    :cond_16
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-eqz v0, :cond_2c

    .line 505
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 506
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 507
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    goto :goto_7d

    .line 511
    :cond_2c
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7e

    .line 521
    :pswitch_39
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First expectedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not begin_object/begin_array)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_5a
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 518
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v1, v1, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    if-eqz v1, :cond_6a

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    goto :goto_6c

    :cond_6a
    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    :goto_6c
    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 519
    goto :goto_7d

    .line 513
    :pswitch_70
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 514
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0, v1}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 515
    nop

    .line 525
    :goto_7d
    return-void

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_70
        :pswitch_39
        :pswitch_5a
    .end packed-switch
.end method

.method private processStart(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)V
    .registers 7
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 529
    const/4 v0, 0x1

    .line 531
    .local v0, "processTagName":Z
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 533
    .local v1, "lastScope":Lcom/stanfy/gsonxml/XmlReader$Scope;
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    if-eqz v2, :cond_55

    iget-boolean v2, v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->insideArray:Z

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->size()I

    move-result v2

    if-lez v2, :cond_55

    .line 534
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->closeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;

    .line 535
    .local v2, "lastClosedInfo":Lcom/stanfy/gsonxml/XmlReader$ClosedTag;
    iget v3, v2, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->depth:I

    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ne v3, v4, :cond_55

    .line 536
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v3, v3, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v3}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_3a
    iget-object v3, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 537
    .local v3, "currentName":Ljava/lang/String;
    :goto_3c
    iget-object v4, v2, Lcom/stanfy/gsonxml/XmlReader$ClosedTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 539
    sget-object v4, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v4}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 540
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->fixScopeStack()V

    .line 541
    iget-object v4, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v4}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 546
    .end local v2    # "lastClosedInfo":Lcom/stanfy/gsonxml/XmlReader$ClosedTag;
    .end local v3    # "currentName":Ljava/lang/String;
    :cond_55
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_c2

    goto :goto_78

    .line 556
    :pswitch_61
    const/4 v0, 0x0

    .line 560
    :pswitch_62
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 561
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 562
    goto :goto_78

    .line 550
    :pswitch_6f
    const/4 v0, 0x0

    .line 551
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 552
    nop

    .line 567
    :goto_78
    if-eqz v0, :cond_92

    .line 568
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 569
    sget-object v2, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 570
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->xmlParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p1, v2}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 571
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/stanfy/gsonxml/XmlReader;->lastTextWhiteSpace:Z

    .line 574
    :cond_92
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-eqz v2, :cond_c1

    .line 575
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v2}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 576
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-eq v1, v2, :cond_b9

    .line 577
    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    if-ne v1, v2, :cond_b3

    .line 578
    sget-object v2, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 579
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    sget-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v2, v3}, Lcom/stanfy/gsonxml/Stack;->push(Ljava/lang/Object;)V

    .line 582
    :cond_b3
    iget-object v2, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-direct {p0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/stanfy/gsonxml/XmlReader$AttributesData;)V

    goto :goto_c1

    .line 576
    :cond_b9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Attributes data in primitive scope"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_6f
        :pswitch_61
        :pswitch_61
        :pswitch_62
    .end packed-switch
.end method

.method private processText(Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;)Z
    .registers 7
    .param p1, "xml"    # Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;

    .line 587
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$3;->$SwitchMap$com$stanfy$gsonxml$XmlReader$Scope:[I

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v1}, Lcom/stanfy/gsonxml/XmlReader$Scope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_7a

    const/4 v0, 0x0

    .line 607
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process text \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' inside scope "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->scopeStack:Lcom/stanfy/gsonxml/Stack;

    invoke-virtual {v3}, Lcom/stanfy/gsonxml/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_41
    const-string v0, "$"

    .line 599
    .restart local v0    # "name":Ljava/lang/String;
    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    if-lez v3, :cond_5a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    :cond_5a
    iget v3, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/stanfy/gsonxml/XmlReader;->textNameCounter:I

    .line 601
    sget-object v1, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v1}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Lcom/google/gson/stream/JsonToken;)V

    .line 602
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->addToQueue(Ljava/lang/String;)V

    .line 603
    iget-object v1, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 604
    return v2

    .line 590
    .end local v0    # "name":Ljava/lang/String;
    :pswitch_6d
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 591
    return v2

    .line 594
    :pswitch_73
    iget-object v0, p1, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/stanfy/gsonxml/XmlReader;->addTextToQueue(Ljava/lang/String;Z)V

    .line 595
    return v1

    nop

    :pswitch_data_7a
    .packed-switch 0x5
        :pswitch_73
        :pswitch_6d
        :pswitch_41
    .end packed-switch
.end method

.method private pushToQueue(Lcom/google/gson/stream/JsonToken;)V
    .registers 4
    .param p1, "token"    # Lcom/google/gson/stream/JsonToken;

    .line 412
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 413
    .local v0, "tokenRef":Lcom/stanfy/gsonxml/XmlReader$TokenRef;
    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->token:Lcom/google/gson/stream/JsonToken;

    .line 414
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 416
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    if-nez v1, :cond_16

    .line 417
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 418
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueue:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    goto :goto_1a

    .line 420
    :cond_16
    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$TokenRef;->next:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 421
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->tokensQueueStart:Lcom/stanfy/gsonxml/XmlReader$TokenRef;

    .line 423
    :goto_1a
    return-void
.end method

.method private pushToQueue(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 438
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesPool:Lcom/stanfy/gsonxml/XmlReader$RefsPool;

    invoke-virtual {v0}, Lcom/stanfy/gsonxml/XmlReader$RefsPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 439
    .local v0, "valueRef":Lcom/stanfy/gsonxml/XmlReader$ValueRef;
    iput-object p1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 440
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 442
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-nez v1, :cond_16

    .line 443
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 444
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_1a

    .line 446
    :cond_16
    iput-object v1, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->next:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 447
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueueStart:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    .line 449
    :goto_1a
    return-void
.end method


# virtual methods
.method public beginArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 159
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 160
    return-void
.end method

.method public beginObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 149
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 150
    return-void
.end method

.method public endArray()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 164
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 165
    return-void
.end method

.method public endObject()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 154
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 155
    return-void
.end method

.method public hasNext()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    .line 170
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    sget-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public nextBoolean()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    sget-object v0, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 317
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    .line 318
    .local v0, "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 319
    return v2

    .line 321
    :cond_15
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 322
    return v2

    .line 324
    :cond_1e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> to boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public nextDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 329
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 334
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public nextLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 339
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public nextName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 344
    sget-object v0, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 345
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public nextString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    sget-object v0, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->expect(Lcom/google/gson/stream/JsonToken;)V

    .line 312
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    move-result-object v0

    iget-object v0, v0, Lcom/stanfy/gsonxml/XmlReader$ValueRef;->value:Ljava/lang/String;

    return-object v0
.end method

.method public peek()Lcom/google/gson/stream/JsonToken;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->firstStart:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 287
    :cond_b
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    const-string v1, "XML parsing exception"

    const/4 v2, 0x0

    if-eqz v0, :cond_22

    .line 289
    :try_start_12
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->adaptCurrentToken()V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_15} :catch_1b

    .line 292
    nop

    .line 293
    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 294
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;

    return-object v0

    .line 290
    :catch_1b
    move-exception v0

    .line 291
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 299
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_22
    const/4 v0, 0x0

    :try_start_23
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader;->fillQueues(Z)V

    .line 300
    iput-object v2, p0, Lcom/stanfy/gsonxml/XmlReader;->expectedToken:Lcom/google/gson/stream/JsonToken;

    .line 302
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextToken()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_2e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_2e} :catch_2f

    return-object v0

    .line 304
    :catch_2f
    move-exception v0

    .line 305
    .restart local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v2, v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public skipValue()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "count":I
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0}, Lcom/stanfy/gsonxml/XmlReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    .line 180
    .local v2, "token":Lcom/google/gson/stream/JsonToken;
    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_26

    sget-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_12

    goto :goto_26

    .line 182
    :cond_12
    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    if-eq v2, v3, :cond_23

    sget-object v3, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1b

    goto :goto_23

    .line 184
    :cond_1b
    iget-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->valuesQueue:Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    if-eqz v3, :cond_28

    .line 185
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->nextValue()Lcom/stanfy/gsonxml/XmlReader$ValueRef;

    goto :goto_28

    .line 183
    :cond_23
    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 181
    :cond_26
    :goto_26
    add-int/lit8 v0, v0, 0x1

    .line 187
    :cond_28
    :goto_28
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/stanfy/gsonxml/XmlReader;->token:Lcom/google/gson/stream/JsonToken;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_31

    .line 188
    .end local v2    # "token":Lcom/google/gson/stream/JsonToken;
    if-nez v0, :cond_4

    .line 190
    .end local v0    # "count":I
    iput-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_31
    move-exception v0

    iput-boolean v1, p0, Lcom/stanfy/gsonxml/XmlReader;->skipping:Z

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- XmlReader ---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader;->dump()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
