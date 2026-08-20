.class Lcom/android/commands/content/Content$Parser;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Parser"
.end annotation


# static fields
.field private static final ARGUMENT_ARG:Ljava/lang/String; = "--arg"

.field private static final ARGUMENT_BIND:Ljava/lang/String; = "--bind"

.field private static final ARGUMENT_CALL:Ljava/lang/String; = "call"

.field private static final ARGUMENT_DELETE:Ljava/lang/String; = "delete"

.field private static final ARGUMENT_EXTRA:Ljava/lang/String; = "--extra"

.field private static final ARGUMENT_GET_TYPE:Ljava/lang/String; = "gettype"

.field private static final ARGUMENT_INSERT:Ljava/lang/String; = "insert"

.field private static final ARGUMENT_METHOD:Ljava/lang/String; = "--method"

.field private static final ARGUMENT_PREFIX:Ljava/lang/String; = "--"

.field private static final ARGUMENT_PROJECTION:Ljava/lang/String; = "--projection"

.field private static final ARGUMENT_QUERY:Ljava/lang/String; = "query"

.field private static final ARGUMENT_READ:Ljava/lang/String; = "read"

.field private static final ARGUMENT_SORT:Ljava/lang/String; = "--sort"

.field private static final ARGUMENT_UPDATE:Ljava/lang/String; = "update"

.field private static final ARGUMENT_URI:Ljava/lang/String; = "--uri"

.field private static final ARGUMENT_USER:Ljava/lang/String; = "--user"

.field private static final ARGUMENT_WHERE:Ljava/lang/String; = "--where"

.field private static final ARGUMENT_WRITE:Ljava/lang/String; = "write"

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final TYPE_BOOLEAN:Ljava/lang/String; = "b"

.field private static final TYPE_DOUBLE:Ljava/lang/String; = "d"

.field private static final TYPE_FLOAT:Ljava/lang/String; = "f"

.field private static final TYPE_INTEGER:Ljava/lang/String; = "i"

.field private static final TYPE_LONG:Ljava/lang/String; = "l"

.field private static final TYPE_NULL:Ljava/lang/String; = "n"

.field private static final TYPE_STRING:Ljava/lang/String; = "s"


# instance fields
.field private final mTokenizer:Lcom/android/commands/content/Content$Tokenizer;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .param p1, "args"    # [Ljava/lang/String;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Lcom/android/commands/content/Content$Tokenizer;

    invoke-direct {v0, p1}, Lcom/android/commands/content/Content$Tokenizer;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    .line 170
    return-void
.end method

.method private argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "argument"    # Ljava/lang/String;

    .line 475
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 479
    return-object v0

    .line 477
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseBindValue()Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, "argument":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Binding not well formed: "

    if-nez v1, :cond_e8

    .line 438
    const-string v1, ":"

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/commands/content/Content$Parser;->splitWithEscaping(Ljava/lang/String;C)Ljava/util/List;

    move-result-object v1

    .line 439
    .local v1, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_d1

    .line 442
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 443
    .local v2, "column":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 444
    .local v3, "type":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 445
    .local v4, "value":Ljava/lang/String;
    const-string v5, "s"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 446
    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 447
    :cond_41
    const-string v5, "b"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 448
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 449
    :cond_56
    const-string v5, "i"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 450
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 451
    :cond_6b
    const-string v5, "l"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 452
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 453
    :cond_80
    const-string v5, "f"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 454
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 455
    :cond_95
    const-string v5, "d"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 456
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 457
    :cond_aa
    const-string v5, "n"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b8

    .line 458
    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    return-object v5

    .line 460
    :cond_b8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 440
    .end local v2    # "column":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_d1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 436
    .end local v1    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_e8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseBindValue(Landroid/content/ContentValues;)V
    .registers 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 465
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseBindValue()Landroid/util/Pair;

    move-result-object v0

    .line 466
    .local v0, "columnValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method private parseBindValue(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 470
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseBindValue()Landroid/util/Pair;

    move-result-object v0

    .line 471
    .local v0, "columnValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    return-void
.end method

