.class public Landroid/app/servertransaction/MoveToDisplayItem;
.super Landroid/app/servertransaction/ActivityTransactionItem;
.source "MoveToDisplayItem.java"


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/MoveToDisplayItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mConfiguration:Landroid/content/res/Configuration;

.field private greylist-max-o mTargetDisplayId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/app/servertransaction/MoveToDisplayItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/MoveToDisplayItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/MoveToDisplayItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 96
    invoke-direct {p0}, Landroid/app/servertransaction/ActivityTransactionItem;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 98
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 99
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/MoveToDisplayItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o obtain(ILandroid/content/res/Configuration;)Landroid/app/servertransaction/MoveToDisplayItem;
    .registers 4
    .param p0, "targetDisplayId"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 64
    if-eqz p1, :cond_17

    .line 68
    const-class v0, Landroid/app/servertransaction/MoveToDisplayItem;

    invoke-static {v0}, Landroid/app/servertransaction/ObjectPool;->obtain(Ljava/lang/Class;)Landroid/app/servertransaction/ObjectPoolItem;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/MoveToDisplayItem;

    .line 69
    .local v0, "instance":Landroid/app/servertransaction/MoveToDisplayItem;
    if-nez v0, :cond_12

    .line 70
    new-instance v1, Landroid/app/servertransaction/MoveToDisplayItem;

    invoke-direct {v1}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>()V

    move-object v0, v1

    .line 72
    :cond_12
    iput p0, v0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 73
    iput-object p1, v0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 75
    return-object v0

    .line 65
    .end local v0    # "instance":Landroid/app/servertransaction/MoveToDisplayItem;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Configuration must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 115
    return v0

    .line 117
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 120
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/servertransaction/MoveToDisplayItem;

    .line 121
    .local v2, "other":Landroid/app/servertransaction/MoveToDisplayItem;
    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    iget v4, v2, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    if-ne v3, v4, :cond_26

    iget-object v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v2, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 122
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 121
    :goto_27
    return v0

    .line 118
    .end local v2    # "other":Landroid/app/servertransaction/MoveToDisplayItem;
    :cond_28
    :goto_28
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 8
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 51
    const-wide/16 v0, 0x40

    const-string v2, "activityMovedToDisplay"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 52
    iget-object v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {p1, p2, v2, v3}, Landroid/app/ClientTransactionHandler;->handleActivityConfigurationChanged(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/content/res/Configuration;I)V

    .line 53
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 54
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 127
    const/16 v0, 0x11

    .line 128
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    add-int/2addr v1, v2

    .line 129
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 130
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public blacklist preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 45
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2, v0}, Landroid/app/ClientTransactionHandler;->updatePendingActivityConfiguration(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 46
    return-void
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    .line 81
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    .line 82
    invoke-static {p0}, Landroid/app/servertransaction/ObjectPool;->recycle(Landroid/app/servertransaction/ObjectPoolItem;)V

    .line 83
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MoveToDisplayItem{targetDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mTargetDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-object v0, p0, Landroid/app/servertransaction/MoveToDisplayItem;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 93
    return-void
.end method
