.class public final enum Lcom/samsung/android/game/ActionLogger$ActionLogTag;
.super Ljava/lang/Enum;
.source "ActionLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/ActionLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionLogTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/game/ActionLogger$ActionLogTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

.field public static final enum SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 12
    new-instance v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v1, "SET_GLO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 13
    new-instance v1, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v3, "SET_PKG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 14
    new-instance v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v5, "INI_GMS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 15
    new-instance v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v7, "SET_DFS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 16
    new-instance v7, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v9, "SET_VRR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 17
    new-instance v9, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v11, "DEL_VRR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/samsung/android/game/ActionLogger$ActionLogTag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    .line 11
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->$VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 11
    const-class v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/game/ActionLogger$ActionLogTag;
    .registers 1

    .line 11
    sget-object v0, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->$VALUES:[Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v0}, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    return-object v0
.end method
