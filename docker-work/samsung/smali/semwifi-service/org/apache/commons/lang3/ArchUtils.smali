.class public Lorg/apache/commons/lang3/ArchUtils;
.super Ljava/lang/Object;
.source "ArchUtils.java"


# static fields
.field private static final ARCH_TO_PROCESSOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/lang3/arch/Processor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GU7PuivOKi6_z_1oqZeauKxL3bY(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lorg/apache/commons/lang3/ArchUtils;->lambda$addProcessors$0(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    .line 40
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V
    .registers 4

    .line 90
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 93
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 91
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already exists in processor map"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static varargs addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V
    .registers 3

    .line 104
    invoke-static {p1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/ArchUtils$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/lang3/arch/Processor;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getProcessor()Lorg/apache/commons/lang3/arch/Processor;
    .registers 1

    .line 118
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->OS_ARCH:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/ArchUtils;->getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessor(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor;
    .registers 2

    .line 129
    sget-object v0, Lorg/apache/commons/lang3/ArchUtils;->ARCH_TO_PROCESSOR:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor;

    return-object p0
.end method

.method private static init()V
    .registers 0

    .line 44
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_32Bit()V

    .line 45
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_X86_64Bit()V

    .line 46
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_32Bit()V

    .line 47
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_IA64_64Bit()V

    .line 48
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_32Bit()V

    .line 49
    invoke-static {}, Lorg/apache/commons/lang3/ArchUtils;->init_PPC_64Bit()V

    return-void
.end method

.method private static init_IA64_32Bit()V
    .registers 3

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ia64_32"

    const-string v2, "ia64n"

    .line 64
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_IA64_64Bit()V
    .registers 3

    .line 68
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ia64"

    const-string v2, "ia64w"

    .line 69
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_32Bit()V
    .registers 6

    .line 73
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ppc"

    const-string v2, "power"

    const-string v3, "powerpc"

    const-string v4, "power_pc"

    const-string v5, "power_rs"

    .line 74
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_PPC_64Bit()V
    .registers 6

    .line 78
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "ppc64"

    const-string v2, "power64"

    const-string v3, "powerpc64"

    const-string v4, "power_pc64"

    const-string v5, "power_rs64"

    .line 79
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_32Bit()V
    .registers 9

    .line 53
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_32:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v3, "x86"

    const-string v4, "i386"

    const-string v5, "i486"

    const-string v6, "i586"

    const-string v7, "i686"

    const-string v8, "pentium"

    .line 54
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static init_X86_64Bit()V
    .registers 5

    .line 58
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor;

    sget-object v1, Lorg/apache/commons/lang3/arch/Processor$Arch;->BIT_64:Lorg/apache/commons/lang3/arch/Processor$Arch;

    sget-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/arch/Processor;-><init>(Lorg/apache/commons/lang3/arch/Processor$Arch;Lorg/apache/commons/lang3/arch/Processor$Type;)V

    const-string v1, "x86_64"

    const-string v2, "amd64"

    const-string v3, "em64t"

    const-string v4, "universal"

    .line 59
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArchUtils;->addProcessors(Lorg/apache/commons/lang3/arch/Processor;[Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$addProcessors$0(Lorg/apache/commons/lang3/arch/Processor;Ljava/lang/String;)V
    .registers 2

    .line 104
    invoke-static {p1, p0}, Lorg/apache/commons/lang3/ArchUtils;->addProcessor(Ljava/lang/String;Lorg/apache/commons/lang3/arch/Processor;)V

    return-void
.end method
