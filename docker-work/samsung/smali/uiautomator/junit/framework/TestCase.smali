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

    .line 87
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 95
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public static assertEquals(BB)V
    .registers 2
    .param p0, "expected"    # B
    .param p1, "actual"    # B

    .line 339
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(BB)V

    .line 340
    return-void
.end method

.method public static assertEquals(CC)V
    .registers 2
    .param p0, "expected"    # C
    .param p1, "actual"    # C

    .line 354
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(CC)V

    .line 355
    return-void
.end method

.method public static assertEquals(DDD)V
    .registers 6
    .param p0, "expected"    # D
    .param p2, "actual"    # D
    .param p4, "delta"    # D

    .line 277
    invoke-static/range {p0 .. p5}, Ljunit/framework/Assert;->assertEquals(DDD)V

    .line 278
    return-void
.end method

.method public static assertEquals(FFF)V
    .registers 3
    .param p0, "expected"    # F
    .param p1, "actual"    # F
    .param p2, "delta"    # F

    .line 294
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(FFF)V

    .line 295
    return-void
.end method

.method public static assertEquals(II)V
    .registers 2
    .param p0, "expected"    # I
    .param p1, "actual"    # I

    .line 384
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 385
    return-void
.end method

.method public static assertEquals(JJ)V
    .registers 4
    .param p0, "expected"    # J
    .param p2, "actual"    # J

    .line 309
    invoke-static {p0, p1, p2, p3}, Ljunit/framework/Assert;->assertEquals(JJ)V

    .line 310
    return-void
.end method

.method public static assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 246
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;BB)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .line 332
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;BB)V

    .line 333
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;CC)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # C
    .param p2, "actual"    # C

    .line 347
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;CC)V

    .line 348
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;DDD)V
    .registers 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # D
    .param p3, "actual"    # D
    .param p5, "delta"    # D

    .line 269
    invoke-static/range {p0 .. p6}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;DDD)V

    .line 270
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;FFF)V
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # F
    .param p2, "actual"    # F
    .param p3, "delta"    # F

    .line 286
    invoke-static {p0, p1, p2, p3}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;FFF)V

    .line 287
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;II)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    .line 377
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;II)V

    .line 378
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;JJ)V
    .registers 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # J
    .param p3, "actual"    # J

    .line 302
    invoke-static {p0, p1, p2, p3, p4}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;JJ)V

    .line 303
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 238
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .line 260
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    .line 253
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;SS)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # S
    .param p2, "actual"    # S

    .line 362
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;SS)V

    .line 363
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;ZZ)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Z
    .param p2, "actual"    # Z

    .line 317
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    .line 318
    return-void
.end method

.method public static assertEquals(SS)V
    .registers 2
    .param p0, "expected"    # S
    .param p1, "actual"    # S

    .line 369
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(SS)V

    .line 370
    return-void
.end method

.method public static assertEquals(ZZ)V
    .registers 2
    .param p0, "expected"    # Z
    .param p1, "actual"    # Z

    .line 324
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 325
    return-void
.end method

