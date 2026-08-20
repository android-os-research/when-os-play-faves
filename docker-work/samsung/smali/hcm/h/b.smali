.class Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lh/b;->a:I

    iput v0, p0, Lh/b;->b:I

    iput v0, p0, Lh/b;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh/b;->d:J

    iput-wide v0, p0, Lh/b;->e:J

    return-void
.end method

.method private constructor <init>(IIIJJ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh/b;->a:I

    iput p2, p0, Lh/b;->b:I

    iput p3, p0, Lh/b;->c:I

    iput-wide p4, p0, Lh/b;->d:J

    iput-wide p6, p0, Lh/b;->e:J

    return-void
.end method

.method private a()I
    .registers 1

    iget p0, p0, Lh/b;->c:I

    return p0
.end method

.method private b()I
    .registers 1

    iget p0, p0, Lh/b;->b:I

    return p0
.end method

.method private c()I
    .registers 1

    iget p0, p0, Lh/b;->a:I

    return p0
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lh/b;->e:J

    return-wide v0
.end method

.method private e()J
    .registers 3

    iget-wide v0, p0, Lh/b;->d:J

    return-wide v0
.end method

.method private f()V
    .registers 3

    const/4 v0, -0x1

    iput v0, p0, Lh/b;->a:I

    iput v0, p0, Lh/b;->b:I

    iput v0, p0, Lh/b;->c:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lh/b;->d:J

    iput-wide v0, p0, Lh/b;->e:J

    return-void
.end method

.method private g(I)V
    .registers 2

    iput p1, p0, Lh/b;->c:I

    return-void
.end method

.method private h(I)V
    .registers 2

    iput p1, p0, Lh/b;->b:I

    return-void
.end method

.method private i(I)V
    .registers 2

    iput p1, p0, Lh/b;->a:I

    return-void
.end method

.method private j(J)V
    .registers 3

    iput-wide p1, p0, Lh/b;->e:J

    return-void
.end method

.method private k(J)V
    .registers 3

    iput-wide p1, p0, Lh/b;->d:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargingInfo [index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battLevStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", battLevEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lh/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timeEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lh/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
