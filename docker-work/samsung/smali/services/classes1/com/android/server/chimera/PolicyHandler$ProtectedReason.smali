.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
.super Ljava/lang/Enum;
.source "PolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/PolicyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtectedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/chimera/PolicyHandler$ProtectedReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ALREADY_DIED:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum EXECUTING_SERVICE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum RUNNING_INTENT:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

.field public static final enum VISIBLE_ADJ:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 15

    .line 377
    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 378
    new-instance v1, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v3, "ALREADY_DIED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ALREADY_DIED:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 379
    new-instance v3, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v5, "EXECUTING_SERVICE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->EXECUTING_SERVICE:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 380
    new-instance v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v7, "RUNNING_INTENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->RUNNING_INTENT:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 381
    new-instance v7, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v9, "ACTIVITY_TIME"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 382
    new-instance v9, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v11, "VISIBLE_ADJ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->VISIBLE_ADJ:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    .line 383
    new-instance v11, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const-string v13, "HAS_CONNECTION_PROVIDER"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 376
    sput-object v13, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .registers 2

    .line 376
    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;
    .registers 1

    .line 376
    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectedReason;

    return-object v0
.end method
