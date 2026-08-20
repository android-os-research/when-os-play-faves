.class public final Landroid/app/servertransaction/EnterPipRequestedItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "EnterPipRequestedItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/EnterPipRequestedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/app/servertransaction/EnterPipRequestedItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/EnterPipRequestedItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/EnterPipRequestedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/servertransaction/EnterPipRequestedItem-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>()V

    return-void
.end method

.method public static blacklist obtain()Landroid/app/servertransaction/EnterPipRequestedItem;
    .registers 2

    .line 42
    const-class v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/EnterPipRequestedItem;

    .line 43
    .local v0, "instance":Landroid/app/servertransaction/EnterPipRequestedItem;
    if-nez v0, :cond_10

    .line 44
    new-instance v1, Landroid/app/servertransaction/EnterPipRequestedItem;

    invoke-direct {v1}, Landroid/app/servertransaction/EnterPipRequestedItem;-><init>()V

    move-object v0, v1

    .line 46
    :cond_10
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 72
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 33
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureRequested(Landroid/app/ActivityThread$ActivityClientRecord;)V

    .line 34
    return-void
.end method

.method public blacklist recycle()V
    .registers 1

    .line 51
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 52
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 77
    const-string v0, "EnterPipRequestedItem{}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 57
    return-void
.end method
