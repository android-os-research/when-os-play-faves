.class abstract enum Lcom/android/commands/requestsync/RequestSync$Operation;
.super Ljava/lang/Enum;
.source "RequestSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/requestsync/RequestSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/commands/requestsync/RequestSync$Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/commands/requestsync/RequestSync$Operation;

.field public static final enum ADD_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

.field public static final enum REMOVE_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

.field public static final enum REQUEST_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 36
    new-instance v0, Lcom/android/commands/requestsync/RequestSync$Operation$1;

    const-string v1, "REQUEST_SYNC"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/commands/requestsync/RequestSync$Operation$1;-><init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation$1-IA;)V

    sput-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->REQUEST_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 57
    new-instance v1, Lcom/android/commands/requestsync/RequestSync$Operation$2;

    const-string v4, "ADD_PERIODIC_SYNC"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/android/commands/requestsync/RequestSync$Operation$2;-><init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation$2-IA;)V

    sput-object v1, Lcom/android/commands/requestsync/RequestSync$Operation;->ADD_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 64
    new-instance v4, Lcom/android/commands/requestsync/RequestSync$Operation$3;

    const-string v6, "REMOVE_PERIODIC_SYNC"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/android/commands/requestsync/RequestSync$Operation$3;-><init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation$3-IA;)V

    sput-object v4, Lcom/android/commands/requestsync/RequestSync$Operation;->REMOVE_PERIODIC_SYNC:Lcom/android/commands/requestsync/RequestSync$Operation;

    .line 35
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/commands/requestsync/RequestSync$Operation;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    aput-object v4, v3, v7

    sput-object v3, Lcom/android/commands/requestsync/RequestSync$Operation;->$VALUES:[Lcom/android/commands/requestsync/RequestSync$Operation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/commands/requestsync/RequestSync$Operation-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/commands/requestsync/RequestSync$Operation;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/commands/requestsync/RequestSync$Operation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/android/commands/requestsync/RequestSync$Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/commands/requestsync/RequestSync$Operation;

    return-object v0
.end method

.method public static values()[Lcom/android/commands/requestsync/RequestSync$Operation;
    .registers 1

    .line 35
    sget-object v0, Lcom/android/commands/requestsync/RequestSync$Operation;->$VALUES:[Lcom/android/commands/requestsync/RequestSync$Operation;

    invoke-virtual {v0}, [Lcom/android/commands/requestsync/RequestSync$Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/commands/requestsync/RequestSync$Operation;

    return-object v0
.end method


# virtual methods
.method abstract invoke(Lcom/android/commands/requestsync/RequestSync;)V
.end method
