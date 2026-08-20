.class Lcom/android/commands/content/Content$Tokenizer;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/content/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/String;

.field private mNextArg:I


# direct methods
.method static bridge synthetic -$$Nest$mnextArg(Lcom/android/commands/content/Content$Tokenizer;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/commands/content/Content$Tokenizer;->nextArg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 2
    .param p1, "args"    # [Ljava/lang/String;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    iput-object p1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    .line 489
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .line 492
    iget v0, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    iget-object v1, p0, Lcom/android/commands/content/Content$Tokenizer;->mArgs:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_e

    .line 493
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/commands/content/Content$Tokenizer;->mNextArg:I

    aget-object v0, v1, v0

    return-object v0

    .line 495
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method