.method private parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;
    .registers 8

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 233
    .local v1, "userId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v2, "extras":Landroid/os/Bundle;
    :goto_7
    iget-object v3, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v3}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "argument":Ljava/lang/String;
    if-eqz v3, :cond_6a

    .line 235
    const-string v3, "--uri"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 236
    invoke-direct {p0, v4}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_7

    .line 237
    :cond_21
    const-string v3, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 238
    invoke-direct {p0, v4}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_7

    .line 239
    :cond_32
    const-string v3, "--where"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 240
    nop

    .line 241
    invoke-direct {p0, v4}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    const-string v5, "android:query-arg-sql-selection"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 242
    :cond_45
    const-string v3, "--extra"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 243
    invoke-direct {p0, v2}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/os/Bundle;)V

    goto :goto_7

    .line 245
    :cond_51
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported argument: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 248
    .end local v4    # "argument":Ljava/lang/String;
    :cond_6a
    if-eqz v0, :cond_72

    .line 252
    new-instance v3, Lcom/android/commands/content/Content$DeleteCommand;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/commands/content/Content$DeleteCommand;-><init>(Landroid/net/Uri;ILandroid/os/Bundle;)V

    return-object v3

    .line 249
    :cond_72
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private parseGetTypeCommand()Lcom/android/commands/content/Content$GetTypeCommand;
    .registers 7

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 322
    .local v1, "userId":I
    :goto_2
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 323
    const-string v2, "--uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 324
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 325
    :cond_1c
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 326
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 328
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v3    # "argument":Ljava/lang/String;
    :cond_46
    if-eqz v0, :cond_4e

    .line 335
    new-instance v2, Lcom/android/commands/content/Content$GetTypeCommand;

    invoke-direct {v2, v0, v1}, Lcom/android/commands/content/Content$GetTypeCommand;-><init>(Landroid/net/Uri;I)V

    return-object v2

    .line 332
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;
    .registers 9

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 204
    .local v1, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 205
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 206
    .local v3, "extras":Landroid/os/Bundle;
    :goto_c
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "argument":Ljava/lang/String;
    if-eqz v4, :cond_68

    .line 207
    const-string v4, "--uri"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 208
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    .line 209
    :cond_26
    const-string v4, "--user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 210
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_c

    .line 211
    :cond_37
    const-string v4, "--bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 212
    invoke-direct {p0, v2}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_c

    .line 213
    :cond_43
    const-string v4, "--extra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 214
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/os/Bundle;)V

    goto :goto_c

    .line 216
    :cond_4f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    .end local v5    # "argument":Ljava/lang/String;
    :cond_68
    if-eqz v0, :cond_7e

    .line 223
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_76

    .line 227
    new-instance v4, Lcom/android/commands/content/Content$InsertCommand;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/commands/content/Content$InsertCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;Landroid/os/Bundle;)V

    return-object v4

    .line 224
    :cond_76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 220
    :cond_7e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseReadCommand()Lcom/android/commands/content/Content$ReadCommand;
    .registers 7

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 341
    .local v1, "userId":I
    :goto_2
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 342
    const-string v2, "--uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 343
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 344
    :cond_1c
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 345
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 347
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 350
    .end local v3    # "argument":Ljava/lang/String;
    :cond_46
    if-eqz v0, :cond_4e

    .line 354
    new-instance v2, Lcom/android/commands/content/Content$ReadCommand;

    invoke-direct {v2, v0, v1}, Lcom/android/commands/content/Content$ReadCommand;-><init>(Landroid/net/Uri;I)V

    return-object v2

    .line 351
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;
    .registers 9

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 258
    .local v1, "userId":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v2, "values":Landroid/content/ContentValues;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v3, "extras":Landroid/os/Bundle;
    :goto_c
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "argument":Ljava/lang/String;
    if-eqz v4, :cond_7b

    .line 261
    const-string v4, "--uri"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 262
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c

    .line 263
    :cond_26
    const-string v4, "--user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 264
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_c

    .line 265
    :cond_37
    const-string v4, "--where"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 266
    nop

    .line 267
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    const-string v6, "android:query-arg-sql-selection"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 268
    :cond_4a
    const-string v4, "--bind"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 269
    invoke-direct {p0, v2}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/content/ContentValues;)V

    goto :goto_c

    .line 270
    :cond_56
    const-string v4, "--extra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 271
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/os/Bundle;)V

    goto :goto_c

    .line 273
    :cond_62
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    .end local v5    # "argument":Ljava/lang/String;
    :cond_7b
    if-eqz v0, :cond_91

    .line 280
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-eqz v4, :cond_89

    .line 284
    new-instance v4, Lcom/android/commands/content/Content$UpdateCommand;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/commands/content/Content$UpdateCommand;-><init>(Landroid/net/Uri;ILandroid/content/ContentValues;Landroid/os/Bundle;)V

    return-object v4

    .line 281
    :cond_89
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Bindings not specified. Did you specify --bind argument(s)?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_91
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private parseWriteCommand()Lcom/android/commands/content/Content$WriteCommand;
    .registers 7

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 360
    .local v1, "userId":I
    :goto_2
    iget-object v2, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v2}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "argument":Ljava/lang/String;
    if-eqz v2, :cond_46

    .line 361
    const-string v2, "--uri"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 362
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 363
    :cond_1c
    const-string v2, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 364
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 366
    :cond_2d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    .end local v3    # "argument":Ljava/lang/String;
    :cond_46
    if-eqz v0, :cond_4e

    .line 373
    new-instance v2, Lcom/android/commands/content/Content$WriteCommand;

    invoke-direct {v2, v0, v1}, Lcom/android/commands/content/Content$WriteCommand;-><init>(Landroid/net/Uri;I)V

    return-object v2

    .line 370
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private splitWithEscaping(Ljava/lang/String;C)Ljava/util/List;
    .registers 9
    .param p1, "argument"    # Ljava/lang/String;
    .param p2, "splitChar"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v1, "cur":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 411
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 412
    .local v3, "c":C
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    .line 413
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v2, v4, :cond_29

    .line 417
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 418
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 414
    :cond_29
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid escaping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 420
    :cond_31
    if-ne v3, p2, :cond_3f

    .line 422
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_42

    .line 426
    :cond_3f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    .end local v3    # "c":C
    :goto_42
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 429
    .end local v2    # "i":I
    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    return-object v0
