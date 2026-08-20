.class final enum Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;
.super Ljava/lang/Enum;
.source "PackageFeatureGroupRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum CACHE_FILE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum DEBUG_MODE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum INITIALIZE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum NULL:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum POLICY_DISABLED:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum RAW_RESOURCE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

.field public static final enum SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 60
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v1, "NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->NULL:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v3, "INITIALIZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->INITIALIZE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v5, "CACHE_FILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->CACHE_FILE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v7, "RAW_RESOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->RAW_RESOURCE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v9, "SCPM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->SCPM:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v11, "POLICY_DISABLED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->POLICY_DISABLED:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    new-instance v11, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const-string v13, "DEBUG_MODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->DEBUG_MODE:Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 59
    sput-object v13, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;
    .registers 2

    .line 59
    const-class v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;
    .registers 1

    .line 59
    sget-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->$VALUES:[Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupRecord$GroupDataSource;

    return-object v0
.end method
