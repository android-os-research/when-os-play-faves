.class Lb/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/j;->a:I

    const v1, 0x5f5e0ff

    iput v1, p0, Lb/j;->b:I

    iput v0, p0, Lb/j;->c:I

    iput v0, p0, Lb/j;->d:I

    iput v0, p0, Lb/j;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lb/i;)V
    .registers 2

    invoke-direct {p0}, Lb/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lb/j;)I
    .registers 1

    invoke-direct {p0}, Lb/j;->k()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lb/j;)I
    .registers 1

    invoke-direct {p0}, Lb/j;->j()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lb/j;)I
    .registers 1

    invoke-direct {p0}, Lb/j;->h()I

    move-result p0

    return p0
.end method

.method static synthetic d(Lb/j;)I
    .registers 1

    invoke-direct {p0}, Lb/j;->i()I

    move-result p0

    return p0
.end method

.method static synthetic e(Lb/j;)V
    .registers 1

    invoke-direct {p0}, Lb/j;->l()V

    return-void
.end method

.method static synthetic f(Lb/j;I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/j;->g(I)V

    return-void
.end method

.method private g(I)V
    .registers 4

    iget v0, p0, Lb/j;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/j;->e:I

    iget v1, p0, Lb/j;->b:I

    if-ge p1, v1, :cond_c

    iput p1, p0, Lb/j;->b:I

    :cond_c
    iget v1, p0, Lb/j;->c:I

    if-le p1, v1, :cond_12

    iput p1, p0, Lb/j;->c:I

    :cond_12
    iget v1, p0, Lb/j;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lb/j;->d:I

    div-int/2addr v1, v0

    iput v1, p0, Lb/j;->a:I

    return-void
.end method

.method private h()I
    .registers 1

    iget p0, p0, Lb/j;->a:I

    return p0
.end method

.method private i()I
    .registers 1

    iget p0, p0, Lb/j;->e:I

    return p0
.end method

.method private j()I
    .registers 1

    iget p0, p0, Lb/j;->c:I

    return p0
.end method

.method private k()I
    .registers 1

    iget p0, p0, Lb/j;->b:I

    return p0
.end method

.method private l()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lb/j;->a:I

    const v1, 0x5f5e0ff

    iput v1, p0, Lb/j;->b:I

    iput v0, p0, Lb/j;->c:I

    iput v0, p0, Lb/j;->d:I

    iput v0, p0, Lb/j;->e:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "min : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / max : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / avg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/j;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / cnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/j;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
