.class public final Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DesiredDisplayModeSpecs"
.end annotation


# instance fields
.field public allowGroupSwitching:Z

.field public final appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

.field public baseModeId:I

.field public final primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 971
    new-instance v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-direct {v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    return-void
.end method

.method public constructor <init>(IZLandroid/hardware/display/DisplayManagerInternal$RefreshRateRange;Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;)V
    .registers 5

    .line 977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 979
    iput-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 980
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    .line 981
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 5

    .line 1037
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 1038
    iget-boolean v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    .line 1039
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v2, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iput v2, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 1040
    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iput v1, v0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 1041
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object p1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    .line 1042
    iget p1, p1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    iput p1, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1005
    :cond_4
    instance-of v1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1009
    :cond_a
    check-cast p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 1011
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iget v3, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v1, v3, :cond_13

    return v2

    .line 1014
    :cond_13
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    iget-boolean v3, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    if-eq v1, v3, :cond_1a

    return v2

    .line 1017
    :cond_1a
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object v3, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    .line 1020
    :cond_25
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget-object p1, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1029
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 989
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 992
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 993
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget p0, p0, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    .line 994
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    const-string p0, "baseModeId=%d allowGroupSwitching=%b primaryRefreshRateRange=[%.0f %.0f] appRequestRefreshRateRange=[%.0f %.0f]"

    .line 989
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
