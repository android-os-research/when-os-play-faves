.class public abstract Ljunit/framework/TestCase;
.super Ljunit/framework/Assert;
.source "TestCase.java"

# interfaces
.implements Ljunit/framework/Test;


# instance fields
.field private fName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 86
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 93
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public countTestCases()I
    .registers 2

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected createResult()Ljunit/framework/TestResult;
    .registers 2

    .line 107
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 203
    iget-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public run()Ljunit/framework/TestResult;
    .registers 2

    .line 116
    invoke-virtual {p0}, Ljunit/framework/TestCase;->createResult()Ljunit/framework/TestResult;

    move-result-object v0

    .line 117
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, v0}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    .line 118
    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 124
    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V

    .line 125
    return-void
.end method

.method public runBare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "exception":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 134
    :try_start_4
    invoke-virtual {p0}, Ljunit/framework/TestCase;->runTest()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 140
    :try_start_7
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 143
    :goto_a
    goto :goto_18

    .line 141
    :catchall_b
    move-exception v1

    .line 142
    .local v1, "tearingDown":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 144
    .end local v1    # "tearingDown":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    goto :goto_18

    .line 135
    :catchall_10
    move-exception v1

    .line 136
    .local v1, "running":Ljava/lang/Throwable;
    move-object v0, v1

    .line 140
    .end local v1    # "running":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_a

    .line 141
    :catchall_16
    move-exception v1

    .line 142
    .local v1, "tearingDown":Ljava/lang/Throwable;
    goto :goto_f

    .line 145
    .end local v1    # "tearingDown":Ljava/lang/Throwable;
    :goto_18
    if-nez v0, :cond_1b

    .line 146
    return-void

    .line 145
    :cond_1b
    throw v0
.end method

.method protected runTest()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 152
    const-string v0, "Method \""

    iget-object v1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    const-string v2, "TestCase.fName cannot be null"

    invoke-static {v2, v1}, Ljunit/framework/TestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    const/4 v1, 0x0

    .line 159
    .local v1, "runMethod":Ljava/lang/reflect/Method;
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_18} :catch_1a

    move-object v1, v2

    .line 162
    goto :goto_37

    .line 160
    :catch_1a
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljunit/framework/TestCase;->fail(Ljava/lang/String;)V

    .line 163
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_37
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" should be public"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljunit/framework/TestCase;->fail(Ljava/lang/String;)V

    .line 168
    :cond_5d
    const/4 v0, 0x0

    :try_start_5e
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_63} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_63} :catch_65

    .line 177
    nop

    .line 178
    return-void

    .line 174
    :catch_65
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 176
    throw v0

    .line 170
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_6a
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 172
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 211
    return-void
.end method

.method protected setUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    return-void
.end method

.method protected tearDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
