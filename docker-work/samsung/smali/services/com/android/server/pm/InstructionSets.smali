.class public Lcom/android/server/pm/InstructionSets;
.super Ljava/lang/Object;
.source "InstructionSets.java"


# static fields
.field public static final PREFERRED_INSTRUCTION_SET:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 38
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 39
    invoke-static {v0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllDexCodeInstructionSets()[Ljava/lang/String;
    .registers 4

    .line 82
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_15

    .line 84
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 85
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 87
    :cond_15
    invoke-static {v1}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllInstructionSets()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    array-length v2, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_1e

    aget-object v4, v0, v3

    .line 95
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 97
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    return-object v1
.end method

.method public static getAppDexInstructionSets(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1f

    if-eqz p1, :cond_16

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 45
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    .line 46
    invoke-static {p1}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    return-object v2

    :cond_16
    new-array p1, v1, [Ljava/lang/String;

    .line 49
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    :cond_1f
    new-array p0, v1, [Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    return-object p0
.end method

.method public static getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ro.dalvik.vm.isa."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object p0, v0

    :goto_1e
    return-object p0
.end method

.method public static getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 72
    array-length v1, p0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_16

    aget-object v3, p0, v2

    .line 73
    invoke-static {v3}, Lcom/android/server/pm/InstructionSets;->getDexCodeInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 75
    :cond_16
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getPreferredInstructionSet()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/pm/InstructionSets;->PREFERRED_INSTRUCTION_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static getPrimaryInstructionSet(Lcom/android/server/pm/PackageAbiHelper$Abis;)Ljava/lang/String;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/pm/PackageAbiHelper$Abis;->primary:Ljava/lang/String;

    if-nez p0, :cond_9

    .line 109
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getPreferredInstructionSet()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_9
    invoke-static {p0}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
