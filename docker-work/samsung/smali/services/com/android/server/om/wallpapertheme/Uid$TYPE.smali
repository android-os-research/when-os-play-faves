.class public final enum Lcom/android/server/om/wallpapertheme/Uid$TYPE;
.super Ljava/lang/Enum;
.source "Uid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/wallpapertheme/Uid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/om/wallpapertheme/Uid$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum BOOL:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum COLOR:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum FONT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum IMAGE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum INTEGER:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum NINEPATCH:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum NONE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

.field public static final enum TEXT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 111
    new-instance v0, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v1, "COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->COLOR:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v3, "IMAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->IMAGE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v3, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v5, "NINEPATCH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->NINEPATCH:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v5, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v7, "INTEGER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->INTEGER:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v7, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v9, "BOOL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->BOOL:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v9, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v11, "FONT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->FONT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v11, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v13, "TEXT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->TEXT:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    new-instance v13, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const-string v15, "NONE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/android/server/om/wallpapertheme/Uid$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->NONE:Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 110
    sput-object v15, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->$VALUES:[Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/Uid$TYPE;
    .registers 2

    .line 110
    const-class v0, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/om/wallpapertheme/Uid$TYPE;
    .registers 1

    .line 110
    sget-object v0, Lcom/android/server/om/wallpapertheme/Uid$TYPE;->$VALUES:[Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    invoke-virtual {v0}, [Lcom/android/server/om/wallpapertheme/Uid$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/om/wallpapertheme/Uid$TYPE;

    return-object v0
.end method
