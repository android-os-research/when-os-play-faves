.class Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;
.super Ljava/lang/Object;
.source "TestGrouping.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/suitebuilder/TestGrouping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestCasePredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/test/suitebuilder/TestGrouping$TestCasePredicate-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;-><init>()V

    return-void
.end method

.method private hasValidConstructor(Ljava/lang/Class;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 202
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 204
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2b

    aget-object v5, v0, v3

    .line 205
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 206
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 207
    .local v6, "parameterTypes":[Ljava/lang/Class;
    array-length v7, v6

    if-eqz v7, :cond_27

    array-length v7, v6

    if-ne v7, v4, :cond_28

    aget-object v7, v6, v2

    const-class v8, Ljava/lang/String;

    if-ne v7, v8, :cond_28

    .line 209
    :cond_27
    return v4

    .line 204
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ljunit/framework/TestCase;>;"
    .end local v6    # "parameterTypes":[Ljava/lang/Class;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 213
    :cond_2b
    new-array v1, v4, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 213
    const-string v3, "TestCase class %s is missing a public constructor with no parameters or a single String parameter - skipping"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TestGrouping"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v2
.end method


# virtual methods
.method public apply(Ljava/lang/Class;)Z
    .registers 4
    .param p1, "aClass"    # Ljava/lang/Class;

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    .line 191
    .local v0, "modifiers":I
    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 192
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 193
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 194
    invoke-direct {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->hasValidConstructor(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 191
    :goto_21
    return v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    .line 187
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Landroid/test/suitebuilder/TestGrouping$TestCasePredicate;->apply(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
