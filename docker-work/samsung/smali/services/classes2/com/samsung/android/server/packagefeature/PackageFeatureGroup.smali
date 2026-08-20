.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
.super Ljava/lang/Enum;
.source "PackageFeatureGroup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public static final enum TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;


# instance fields
.field public final mEnabled:Z

.field public final mName:Ljava/lang/String;

.field public final mRawResId:I

.field public final mUnformatted:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 19

    .line 35
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v1, "FOLDABLE_PACKAGE_FEATURE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "FoldablePackagePolicy"

    const v5, 0x1100008

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v6, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 41
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    const-string v8, "REFRESH_RATE_PACKAGE_FEATURE"

    const/4 v9, 0x1

    const-string v11, "RefreshRatePolicy"

    const v12, 0x1100009

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 47
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v14, "BROADCAST_RECEIVER_FEATURE"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const-string v17, "BROADCAST_RECEIVER_ALLOW_LIST"

    const/16 v18, 0x1

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;Z)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 54
    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v8, "TEST_PACKAGE_FEATURE_GROUP"

    const/4 v9, 0x3

    const-string v11, "TestPackageFeatureGroup"

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;I)V

    sput-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v2, v3, v0

    .line 33
    sput-object v3, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 66
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mEnabled:Z

    .line 75
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mName:Ljava/lang/String;

    .line 76
    iput p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mRawResId:I

    .line 77
    iput-boolean p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->mUnformatted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;Z)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    .line 70
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;-><init>(Ljava/lang/String;IZLjava/lang/String;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .registers 2

    .line 33
    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;
    .registers 1

    .line 33
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    return-object v0
.end method
