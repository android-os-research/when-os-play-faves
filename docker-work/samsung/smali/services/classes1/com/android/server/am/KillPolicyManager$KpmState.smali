.class public final enum Lcom/android/server/am/KillPolicyManager$KpmState;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KpmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$KpmState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    .line 1835
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1836
    new-instance v1, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v3, "LIGHT"

    const/4 v4, 0x1

    const-string v5, "Light"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1837
    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    const-string v7, "Normal"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1838
    new-instance v5, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v7, "HEAVY"

    const/4 v8, 0x3

    const-string v9, "Heavy"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1839
    new-instance v7, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v9, "CRITICAL"

    const/4 v10, 0x4

    const-string v11, "Critical"

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 1834
    sput-object v9, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1843
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1844
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 2

    .line 1834
    const-class v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 1

    .line 1834
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$KpmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 1848
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    return-object p0
.end method
