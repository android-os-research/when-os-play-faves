.class public Landroid/test/InstrumentationTestCase;
.super Ljunit/framework/TestCase;
.source "InstrumentationTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mInstrumentation:Landroid/app/Instrumentation;


# direct methods
.method static bridge synthetic -$$Nest$mrunMethod(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;I)V
    .registers 4
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 212
    return-void
.end method

.method private runMethod(Ljava/lang/reflect/Method;IZ)V
    .registers 10
    .param p1, "runMethod"    # Ljava/lang/reflect/Method;
    .param p2, "tolerance"    # I
    .param p3, "isRepetitive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 215
    const-string v0, "currentiterations"

    const/4 v1, 0x0

    .line 217
    .local v1, "exception":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 220
    .local v2, "runCount":I
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_6
    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_c} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_23
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    .line 221
    const/4 v1, 0x0

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 231
    if-eqz p3, :cond_45

    .line 232
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v3, "iterations":Landroid/os/Bundle;
    :goto_16
    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 235
    .end local v3    # "iterations":Landroid/os/Bundle;
    goto :goto_45

    .line 229
    :catchall_21
    move-exception v3

    goto :goto_4f

    .line 225
    :catch_23
    move-exception v3

    .line 226
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_24
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    .line 227
    move-object v1, v3

    .line 229
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    add-int/lit8 v2, v2, 0x1

    .line 231
    if-eqz p3, :cond_45

    .line 232
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_16

    .line 222
    :catch_32
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_33
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 224
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_21

    move-object v1, v5

    .line 229
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    add-int/lit8 v2, v2, 0x1

    .line 231
    if-eqz p3, :cond_45

    .line 232
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_16

    .line 237
    :cond_45
    :goto_45
    if-ge v2, p2, :cond_4b

    if-nez p3, :cond_4

    if-nez v1, :cond_4

    .line 239
    :cond_4b
    if-nez v1, :cond_4e

    .line 242
    return-void

    .line 240
    :cond_4e
    throw v1

    .line 229
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    .line 231
    if-eqz p3, :cond_62

    .line 232
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v5, "iterations":Landroid/os/Bundle;
    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 236
    .end local v5    # "iterations":Landroid/os/Bundle;
    :cond_62
    throw v3
.end method


# virtual methods
.method public getInstrumentation()Landroid/app/Instrumentation;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    return-object v0
.end method

.method public injectInsrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    .line 68
    return-void
.end method

.method public injectInstrumentation(Landroid/app/Instrumentation;)V
    .registers 2
    .param p1, "instrumentation"    # Landroid/app/Instrumentation;

    .line 53
    iput-object p1, p0, Landroid/test/InstrumentationTestCase;->mInstrumentation:Landroid/app/Instrumentation;

    .line 54
    return-void
.end method

.method public final launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .line 99
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p3, :cond_c

    .line 101
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    :cond_c
    invoke-virtual {p0, p1, p2, v0}, Landroid/test/InstrumentationTestCase;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public final launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Intent;",
            ")TT;"
        }
    .end annotation

    .line 123
    .local p2, "activityCls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, "activity":Landroid/app/Activity;, "TT;"
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 127
    return-object v0
.end method

.method protected runTest()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 161
    const-string v0, "Method \""

    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "fName":Ljava/lang/String;
    invoke-static {v1}, Landroid/test/InstrumentationTestCase;->assertNotNull(Ljava/lang/Object;)V

    .line 163
    const/4 v2, 0x0

    .line 169
    .local v2, "method":Ljava/lang/reflect/Method;
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_16
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_16} :catch_18

    move-object v2, v3

    .line 172
    goto :goto_33

    .line 170
    :catch_18
    move-exception v3

    .line 171
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    .line 174
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :goto_33
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-nez v3, :cond_57

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" should be public"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/InstrumentationTestCase;->fail(Ljava/lang/String;)V

    .line 178
    :cond_57
    const/4 v0, 0x1

    .line 179
    .local v0, "runCount":I
    const/4 v3, 0x0

    .line 180
    .local v3, "isRepetitive":Z
    const-class v4, Landroid/test/FlakyTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 181
    const-class v4, Landroid/test/FlakyTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/test/FlakyTest;

    invoke-interface {v4}, Landroid/test/FlakyTest;->tolerance()I

    move-result v0

    goto :goto_83

    .line 182
    :cond_6e
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 183
    const-class v4, Landroid/test/RepetitiveTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/test/RepetitiveTest;

    invoke-interface {v4}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v0

    .line 184
    const/4 v3, 0x1

    .line 187
    :cond_83
    :goto_83
    const-class v4, Landroid/test/UiThreadTest;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 188
    move v8, v0

    .line 189
    .local v8, "tolerance":I
    move v9, v3

    .line 190
    .local v9, "repetitive":Z
    move-object v7, v2

    .line 191
    .local v7, "testMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 192
    .local v4, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v11

    new-instance v12, Landroid/test/InstrumentationTestCase$2;

    move-object v5, v12

    move-object v6, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v10}, Landroid/test/InstrumentationTestCase$2;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/reflect/Method;IZ[Ljava/lang/Throwable;)V

    invoke-virtual {v11, v12}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 201
    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-nez v6, :cond_a6

    .line 204
    .end local v4    # "exceptions":[Ljava/lang/Throwable;
    .end local v7    # "testMethod":Ljava/lang/reflect/Method;
    .end local v8    # "tolerance":I
    .end local v9    # "repetitive":Z
    goto :goto_ac

    .line 202
    .restart local v4    # "exceptions":[Ljava/lang/Throwable;
    .restart local v7    # "testMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "tolerance":I
    .restart local v9    # "repetitive":Z
    :cond_a6
    aget-object v5, v4, v5

    throw v5

    .line 205
    .end local v4    # "exceptions":[Ljava/lang/Throwable;
    .end local v7    # "testMethod":Ljava/lang/reflect/Method;
    .end local v8    # "tolerance":I
    .end local v9    # "repetitive":Z
    :cond_a9
    invoke-direct {p0, v2, v0, v3}, Landroid/test/InstrumentationTestCase;->runMethod(Ljava/lang/reflect/Method;IZ)V

    .line 207
    :goto_ac
    return-void
