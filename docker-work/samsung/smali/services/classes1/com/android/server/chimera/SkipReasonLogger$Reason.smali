.class final enum Lcom/android/server/chimera/SkipReasonLogger$Reason;
.super Ljava/lang/Enum;
.source "SkipReasonLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SkipReasonLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/chimera/SkipReasonLogger$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

.field public static final enum WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 19
    new-instance v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v1, "LRU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 20
    new-instance v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v3, "CACHED_EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 21
    new-instance v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v5, "PERSISTENT_OR_PROTECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 22
    new-instance v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v7, "PICKED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 23
    new-instance v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v9, "CACC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 24
    new-instance v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v11, "INTERVAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 25
    new-instance v11, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v13, "VISIBLE_SCREEN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 26
    new-instance v13, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v15, "WAKELOCK"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 27
    new-instance v15, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v14, "SERVICE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/android/server/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 28
    new-instance v14, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v12, "UID"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/android/server/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 29
    new-instance v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v10, "ADJ_OR_PROC_STATE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/android/server/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    .line 30
    new-instance v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const-string v8, "KILL_ONLY_ONE_SVC_AT_A_TIME"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/android/server/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/android/server/chimera/SkipReasonLogger$Reason;->KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/chimera/SkipReasonLogger$Reason;

    const/16 v8, 0xc

    new-array v8, v8, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    .line 18
    sput-object v8, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .registers 2

    .line 18
    const-class v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/SkipReasonLogger$Reason;
    .registers 1

    .line 18
    sget-object v0, Lcom/android/server/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0}, [Lcom/android/server/chimera/SkipReasonLogger$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/SkipReasonLogger$Reason;

    return-object v0
.end method