.method public static assertFalse(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 208
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public static assertFalse(Z)V
    .registers 1
    .param p0, "condition"    # Z

    .line 216
    invoke-static {p0}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 217
    return-void
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .registers 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 391
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 392
    return-void
.end method

.method public static assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 399
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method public static assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 451
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 452
    return-void
.end method

.method public static assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 443
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 444
    return-void
.end method

.method public static assertNull(Ljava/lang/Object;)V
    .registers 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 410
    invoke-static {p0}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 411
    return-void
.end method

.method public static assertNull(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;

    .line 418
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 419
    return-void
.end method

.method public static assertSame(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2
    .param p0, "expected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    .line 434
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertSame(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public static assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 426
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->assertSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method public static assertTrue(Ljava/lang/String;Z)V
    .registers 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "condition"    # Z

    .line 192
    invoke-static {p0, p1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public static assertTrue(Z)V
    .registers 1
    .param p0, "condition"    # Z

    .line 200
    invoke-static {p0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 201
    return-void
.end method

.method public static fail()V
    .registers 0

    .line 230
    invoke-static {}, Ljunit/framework/Assert;->fail()V

    .line 231
    return-void
.end method

.method public static fail(Ljava/lang/String;)V
    .registers 1
    .param p0, "message"    # Ljava/lang/String;

    .line 223
    invoke-static {p0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 463
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 464
    return-void
.end method

.method public static failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 459
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->failNotSame(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public static failSame(Ljava/lang/String;)V
    .registers 1
    .param p0, "message"    # Ljava/lang/String;

    .line 455
    invoke-static {p0}, Ljunit/framework/Assert;->failSame(Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public static format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    .line 467
    invoke-static {p0, p1, p2}, Ljunit/framework/Assert;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countTestCases()I
    .registers 2

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method protected createResult()Ljunit/framework/TestResult;
    .registers 2

    .line 111
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 498
    iget-object v0, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    return-object v0
.end method

.method public run()Ljunit/framework/TestResult;
    .registers 2

    .line 121
    invoke-virtual {p0}, Ljunit/framework/TestCase;->createResult()Ljunit/framework/TestResult;

    move-result-object v0

    .line 122
    .local v0, "result":Ljunit/framework/TestResult;
    invoke-virtual {p0, v0}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    .line 123
    return-object v0
.end method

.method public run(Ljunit/framework/TestResult;)V
    .registers 2
    .param p1, "result"    # Ljunit/framework/TestResult;

    .line 130
    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->run(Ljunit/framework/TestCase;)V

    .line 131
    return-void
.end method

.method public runBare()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, "exception":Ljava/lang/Throwable;
    invoke-virtual {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 142
    :try_start_4
    invoke-virtual {p0}, Ljunit/framework/TestCase;->runTest()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    .line 147
    :try_start_7
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_b

    .line 150
    :goto_a
    goto :goto_18

    .line 148
    :catchall_b
    move-exception v1

    .line 149
    .local v1, "tearingDown":Ljava/lang/Throwable;
    if-nez v0, :cond_f

    move-object v0, v1

    .line 151
    .end local v1    # "tearingDown":Ljava/lang/Throwable;
    :cond_f
    :goto_f
    goto :goto_18

    .line 143
    :catchall_10
    move-exception v1

    .line 144
    .local v1, "running":Ljava/lang/Throwable;
    move-object v0, v1

    .line 147
    .end local v1    # "running":Ljava/lang/Throwable;
    :try_start_12
    invoke-virtual {p0}, Ljunit/framework/TestCase;->tearDown()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_a

    .line 148
    :catchall_16
    move-exception v1

    .line 149
    .local v1, "tearingDown":Ljava/lang/Throwable;
    goto :goto_f

    .line 152
    .end local v1    # "tearingDown":Ljava/lang/Throwable;
    :goto_18
    if-nez v0, :cond_1b

    .line 153
    return-void

    .line 152
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

    .line 161
    const-string v0, "Method \""

    iget-object v1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    const-string v2, "TestCase.fName cannot be null"

    invoke-static {v2, v1}, Ljunit/framework/TestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const/4 v1, 0x0

    .line 168
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

    .line 171
    goto :goto_37

    .line 169
    :catch_1a
    move-exception v2

    .line 170
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

    .line 172
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_37
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 173
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

    .line 177
    :cond_5d
    const/4 v0, 0x0

    :try_start_5e
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5e .. :try_end_63} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5e .. :try_end_63} :catch_65

    .line 184
    nop

    .line 185
    return-void

    .line 181
    :catch_65
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 183
    throw v0

    .line 178
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_6a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 180
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 507
    iput-object p1, p0, Ljunit/framework/TestCase;->fName:Ljava/lang/String;

    .line 508
    return-void
.end method

.method protected setUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    return-void
.end method

.method protected tearDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 482
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 489
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
