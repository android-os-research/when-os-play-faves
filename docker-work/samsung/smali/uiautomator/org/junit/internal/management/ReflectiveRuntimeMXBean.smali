.class final Lorg/junit/internal/management/ReflectiveRuntimeMXBean;
.super Ljava/lang/Object;
.source "ReflectiveRuntimeMXBean.java"

# interfaces
.implements Lorg/junit/internal/management/RuntimeMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;
    }
.end annotation


# instance fields
.field private final runtimeMxBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "runtimeMxBean"    # Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;->runtimeMxBean:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public getInputArguments()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->-$$Nest$sfgetgetInputArgumentsMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 46
    :try_start_6
    invoke-static {}, Lorg/junit/internal/management/ReflectiveRuntimeMXBean$Holder;->-$$Nest$sfgetgetInputArgumentsMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/internal/management/ReflectiveRuntimeMXBean;->runtimeMxBean:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_15} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_15} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_15} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_15} :catch_16

    return-object v0

    .line 53
    :catch_16
    move-exception v0

    goto :goto_1d

    .line 51
    :catch_18
    move-exception v0

    goto :goto_1d

    .line 49
    :catch_1a
    move-exception v0

    goto :goto_1d

    .line 47
    :catch_1c
    move-exception v0

    .line 57
    :cond_1d
    :goto_1d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
