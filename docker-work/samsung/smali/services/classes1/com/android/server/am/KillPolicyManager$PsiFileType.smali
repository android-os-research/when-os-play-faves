.class public final enum Lcom/android/server/am/KillPolicyManager$PsiFileType;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PsiFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$PsiFileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

.field public static final enum MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 3550
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v1, "IO"

    const/4 v2, 0x0

    const-string v3, "/proc/pressure/io"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 3551
    new-instance v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v3, "MEMORY"

    const/4 v4, 0x1

    const-string v5, "/proc/pressure/memory"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    .line 3552
    new-instance v3, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const-string v5, "CPU"

    const/4 v6, 0x2

    const-string v7, "/proc/pressure/cpu"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/am/KillPolicyManager$PsiFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 3549
    sput-object v5, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

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

    .line 3556
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3557
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .registers 2

    .line 3549
    const-class v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .registers 1

    .line 3549
    sget-object v0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->$VALUES:[Lcom/android/server/am/KillPolicyManager$PsiFileType;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$PsiFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$PsiFileType;

    return-object v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .registers 1

    .line 3561
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$PsiFileType;->mPath:Ljava/lang/String;

    return-object p0
.end method