.end method


# virtual methods
.method public parseCallCommand()Lcom/android/commands/content/Content$CallCommand;
    .registers 13

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "method":Ljava/lang/String;
    const/4 v1, 0x0

    .line 290
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 291
    .local v2, "arg":Ljava/lang/String;
    const/4 v3, 0x0

    .line 292
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v4, "extras":Landroid/os/Bundle;
    :goto_9
    iget-object v5, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v5}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "argument":Ljava/lang/String;
    if-eqz v5, :cond_73

    .line 294
    const-string v5, "--uri"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 295
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_9

    .line 296
    :cond_23
    const-string v5, "--user"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 297
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 298
    :cond_34
    const-string v5, "--method"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 299
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 300
    :cond_41
    const-string v5, "--arg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 301
    invoke-direct {p0, v6}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    .line 302
    :cond_4e
    const-string v5, "--extra"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 303
    invoke-direct {p0, v4}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/os/Bundle;)V

    goto :goto_9

    .line 305
    :cond_5a
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported argument: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 308
    .end local v6    # "argument":Ljava/lang/String;
    :cond_73
    if-eqz v3, :cond_8b

    .line 312
    if-eqz v0, :cond_83

    .line 315
    new-instance v11, Lcom/android/commands/content/Content$CallCommand;

    move-object v5, v11

    move-object v6, v3

    move v7, v1

    move-object v8, v0

    move-object v9, v2

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/commands/content/Content$CallCommand;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v11

    .line 313
    :cond_83
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Content provider method not specified."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 309
    :cond_8b
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public parseCommand()Lcom/android/commands/content/Content$Command;
    .registers 5

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v0}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "operation":Ljava/lang/String;
    const-string v1, "insert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 176
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseInsertCommand()Lcom/android/commands/content/Content$InsertCommand;

    move-result-object v1

    return-object v1

    .line 177
    :cond_13
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 178
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseDeleteCommand()Lcom/android/commands/content/Content$DeleteCommand;

    move-result-object v1

    return-object v1

    .line 179
    :cond_20
    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 180
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseUpdateCommand()Lcom/android/commands/content/Content$UpdateCommand;

    move-result-object v1

    return-object v1

    .line 181
    :cond_2d
    const-string v1, "query"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 182
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;

    move-result-object v1

    return-object v1

    .line 183
    :cond_3a
    const-string v1, "call"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 184
    invoke-virtual {p0}, Lcom/android/commands/content/Content$Parser;->parseCallCommand()Lcom/android/commands/content/Content$CallCommand;

    move-result-object v1

    return-object v1

    .line 185
    :cond_47
    const-string v1, "read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 186
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseReadCommand()Lcom/android/commands/content/Content$ReadCommand;

    move-result-object v1

    return-object v1

    .line 187
    :cond_54
    const-string v1, "write"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 188
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseWriteCommand()Lcom/android/commands/content/Content$WriteCommand;

    move-result-object v1

    return-object v1

    .line 189
    :cond_61
    const-string v1, "gettype"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 190
    invoke-direct {p0}, Lcom/android/commands/content/Content$Parser;->parseGetTypeCommand()Lcom/android/commands/content/Content$GetTypeCommand;

    move-result-object v1

    return-object v1

    .line 192
    :cond_6e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/commands/content/Content$Parser;
    throw v1
    :try_end_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_87} :catch_87

    .line 194
    .end local v0    # "operation":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/commands/content/Content$Parser;
    :catch_87
    move-exception v0

    .line 195
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "usage: adb shell content [subcommand] [options]\n\nusage: adb shell content insert --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--extra <BINDING>...]\n  <URI> a content provider URI.\n  <BINDING> binds a typed value to a column and is formatted:\n  <COLUMN_NAME>:<TYPE>:<COLUMN_VALUE> where:\n  <TYPE> specifies data type such as:\n  b - boolean, s - string, i - integer, l - long, f - float, d - double, n - null\n  Note: Omit the value for passing an empty string, e.g column:s:\n  Example:\n  # Add \"new_setting\" secure setting with value \"new_value\".\n  adb shell content insert --uri content://settings/secure --bind name:s:new_setting --bind value:s:new_value\n\nusage: adb shell content update --uri <URI> [--user <USER_ID>] [--where <WHERE>] [--extra <BINDING>...]\n  <WHERE> is a SQL style where clause in quotes (You have to escape single quotes - see example below).\n  Example:\n  # Change \"new_setting\" secure setting to \"newer_value\".\n  adb shell content update --uri content://settings/secure --bind value:s:newer_value --where \"name=\'new_setting\'\"\n\nusage: adb shell content delete --uri <URI> [--user <USER_ID>] --bind <BINDING> [--bind <BINDING>...] [--where <WHERE>] [--extra <BINDING>...]\n  Example:\n  # Remove \"new_setting\" secure setting.\n  adb shell content delete --uri content://settings/secure --where \"name=\'new_setting\'\"\n\nusage: adb shell content query --uri <URI> [--user <USER_ID>] [--projection <PROJECTION>] [--where <WHERE>] [--sort <SORT_ORDER>] [--extra <BINDING>...]\n  <PROJECTION> is a list of colon separated column names and is formatted:\n  <COLUMN_NAME>[:<COLUMN_NAME>...]\n  <SORT_ORDER> is the order in which rows in the result should be sorted.\n  Example:\n  # Select \"name\" and \"value\" columns from secure settings where \"name\" is equal to \"new_setting\" and sort the result by name in ascending order.\n  adb shell content query --uri content://settings/secure --projection name:value --where \"name=\'new_setting\'\" --sort \"name ASC\"\n\nusage: adb shell content call --uri <URI> --method <METHOD> [--arg <ARG>]\n       [--extra <BINDING> ...]\n  <METHOD> is the name of a provider-defined method\n  <ARG> is an optional string argument\n  <BINDING> is like --bind above, typed data of the form <KEY>:{b,s,i,l,f,d}:<VAL>\n\nusage: adb shell content read --uri <URI> [--user <USER_ID>]\n  Example:\n  adb shell \'content read --uri content://settings/system/ringtone_cache\' > host.ogg\n\nusage: adb shell content write --uri <URI> [--user <USER_ID>]\n  Example:\n  adb shell \'content write --uri content://settings/system/ringtone_cache\' < host.ogg\n\nusage: adb shell content gettype --uri <URI> [--user <USER_ID>]\n  Example:\n  adb shell content gettype --uri content://media/internal/audio/media/\n\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ERROR] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    const/4 v1, 0x0

    return-object v1
