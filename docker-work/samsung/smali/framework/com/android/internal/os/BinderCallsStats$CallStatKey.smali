.class public Lcom/android/internal/os/BinderCallsStats$CallStatKey;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStatKey"
.end annotation


# instance fields
.field public blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist callingUid:I

.field public blacklist packageName:Ljava/lang/String;

.field private blacklist screenInteractive:Z

.field public blacklist transactionCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 1627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1636
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1637
    return v0

    .line 1640
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    .line 1641
    .local v1, "key":Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    const/4 v2, 0x1

    .line 1642
    .local v2, "samePackage":Z
    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 1643
    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1645
    :cond_12
    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    if-ne v3, v4, :cond_31

    if-eqz v2, :cond_31

    iget v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    iget v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    if-ne v3, v4, :cond_31

    iget-boolean v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    iget-boolean v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-ne v3, v4, :cond_31

    iget-object v3, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    iget-object v4, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1648
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    .line 1645
    :goto_32
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1653
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1654
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    add-int/2addr v1, v2

    .line 1655
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    add-int/2addr v0, v2

    .line 1656
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-eqz v2, :cond_19

    const/16 v2, 0x4cf

    goto :goto_1b

    :cond_19
    const/16 v2, 0x4d5

    :goto_1b
    add-int/2addr v1, v2

    .line 1657
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
