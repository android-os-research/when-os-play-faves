.class public final Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;
.super Ljava/lang/Object;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Builder"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private uid:I


# direct methods
.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid:I

    return p0
.end method

.method protected constructor <init>()V
    .registers 1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;
    .registers 2

    .line 162
    new-instance v0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem;-><init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;)V

    return-object v0
.end method

.method public packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->packageName:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 152
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyScenarioItem$Builder;->uid:I

    .line 153
    return-object p0
.end method
