.class public final enum Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
.super Ljava/lang/Enum;
.source "ChatLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum DEPARTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field public static final enum JOINED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

.field private static mValueToEnum:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 494
    new-instance v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v1, "JOINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->JOINED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    new-instance v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    const-string v3, "DEPARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->DEPARTED:Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 493
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 497
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    .line 499
    invoke-static {}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    move-result-object v0

    array-length v1, v0

    :goto_29
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 500
    .local v3, "entry":Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    sget-object v4, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->toInt()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 499
    .end local v3    # "entry":Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 502
    :cond_39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 504
    iput p3, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mCode:I

    .line 505
    return-void
.end method

.method public static final valueOf(I)Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .registers 5
    .param p0, "value"    # I

    .line 514
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mValueToEnum:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 515
    .local v0, "entry":Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    if-eqz v0, :cond_b

    .line 516
    return-object v0

    .line 518
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No enum const class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    .line 519
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 493
    const-class v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    return-object v0
.end method

.method public static values()[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;
    .registers 1

    .line 493
    sget-object v0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->$VALUES:[Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    invoke-virtual {v0}, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;

    return-object v0
.end method


# virtual methods
.method public final toInt()I
    .registers 2

    .line 511
    iget v0, p0, Lcom/gsma/services/rcs/chat/ChatLog$Message$GroupChatEvent$Status;->mCode:I

    return v0
.end method
