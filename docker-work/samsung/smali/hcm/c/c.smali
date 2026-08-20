.class Lc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:Ljava/lang/String;

.field private d:I

.field final synthetic e:Lc/d;


# direct methods
.method private constructor <init>(Lc/d;)V
    .registers 3

    iput-object p1, p0, Lc/c;->e:Lc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x18

    new-array v0, p1, [I

    iput-object v0, p0, Lc/c;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lc/c;->b:[I

    return-void
.end method

.method synthetic constructor <init>(Lc/d;Lc/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lc/c;-><init>(Lc/d;)V

    return-void
.end method

.method static synthetic a(Lc/c;)[I
    .registers 1

    iget-object p0, p0, Lc/c;->a:[I

    return-object p0
.end method

.method static synthetic b(Lc/c;)[I
    .registers 1

    iget-object p0, p0, Lc/c;->b:[I

    return-object p0
.end method

.method static synthetic c(Lc/c;)I
    .registers 1

    iget p0, p0, Lc/c;->d:I

    return p0
.end method

.method static synthetic d(Lc/c;I)I
    .registers 2

    iput p1, p0, Lc/c;->d:I

    return p1
.end method

.method static synthetic e(Lc/c;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lc/c;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lc/c;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    const/16 v3, 0x18

    if-ge v1, v3, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/c;->b:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_13
    const/16 v3, 0x18

    if-ge v1, v3, :cond_28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lc/c;->a:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
