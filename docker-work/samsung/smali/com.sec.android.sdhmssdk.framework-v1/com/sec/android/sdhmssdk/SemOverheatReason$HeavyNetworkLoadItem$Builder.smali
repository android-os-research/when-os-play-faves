.class public final Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;
.super Ljava/lang/Object;
.source "SemOverheatReason.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Builder"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field private uid:I

.field private usage:J


# direct methods
.method static bridge synthetic -$$Nest$fgetpackageName(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->uid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetusage(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->usage:J

    return-wide v0
.end method

.method protected constructor <init>()V
    .registers 1

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;
    .registers 2

    .line 220
    new-instance v0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem;-><init>(Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;)V

    return-object v0
.end method

.method packageName(Ljava/lang/String;)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->packageName:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method uid(I)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 205
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->uid:I

    .line 206
    return-object p0
.end method

.method usage(J)Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 215
    iput-wide p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatReason$HeavyNetworkLoadItem$Builder;->usage:J

    .line 216
    return-object p0
.end method
