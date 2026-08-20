.class public Lcom/android/server/am/KillPolicyManager$SwappinessController;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SwappinessController"
.end annotation


# static fields
.field public static final SWAPPINESS_PROPERTY_KEY:Ljava/lang/String; = "sys.sysctl.swappiness"


# instance fields
.field public mCurrentValue:I

.field public final mDefaultValue:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3676
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getSwappinessFromProc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    .line 3677
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwappinessController() - default value: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getSwappinessFromProc()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3683
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$ProcFileInfoGetter;->getCurSwappiness()I

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefaultValue()I
    .registers 1

    .line 3702
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    return p0
.end method

.method public getValue()I
    .registers 1

    .line 3698
    iget p0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    return p0
.end method

.method public setValue(I)V
    .registers 5

    .line 3687
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    const-string v1, "ActivityManager"

    if-gt p1, v0, :cond_d

    const-string p1, "SwappinessController() - new value is lower than default value, go back to default"

    .line 3688
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    iget p1, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    .line 3692
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.sysctl.swappiness"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwappinessController() - changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3694
    iput p1, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    return-void
.end method
