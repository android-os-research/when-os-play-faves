.class public final Lorg/apache/http/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    invoke-static {}, Lorg/apache/http/util/ExceptionUtils;->getInitCauseMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 3

    .line 64
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 65
    .local v0, "paramsClasses":[Ljava/lang/Class;
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_10} :catch_11

    return-object v1

    .line 66
    .end local v0    # "paramsClasses":[Ljava/lang/Class;
    :catch_11
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 78
    sget-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_f

    .line 80
    const/4 v1, 0x1

    :try_start_5
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    .line 83
    goto :goto_f

    .line 81
    :catch_e
    move-exception v0

    .line 85
    :cond_f
    :goto_f
    return-void
.end method
