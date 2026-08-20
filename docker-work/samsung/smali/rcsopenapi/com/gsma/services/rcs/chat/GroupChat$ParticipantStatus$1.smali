.class Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;
.super Ljava/lang/Object;
.source "GroupChat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .registers 8
    .param p1, "source"    # Landroid/os/Parcel;

    .line 280
    invoke-static {}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->values()[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 281
    .local v3, "reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    invoke-static {v3}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->-$$Nest$fgetmCode(Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;)I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-ne v4, v5, :cond_15

    .line 282
    return-object v3

    .line 280
    .end local v3    # "reasonCode":Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 285
    :cond_18
    sget-object v0, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;->FAILED:Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;
    .registers 3
    .param p1, "size"    # I

    .line 275
    new-array v0, p1, [Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus$1;->newArray(I)[Lcom/gsma/services/rcs/chat/GroupChat$ParticipantStatus;

    move-result-object p1

    return-object p1
.end method
