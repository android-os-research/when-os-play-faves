.class final enum Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemoryLoggingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public static final enum IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

.field public static final enum PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 3789
    new-instance v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    const-string v1, "IdleDump"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->IdleDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    .line 3790
    new-instance v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    const-string v3, "PmmDump"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->PmmDump:Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3788
    sput-object v3, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3788
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
    .registers 2

    .line 3788
    const-class v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;
    .registers 1

    .line 3788
    sget-object v0, Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$MemoryLoggingType;

    return-object v0
.end method