.end method

.method public runTestOnUiThread(Ljava/lang/Runnable;)V
    .registers 5
    .param p1, "r"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Throwable;

    .line 141
    .local v0, "exceptions":[Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    new-instance v2, Landroid/test/InstrumentationTestCase$1;

    invoke-direct {v2, p0, p1, v0}, Landroid/test/InstrumentationTestCase$1;-><init>(Landroid/test/InstrumentationTestCase;Ljava/lang/Runnable;[Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 150
    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-nez v2, :cond_15

    .line 153
    return-void

    .line 151
    :cond_15
    aget-object v1, v0, v1

    throw v1
.end method

.method public sendKeys(Ljava/lang/String;)V
    .registers 15
    .param p1, "keysSequence"    # Ljava/lang/String;

    .line 254
    const-string v0, "Unknown keycode: KEYCODE_"

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "keys":[Ljava/lang/String;
    array-length v2, v1

    .line 257
    .local v2, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    .line 259
    .local v3, "instrumentation":Landroid/app/Instrumentation;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v2, :cond_a3

    .line 260
    aget-object v5, v1, v4

    .line 261
    .local v5, "key":Ljava/lang/String;
    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 265
    .local v6, "repeater":I
    const/4 v7, -0x1

    const-string v8, "ActivityTestCase"

    if-ne v6, v7, :cond_1f

    const/4 v9, 0x1

    goto :goto_28

    :cond_1f
    const/4 v9, 0x0

    :try_start_20
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_28} :catch_87

    .line 269
    .local v9, "keyCount":I
    :goto_28
    nop

    .line 271
    if-eq v6, v7, :cond_31

    .line 272
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    :cond_31
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_32
    if-ge v7, v9, :cond_9f

    .line 277
    :try_start_34
    const-class v10, Landroid/view/KeyEvent;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEYCODE_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 278
    .local v10, "keyCodeField":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11
    :try_end_52
    .catch Ljava/lang/NoSuchFieldException; {:try_start_34 .. :try_end_52} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_52} :catch_5b

    .line 280
    .local v11, "keyCode":I
    :try_start_52
    invoke-virtual {v3, v11}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_55} :catch_56
    .catch Ljava/lang/NoSuchFieldException; {:try_start_52 .. :try_end_55} :catch_71
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_55} :catch_5b

    .line 285
    goto :goto_57

    .line 281
    :catch_56
    move-exception v12

    .line 292
    .end local v10    # "keyCodeField":Ljava/lang/reflect/Field;
    .end local v11    # "keyCode":I
    :goto_57
    nop

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 289
    :catch_5b
    move-exception v10

    .line 290
    .local v10, "e":Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    goto :goto_9f

    .line 286
    .end local v10    # "e":Ljava/lang/IllegalAccessException;
    :catch_71
    move-exception v10

    .line 287
    .local v10, "e":Ljava/lang/NoSuchFieldException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    goto :goto_9f

    .line 266
    .end local v7    # "j":I
    .end local v9    # "keyCount":I
    .end local v10    # "e":Ljava/lang/NoSuchFieldException;
    :catch_87
    move-exception v7

    .line 267
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid repeat count: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    nop

    .line 259
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "repeater":I
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e

    .line 296
    .end local v4    # "i":I
    :cond_a3
    invoke-virtual {v3}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 297
    return-void
.end method

.method public varargs sendKeys([I)V
    .registers 6
    .param p1, "keys"    # [I

    .line 306
    array-length v0, p1

    .line 307
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 309
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_12

    .line 311
    :try_start_8
    aget v3, p1, v2

    invoke-virtual {v1, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_d} :catch_e

    .line 316
    goto :goto_f

    .line 312
    :catch_e
    move-exception v3

    .line 309
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 319
    .end local v2    # "i":I
    :cond_12
    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 320
    return-void
.end method

.method public varargs sendRepeatedKeys([I)V
    .registers 9
    .param p1, "keys"    # [I

    .line 330
    array-length v0, p1

    .line 331
    .local v0, "count":I
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 336
    invoke-virtual {p0}, Landroid/test/InstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    .line 338
    .local v1, "instrumentation":Landroid/app/Instrumentation;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_21

    .line 339
    aget v3, p1, v2

    .line 340
    .local v3, "keyCount":I
    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    .line 341
    .local v4, "keyCode":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_14
    if-ge v5, v3, :cond_1e

    .line 343
    :try_start_16
    invoke-virtual {v1, v4}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 348
    goto :goto_1b

    .line 344
    :catch_1a
    move-exception v6

    .line 341
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 338
    .end local v3    # "keyCount":I
    .end local v4    # "keyCode":I
    .end local v5    # "j":I
    :cond_1e
    add-int/lit8 v2, v2, 0x2

    goto :goto_b

    .line 352
    .end local v2    # "i":I
    :cond_21
    invoke-virtual {v1}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 353
    return-void

    .line 332
    .end local v1    # "instrumentation":Landroid/app/Instrumentation;
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The size of the keys array must be a multiple of 2"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected tearDown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 365
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->runFinalization()V

    .line 366
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 367
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 368
    return-void
.end method
