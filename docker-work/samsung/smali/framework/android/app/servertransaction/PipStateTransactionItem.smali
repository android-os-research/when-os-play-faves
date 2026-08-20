.class public final Landroid/app/servertransaction/PipStateTransactionItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "PipStateTransactionItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/PipStateTransactionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPipState:Landroid/app/PictureInPictureUiState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Landroid/app/servertransaction/PipStateTransactionItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/PipStateTransactionItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/PipStateTransactionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    .line 70
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    iput-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/PipStateTransactionItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist obtain(Landroid/app/PictureInPictureUiState;)Landroid/app/servertransaction/PipStateTransactionItem;
    .registers 3
    .param p0, "pipState"    # Landroid/app/PictureInPictureUiState;

    .line 45
    const-class v0, Landroid/app/servertransaction/PipStateTransactionItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/PipStateTransactionItem;

    .line 46
    .local v0, "instance":Landroid/app/servertransaction/PipStateTransactionItem;
    if-nez v0, :cond_10

    .line 47
    new-instance v1, Landroid/app/servertransaction/PipStateTransactionItem;

    invoke-direct {v1}, Landroid/app/servertransaction/PipStateTransactionItem;-><init>()V

    move-object v0, v1

    .line 49
    :cond_10
    iput-object p0, v0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    .line 51
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 86
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 36
    iget-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->handlePictureInPictureStateChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/PictureInPictureUiState;)V

    .line 37
    return-void
.end method

.method public blacklist recycle()V
    .registers 2

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    .line 57
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 58
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 91
    const-string v0, "PipStateTransactionItem{}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 65
    iget-object v0, p0, Landroid/app/servertransaction/PipStateTransactionItem;->mPipState:Landroid/app/PictureInPictureUiState;

    invoke-virtual {v0, p1, p2}, Landroid/app/PictureInPictureUiState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 66
    return-void
.end method
