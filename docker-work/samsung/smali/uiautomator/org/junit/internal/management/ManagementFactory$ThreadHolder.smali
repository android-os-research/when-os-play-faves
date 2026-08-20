.class final Lorg/junit/internal/management/ManagementFactory$ThreadHolder;
.super Ljava/lang/Object;
.source "ManagementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/management/ManagementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadHolder"
.end annotation


# static fields
.field private static final THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTHREAD_MX_BEAN()Lorg/junit/internal/management/ThreadMXBean;
    .registers 1

    sget-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 55
    nop

    .line 56
    const-string v0, "getThreadMXBean"

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$FactoryHolder;->getBeanObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/management/ManagementFactory$ThreadHolder;->THREAD_MX_BEAN:Lorg/junit/internal/management/ThreadMXBean;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final getBean(Ljava/lang/Object;)Lorg/junit/internal/management/ThreadMXBean;
    .registers 2
    .param p0, "threadMxBean"    # Ljava/lang/Object;

    .line 59
    if-eqz p0, :cond_8

    .line 60
    new-instance v0, Lorg/junit/internal/management/ReflectiveThreadMXBean;

    invoke-direct {v0, p0}, Lorg/junit/internal/management/ReflectiveThreadMXBean;-><init>(Ljava/lang/Object;)V

    goto :goto_d

    :cond_8
    new-instance v0, Lorg/junit/internal/management/FakeThreadMXBean;

    invoke-direct {v0}, Lorg/junit/internal/management/FakeThreadMXBean;-><init>()V

    .line 59
    :goto_d
    return-object v0
.end method
