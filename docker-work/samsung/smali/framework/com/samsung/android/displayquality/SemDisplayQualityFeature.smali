.class public Lcom/samsung/android/displayquality/SemDisplayQualityFeature;
.super Ljava/lang/Object;
.source "SemDisplayQualityFeature.java"


# static fields
.field public static final blacklist ADAPTIVE_SYNC_SUPPORT:Z

.field public static final blacklist DP_RATIO_SUPPORT:Z

.field private static final blacklist DQ_SVC_FEATURE:Ljava/lang/String; = ""

.field public static final blacklist ENABLED:Z

.field public static final blacklist HAL_SUPPORT:Z

.field private static final blacklist HAS_OPTION:Z

.field public static final blacklist LTM_SUPPORT:Z

.field public static final blacklist OUTDOOR_VISIBILITY_SUPPORT:Z

.field public static final blacklist PLATFORM:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 11
    const-string v0, ""

    const-string v1, "QCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "MTK"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1f

    const-string v1, "LSI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_1f

    :cond_1d
    move v1, v3

    goto :goto_20

    :cond_1f
    :goto_1f
    move v1, v4

    :goto_20
    sput-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    .line 12
    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2f

    :cond_2e
    move-object v1, v0

    :goto_2f
    sput-object v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    .line 13
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-le v5, v4, :cond_3c

    move v5, v4

    goto :goto_3d

    :cond_3c
    move v5, v3

    :goto_3d
    sput-boolean v5, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAS_OPTION:Z

    .line 15
    const-string v6, "outdoor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_49

    :goto_47
    move v3, v4

    goto :goto_52

    :cond_49
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_52

    if-nez v5, :cond_52

    goto :goto_47

    :cond_52
    :goto_52
    sput-boolean v3, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->OUTDOOR_VISIBILITY_SUPPORT:Z

    .line 16
    const-string v1, "adaptivesync"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ADAPTIVE_SYNC_SUPPORT:Z

    .line 17
    const-string v1, "ltm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->LTM_SUPPORT:Z

    .line 18
    const-string v1, "hal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->HAL_SUPPORT:Z

    .line 20
    const-string v1, "dp_ratio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->DP_RATIO_SUPPORT:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
