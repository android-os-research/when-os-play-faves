.class public Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
.super Ljava/lang/Object;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/statements/FailOnTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private timeout:J

.field private unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static bridge synthetic -$$Nest$fgettimeout(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J
    .registers 3

    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetunit(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;
    .registers 1

    iget-object p0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder-IA;)V
    .registers 2

    invoke-direct {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lorg/junit/runners/model/Statement;)Lorg/junit/internal/runners/statements/FailOnTimeout;
    .registers 4
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 89
    if-eqz p1, :cond_9

    .line 92
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout-IA;)V

    return-object v0

    .line 90
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statement cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .registers 6
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_15

    .line 74
    if-eqz p3, :cond_d

    .line 77
    iput-wide p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    .line 78
    iput-object p3, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 79
    return-object p0

    .line 75
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TimeUnit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
