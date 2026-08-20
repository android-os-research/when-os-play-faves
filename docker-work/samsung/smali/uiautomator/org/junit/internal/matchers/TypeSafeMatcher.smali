.class public abstract Lorg/junit/internal/matchers/TypeSafeMatcher;
.super Lorg/hamcrest/BaseMatcher;
.source "TypeSafeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 26
    .local p0, "this":Lorg/junit/internal/matchers/TypeSafeMatcher;, "Lorg/junit/internal/matchers/TypeSafeMatcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/matchers/TypeSafeMatcher;->findExpectedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/internal/matchers/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/junit/internal/matchers/TypeSafeMatcher;, "Lorg/junit/internal/matchers/TypeSafeMatcher<TT;>;"
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/junit/internal/matchers/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    .line 50
    return-void
.end method

.method private static findExpectedType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 31
    .local p0, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_25

    .line 32
    invoke-static {v0}, Lorg/junit/internal/MethodSorter;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_20

    aget-object v5, v1, v4

    .line 33
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-static {v5}, Lorg/junit/internal/matchers/TypeSafeMatcher;->isMatchesSafelyMethod(Ljava/lang/reflect/Method;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 34
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    aget-object v1, v1, v3

    return-object v1

    .line 32
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 31
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 39
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_25
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot determine correct type for matchesSafely() method."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isMatchesSafelyMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 43
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "matchesSafely"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1b

    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_1b

    .line 45
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 43
    :goto_1c
    return v1
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "item"    # Ljava/lang/Object;

    .line 59
    .local p0, "this":Lorg/junit/internal/matchers/TypeSafeMatcher;, "Lorg/junit/internal/matchers/TypeSafeMatcher<TT;>;"
    if-eqz p1, :cond_12

    iget-object v0, p0, Lorg/junit/internal/matchers/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 61
    invoke-virtual {p0, p1}, Lorg/junit/internal/matchers/TypeSafeMatcher;->matchesSafely(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 59
    :goto_13
    return v0
.end method

.method public abstract matchesSafely(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