.end method

.method public parseQueryCommand()Lcom/android/commands/content/Content$QueryCommand;
    .registers 9

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 379
    .local v1, "userId":I
    const/4 v2, 0x0

    .line 380
    .local v2, "projection":[Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v3, "extras":Landroid/os/Bundle;
    :goto_8
    iget-object v4, p0, Lcom/android/commands/content/Content$Parser;->mTokenizer:Lcom/android/commands/content/Content$Tokenizer;

    invoke-static {v4}, Lcom/android/commands/content/Content$Tokenizer;->-$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "argument":Ljava/lang/String;
    if-eqz v4, :cond_91

    .line 382
    const-string v4, "--uri"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 383
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_8

    .line 384
    :cond_22
    const-string v4, "--user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 385
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    .line 386
    :cond_33
    const-string v4, "--where"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 387
    nop

    .line 388
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 387
    const-string v6, "android:query-arg-sql-selection"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 389
    :cond_46
    const-string v4, "--sort"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 390
    nop

    .line 391
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 390
    const-string v6, "android:query-arg-sql-sort-order"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 392
    :cond_59
    const-string v4, "--projection"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 393
    invoke-direct {p0, v5}, Lcom/android/commands/content/Content$Parser;->argumentValueRequired(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "[\\s]*:[\\s]*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    .line 394
    :cond_6c
    const-string v4, "--extra"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 395
    invoke-direct {p0, v3}, Lcom/android/commands/content/Content$Parser;->parseBindValue(Landroid/os/Bundle;)V

    goto :goto_8

    .line 397
    :cond_78
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported argument: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    .end local v5    # "argument":Ljava/lang/String;
    :cond_91
    if-eqz v0, :cond_99

    .line 404
    new-instance v4, Lcom/android/commands/content/Content$QueryCommand;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/android/commands/content/Content$QueryCommand;-><init>(Landroid/net/Uri;I[Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v4

    .line 401
    :cond_99
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Content provider URI not specified. Did you specify --uri argument?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
