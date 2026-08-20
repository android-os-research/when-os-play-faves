.class public Lorg/junit/internal/management/ManagementFactory;
.super Ljava/lang/Object;
.source "ManagementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ManagementFactory$ThreadHolder;,
        Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;,
        Lorg/junit/internal/management/ManagementFactory$FactoryHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRuntimeMXBean()Lorg/junit/internal/management/RuntimeMXBean;
    .registers 1

    .line 68
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory$RuntimeHolder;->-$$Nest$sfgetRUNTIME_MX_BEAN()Lorg/junit/internal/management/RuntimeMXBean;

    move-result-object v0

    return-object v0
.end method

.method public static getThreadMXBean()Lorg/junit/internal/management/ThreadMXBean;
    .registers 1

    .line 75
    invoke-static {}, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->-$$Nest$sfgetTHREAD_MX_BEAN()Lorg/junit/internal/management/ThreadMXBean;

    move-result-object v0

    return-object v0
.end method
