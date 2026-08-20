.class public abstract Landroid/test/ActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ActivityTestCase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected scrubClass(Ljava/lang/Class;)V
    .registers 10
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

    .line 67
    .local p1, "testCaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "Error: Could not nullify field!"

    const-string v1, "TestCase"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 68
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_47

    aget-object v5, v2, v4

    .line 69
    .local v5, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    .line 70
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_44

    .line 71
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_44

    .line 73
    const/4 v7, 0x1

    :try_start_2f
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const/4 v7, 0x0

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_37

    .line 77
    goto :goto_3b

    .line 75
    :catch_37
    move-exception v7

    .line 76
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3b
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_44

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 84
    :cond_47
    return-void
.end method

.method protected setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "testActivity"    # Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Landroid/test/ActivityTestCase;->mActivity:Landroid/app/Activity;

    .line 53
    return-void
.end method
