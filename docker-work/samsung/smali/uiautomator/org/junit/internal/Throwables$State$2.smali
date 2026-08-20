.class final enum Lorg/junit/internal/Throwables$State$2;
.super Lorg/junit/internal/Throwables$State;
.source "Throwables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/Throwables$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/junit/internal/Throwables$State;-><init>(Ljava/lang/String;ILorg/junit/internal/Throwables$State-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/junit/internal/Throwables$State$2-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lorg/junit/internal/Throwables$State$2;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public processLine(Ljava/lang/String;)Lorg/junit/internal/Throwables$State;
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lorg/junit/internal/Throwables;->-$$Nest$smisReflectionMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 197
    sget-object v0, Lorg/junit/internal/Throwables$State$2;->PROCESSING_REFLECTION_CODE:Lorg/junit/internal/Throwables$State;

    return-object v0

    .line 198
    :cond_9
    invoke-static {p1}, Lorg/junit/internal/Throwables;->-$$Nest$smisTestFrameworkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 199
    return-object p0

    .line 201
    :cond_10
    sget-object v0, Lorg/junit/internal/Throwables$State$2;->PROCESSING_OTHER_CODE:Lorg/junit/internal/Throwables$State;

    return-object v0
.end method
