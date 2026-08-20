.class final Lorg/junit/internal/management/ManagementFactory$FactoryHolder;
.super Ljava/lang/Object;
.source "ManagementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ManagementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FactoryHolder"
.end annotation


# static fields
.field private static final MANAGEMENT_FACTORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "managementFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v1, "java.lang.management.ManagementFactory"

    invoke-static {v1}, Lorg/junit/internal/Classes;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    .line 20
    goto :goto_a

    .line 18
    :catch_9
    move-exception v1

    .line 21
    :goto_a
    sput-object v0, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->MANAGEMENT_FACTORY_CLASS:Ljava/lang/Class;

    .line 22
    .end local v0    # "managementFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBeanObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p0, "methodName"    # Ljava/lang/String;

    .line 25
    sget-object v0, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->MANAGEMENT_FACTORY_CLASS:Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 27
    const/4 v2, 0x0

    :try_start_6
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_12} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_12} :catch_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_12} :catch_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_12} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v0

    .line 36
    :catch_13
    move-exception v0

    goto :goto_1c

    .line 34
    :catch_15
    move-exception v0

    goto :goto_1c

    .line 32
    :catch_17
    move-exception v0

    goto :goto_1c

    .line 30
    :catch_19
    move-exception v0

    goto :goto_1c

    .line 28
    :catch_1b
    move-exception v0

    .line 40
    :cond_1c
    :goto_1c
    return-object v1
.end method
