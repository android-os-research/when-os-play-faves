.class public final enum Lcom/samsung/android/mcf/common/McfSdkFeature;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mcf/common/McfSdkFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

.field public static final enum WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;


# instance fields
.field public final feature:I

.field public final minSupportVersion:I

.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    new-instance v6, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v1, "MusicShare"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x1ae14

    const-string v5, "MusicShare"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/mcf/common/McfSdkFeature;->MusicShare:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "WifiTogether"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const v11, 0x1afa4

    const-string v12, "WifiTogether"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->WifiTogether:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v1, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v14, "UWBRanging"

    const/4 v15, 0x2

    const/16 v16, 0x2

    const v17, 0x1afa4

    const-string v18, "UWBRanging"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/mcf/common/McfSdkFeature;->UWBRanging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v2, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "BleAdapter"

    const/4 v9, 0x3

    const/4 v10, 0x3

    const-string v12, "BleAdapter"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleAdapter:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v3, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v14, "BleProvider"

    const/4 v15, 0x4

    const/16 v16, 0x4

    const v17, 0x1fbd0

    const-string v18, "BleProvider"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/mcf/common/McfSdkFeature;->BleProvider:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v4, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v8, "SmcfCCC"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const v11, 0x1d4c0

    const-string v12, "SmcfCCC"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/mcf/common/McfSdkFeature;->SmcfCCC:Lcom/samsung/android/mcf/common/McfSdkFeature;

    new-instance v5, Lcom/samsung/android/mcf/common/McfSdkFeature;

    const-string v14, "Messaging"

    const/4 v15, 0x6

    const/16 v16, 0x6

    const v17, 0x1afa4

    const-string v18, "Messaging"

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/mcf/common/McfSdkFeature;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/mcf/common/McfSdkFeature;->Messaging:Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v7, 0x7

    new-array v7, v7, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v0, v7, v6

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    sput-object v7, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    iput p4, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    iput-object p5, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mcf/common/McfSdkFeature;
    .registers 2

    const-class v0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mcf/common/McfSdkFeature;
    .registers 1

    sget-object v0, Lcom/samsung/android/mcf/common/McfSdkFeature;->$VALUES:[Lcom/samsung/android/mcf/common/McfSdkFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/mcf/common/McfSdkFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mcf/common/McfSdkFeature;

    return-object v0
.end method


# virtual methods
.method public getFeatureValue()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->feature:I

    return p0
.end method

.method public getSupportVersion()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->minSupportVersion:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/common/McfSdkFeature;->name:Ljava/lang/String;

    return-object p0
.end method
