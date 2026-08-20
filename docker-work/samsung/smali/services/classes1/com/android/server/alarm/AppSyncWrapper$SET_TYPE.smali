.class public final enum Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
.super Ljava/lang/Enum;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum ALLOWLIST_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum APPSYNC3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum CSC_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum NONE:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum PRELOADED_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

.field public static final enum SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1252
    new-instance v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v1, "APPSYNC3P_PACKAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->APPSYNC3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1253
    new-instance v1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v3, "SUSPICIOUS_PACKAGES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1254
    new-instance v3, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v5, "CSC_PACKAGES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->CSC_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1255
    new-instance v5, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v7, "ALLOWLIST_PACKAGES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1256
    new-instance v7, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v9, "ALLOWLIST3P_PACKAGES"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1257
    new-instance v9, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v11, "PRELOADED_PACKAGES"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->PRELOADED_PACKAGES:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1259
    new-instance v11, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v13, "SUSPICIOUS_PACKAGES_FROM_CONFIG"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->SUSPICIOUS_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1260
    new-instance v13, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v15, "ALLOWLIST_PACKAGES_FROM_CONFIG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1261
    new-instance v15, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v14, "ALLOWLIST3P_PACKAGES_FROM_CONFIG"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->ALLOWLIST3P_PACKAGES_FROM_CONFIG:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    .line 1262
    new-instance v14, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const-string v12, "NONE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->NONE:Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    const/16 v12, 0xa

    new-array v12, v12, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    .line 1251
    sput-object v12, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    .registers 2

    .line 1251
    const-class v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;
    .registers 1

    .line 1251
    sget-object v0, Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->$VALUES:[Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/alarm/AppSyncWrapper$SET_TYPE;

    return-object v0
.end method
