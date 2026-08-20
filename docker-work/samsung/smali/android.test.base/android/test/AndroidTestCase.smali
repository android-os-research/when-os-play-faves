.class public Landroid/test/AndroidTestCase;
.super Ljunit/framework/TestCase;
.source "AndroidTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mTestContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljunit/framework/TestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public assertActivityRequiresPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    :try_start_d
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected security exception for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 111
    goto :goto_59

    .line 107
    :catch_2b
    move-exception v1

    .line 108
    .local v1, "expected":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "security exception\'s error message."

    invoke-static {v3, v2}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error message should contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 109
    invoke-static {v2, v3}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 112
    .end local v1    # "expected":Ljava/lang/SecurityException;
    :goto_59
    return-void
.end method

.method public assertReadingContentUriRequiresPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected SecurityException requiring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_26} :catch_27

    .line 130
    goto :goto_55

    .line 126
    :catch_27
    move-exception v0

    .line 127
    .local v0, "expected":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "security exception\'s error message."

    invoke-static {v2, v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error message should contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 128
    invoke-static {v1, v2}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 131
    .end local v0    # "expected":Ljava/lang/SecurityException;
    :goto_55
    return-void
.end method

.method public assertWritingContentUriRequiresPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/test/AndroidTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected SecurityException requiring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/test/AndroidTestCase;->fail(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_26} :catch_27

    .line 150
    goto :goto_63

    .line 145
    :catch_27
    move-exception v0

    .line 146
    .local v0, "expected":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "security exception\'s error message."

    invoke-static {v2, v1}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error message should contain \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\". Got: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 147
    invoke-static {v1, v2}, Landroid/test/AndroidTestCase;->assertTrue(Ljava/lang/String;Z)V

    .line 151
    .end local v0    # "expected":Ljava/lang/SecurityException;
    :goto_63
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTestContext()Landroid/content/Context;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/test/AndroidTestCase;->mTestContext:Landroid/content/Context;

    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 165
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Error: Could not nullify field!"

    const-string v1, "TestCase"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 166
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_3f

    aget-object v5, v2, v4

    .line 167
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 168
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 170
    const/4 v6, 0x1

    :try_start_27
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 174
    goto :goto_33

    .line 172
    :catch_2f
    move-exception v6

    .line 173
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_33
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3c

    .line 177
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v5    # "field":Ljava/lang/reflect/Field;
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 181
    :cond_3f
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    iput-object p1, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public setTestContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Landroid/test/AndroidTestCase;->mTestContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method protected setUp()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-super {p0}, Ljunit/framework/TestCase;->setUp()V

    .line 47
    return-void
.end method

.method protected tearDown()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-super {p0}, Ljunit/framework/TestCase;->tearDown()V

    .line 52
    return-void
.end method

.method public testAndroidTestCaseSetupProperly()V
    .registers 3
    .annotation runtime Landroid/test/suitebuilder/annotation/Suppress;
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/test/AndroidTestCase;->mContext:Landroid/content/Context;

    const-string v1, "Context is null. setContext should be called before tests are run"

    invoke-static {v1, v0}, Landroid/test/AndroidTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    return-void
.end method
