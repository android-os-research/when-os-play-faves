.class final enum Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
.super Ljava/lang/Enum;
.source "SemSwitchBoardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemSwitchBoardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

.field public static final enum Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;


# instance fields
.field private final val:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 134
    new-instance v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 135
    new-instance v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    const-string v3, "AlwaysEnabled"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysEnabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    .line 136
    new-instance v3, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    const-string v5, "AlwaysDisabled"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->AlwaysDisabled:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 133
    sput-object v5, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->$VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 141
    iput p3, p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->val:I

    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .registers 6

    .line 145
    invoke-static {}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 146
    iget v4, v3, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->val:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 148
    :cond_12
    sget-object p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->Default:Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .registers 2

    .line 133
    const-class v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;
    .registers 1

    .line 133
    sget-object v0, Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->$VALUES:[Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/SemSwitchBoardService$Policy;

    return-object v0
.end method
