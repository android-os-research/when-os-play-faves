.class public Ljunit/framework/TestSuite;
.super Ljava/lang/Object;
.source "TestSuite.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field private fName:Ljava/lang/String;

.field private fTests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 117
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    .line 118
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->addTestsFromTestCase(Ljava/lang/Class;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 154
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    .line 155
    invoke-virtual {p0, p2}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    .line 162
    invoke-virtual {p0, p1}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 170
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/Vector;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    .line 171
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 172
    .local v2, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v2}, Ljunit/framework/TestSuite;->testCaseForClass(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 171
    .end local v2    # "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 174
    :cond_1c
    return-void
.end method

.method public constructor <init>([Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 190
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>([Ljava/lang/Class;)V

    .line 191
    invoke-virtual {p0, p2}, Ljunit/framework/TestSuite;->setName(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method private addTestMethod(Ljava/lang/reflect/Method;Ljava/util/List;Ljava/lang/Class;)V
    .registers 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 285
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 287
    return-void

    .line 289
    :cond_b
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isPublicTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 290
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test method isn\'t public: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 293
    :cond_49
    return-void

    .line 295
    :cond_4a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {p3, v0}, Ljunit/framework/TestSuite;->createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 297
    return-void
.end method

.method private addTestsFromTestCase(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 122
    .local p1, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Class "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    .line 124
    :try_start_8
    invoke-static {p1}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_b} :catch_83

    .line 128
    nop

    .line 130
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_39

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not public"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 132
    return-void

    .line 135
    :cond_39
    move-object v0, p1

    .line 136
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3f
    const-class v2, Ljunit/framework/Test;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 138
    invoke-static {v0}, Lorg/junit/internal/MethodSorter;->getDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_4d
    if-ge v4, v3, :cond_57

    aget-object v5, v2, v4

    .line 139
    .local v5, "each":Ljava/lang/reflect/Method;
    invoke-direct {p0, v5, v1, p1}, Ljunit/framework/TestSuite;->addTestMethod(Ljava/lang/reflect/Method;Ljava/util/List;Ljava/lang/Class;)V

    .line 138
    .end local v5    # "each":Ljava/lang/reflect/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 141
    :cond_57
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_3f

    .line 143
    :cond_5c
    iget-object v2, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_82

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tests found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 146
    :cond_82
    return-void

    .line 125
    .end local v0    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_83
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no public constructor TestCase(String name) or TestCase()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 127
    return-void
.end method

.method public static createTest(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/Test;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljunit/framework/Test;"
        }
    .end annotation

    .line 52
    .local p0, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, ")"

    const-string v1, " ("

    :try_start_4
    invoke-static {p0}, Ljunit/framework/TestSuite;->getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_8} :catch_b0

    .line 55
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 58
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    if-nez v3, :cond_22

    .line 59
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 60
    .local v3, "test":Ljava/lang/Object;
    instance-of v4, v3, Ljunit/framework/TestCase;

    if-eqz v4, :cond_2c

    .line 61
    move-object v4, v3

    check-cast v4, Ljunit/framework/TestCase;

    invoke-virtual {v4, p1}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V

    goto :goto_2c

    .line 64
    .end local v3    # "test":Ljava/lang/Object;
    :cond_22
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2b
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_2b} :catch_87
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_2b} :catch_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_2b} :catch_31

    move-object v3, v0

    .line 72
    .restart local v3    # "test":Ljava/lang/Object;
    :cond_2c
    :goto_2c
    nop

    .line 73
    move-object v0, v3

    check-cast v0, Ljunit/framework/Test;

    return-object v0

    .line 70
    .end local v3    # "test":Ljava/lang/Object;
    :catch_31
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot access test case: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0

    .line 68
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5a
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in constructor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v4}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0

    .line 66
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_87
    move-exception v3

    .line 67
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot instantiate test case: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lorg/junit/internal/Throwables;->getStacktrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0

    .line 53
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_b0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no public constructor TestCase(String name) or TestCase()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v1

    return-object v1
.end method

.method public static getTestConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 82
    .local p0, "theClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_c} :catch_d

    return-object v0

    .line 83
    :catch_d
    move-exception v0

    .line 86
    new-array v0, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method private isPublicTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 3
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 300
    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;->isTestMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isTestMethod(Ljava/lang/reflect/Method;)Z
    .registers 4
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .line 304
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_21

    .line 305
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 306
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 304
    :goto_22
    return v0
.end method

.method private testCaseForClass(Ljava/lang/Class;)Ljunit/framework/Test;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljunit/framework/Test;"
        }
    .end annotation

    .line 177
    .local p1, "each":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 178
    new-instance v0, Ljunit/framework/TestSuite;

    const-class v1, Ljunit/framework/TestCase;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 180
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not extend TestCase"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestSuite;->warning(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v0

    return-object v0
.end method

.method public static warning(Ljava/lang/String;)Ljunit/framework/Test;
    .registers 3
    .param p0, "message"    # Ljava/lang/String;

    .line 93
    new-instance v0, Ljunit/framework/TestSuite$1;

    const-string v1, "warning"

    invoke-direct {v0, v1, p0}, Ljunit/framework/TestSuite$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addTest(Ljunit/framework/Test;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;

    .line 198
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public addTestSuite(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljunit/framework/TestCase;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljunit/framework/TestCase;>;"
    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljunit/framework/TestSuite;->addTest(Ljunit/framework/Test;)V

    .line 206
    return-void
.end method

.method public countTestCases()I
    .registers 5

    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "count":I
    iget-object v1, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/Test;

    .line 214
    .local v2, "each":Ljunit/framework/Test;
    invoke-interface {v2}, Ljunit/framework/Test;->countTestCases()I

    move-result v3

    add-int/2addr v0, v3

    .line 215
    .end local v2    # "each":Ljunit/framework/Test;
    goto :goto_7

    .line 216
    :cond_19
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 225
    iget-object v0, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 5
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 232
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/Test;

    .line 233
    .local v1, "each":Ljunit/framework/Test;
    invoke-virtual {p1}, Ljunit/framework/TestResult;->shouldStop()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 234
    goto :goto_1d

    .line 236
    :cond_19
    invoke-virtual {p0, v1, p1}, Ljunit/framework/TestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    .line 237
    .end local v1    # "each":Ljunit/framework/Test;
    goto :goto_6

    .line 238
    :cond_1d
    :goto_1d
    return-void
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .registers 3
    .param p1, "test"    # Ljunit/framework/Test;
    .param p2, "result"    # Ljunit/framework/TestResult;

    .line 241
    invoke-interface {p1, p2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    .line 242
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 250
    iput-object p1, p0, Ljunit/framework/TestSuite;->fName:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public testAt(I)Ljunit/framework/Test;
    .registers 3
    .param p1, "index"    # I

    .line 257
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljunit/framework/Test;

    return-object v0
.end method

.method public testCount()I
    .registers 2

    .line 264
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public tests()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Ljunit/framework/TestSuite;->fTests:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 278
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 279
    invoke-virtual {p0}, Ljunit/framework/TestSuite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 281
    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
