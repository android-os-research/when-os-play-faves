.class public Lcom/sec/ims/presence/PresenceInfo;
.super Ljava/lang/Object;
.source "PresenceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/presence/PresenceInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/presence/PresenceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activities:Ljava/lang/String;

.field private avatar_uri:Ljava/lang/String;

.field private bPublishGzip:Z

.field private birthday:Ljava/lang/String;

.field private contactId:Ljava/lang/String;

.field private cyworld:Ljava/lang/String;

.field private display_name:Ljava/lang/String;

.field private eTag:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private expire_time:J

.field private facebook:Ljava/lang/String;

.field private homepage:Ljava/lang/String;

.field private hyper:I

.field private id:J

.field private isFetchSuccess:Z

.field private mDeviceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mPersonTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private min_expires:J

.field private mood_text:Ljava/lang/String;

.field private phoneId:I

.field private phone_number:Ljava/lang/String;

.field private pidf:Ljava/lang/String;

.field private rawContactId:Ljava/lang/String;

.field private state:I

.field private subscriptionId:Ljava/lang/String;

.field private tel_uri:Ljava/lang/String;

.field private timestamp:J

.field private twitter:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private useExtendedTimer:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 680
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo$1;

    invoke-direct {v0}, Lcom/sec/ims/presence/PresenceInfo$1;-><init>()V

    sput-object v0, Lcom/sec/ims/presence/PresenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 70
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 72
    iput-boolean v1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "phoneId"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    .line 96
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    .line 104
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 604
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 605
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 610
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    .line 626
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9f

    .line 627
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 629
    :cond_9f
    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/presence/PresenceInfo$Builder;)V
    .registers 4
    .param p1, "builder"    # Lcom/sec/ims/presence/PresenceInfo$Builder;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 452
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->tel_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 453
    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->phoneId:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 454
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 455
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->avatar_uri:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    .line 456
    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->state:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    .line 457
    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->timestamp:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    .line 458
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->display_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    .line 459
    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->hyper:I

    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    .line 460
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->mood_text:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    .line 461
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->homepage:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    .line 462
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->email:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    .line 463
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->birthday:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    .line 464
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->phone_number:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    .line 465
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->cyworld:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    .line 466
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->twitter:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    .line 467
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->facebook:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    .line 468
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->activities:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    .line 469
    iget-wide v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->expire_time:J

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    .line 470
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo$Builder;->pidf:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    .line 475
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "subscriptionId"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    .line 81
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    .line 87
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 88
    iput p2, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 89
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/sec/ims/presence/DeviceTuple;)V
    .registers 3
    .param p1, "dp"    # Lcom/sec/ims/presence/DeviceTuple;

    .line 352
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    return-void

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method public addDevice(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p1, "dp":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/DeviceTuple;>;"
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 360
    return-void
.end method

.method public addPerson(Lcom/sec/ims/presence/PersonTuple;)V
    .registers 3
    .param p1, "pp"    # Lcom/sec/ims/presence/PersonTuple;

    .line 295
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 296
    return-void

    .line 298
    :cond_9
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method public addPerson(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "pp":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/PersonTuple;>;"
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 303
    return-void
.end method

.method public addService(Lcom/sec/ims/presence/ServiceTuple;)V
    .registers 3
    .param p1, "sp"    # Lcom/sec/ims/presence/ServiceTuple;

    .line 314
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    return-void

    .line 317
    :cond_9
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public addService(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    .line 330
    .local p1, "sp":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/presence/ServiceTuple;>;"
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    return-void
.end method

.method public clearDevice()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    return-void
.end method

.method public clearPerson()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 292
    return-void
.end method

.method public clearService()V
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public getActivities()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    return-object v0
.end method

.method public getCyworld()Ljava/lang/String;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/DeviceTuple;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mDeviceTuples:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .registers 3

    .line 383
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    return-wide v0
.end method

.method public getExtendedTimerFlag()Z
    .registers 2

    .line 371
    iget-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    return v0
.end method

.method public getFacebook()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    return-object v0
.end method

.method public getHomepage()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    return-object v0
.end method

.method public getHyper()I
    .registers 2

    .line 192
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    return-wide v0
.end method

.method public getMinExpires()J
    .registers 3

    .line 399
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    return-wide v0
.end method

.method public getMoodText()Ljava/lang/String;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/PersonTuple;",
            ">;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mPersonTuples:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 124
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    return v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    return-object v0
.end method

.method public getPidf()Ljava/lang/String;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishGzipEnabled()Z
    .registers 2

    .line 116
    iget-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    return v0
.end method

.method public getRawContactId()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    return-object v0
.end method

.method public getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/presence/ServiceTuple;

    .line 339
    .local v1, "tuple":Lcom/sec/ims/presence/ServiceTuple;
    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 340
    return-object v1

    .line 342
    .end local v1    # "tuple":Lcom/sec/ims/presence/ServiceTuple;
    :cond_1b
    goto :goto_6

    .line 344
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 164
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    return v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTelUri()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 184
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    return-wide v0
.end method

.method public getTwitter()Ljava/lang/String;
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isFetchSuccess()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    return v0
.end method

.method public removeService(Lcom/sec/ims/presence/ServiceTuple;)V
    .registers 5
    .param p1, "sp"    # Lcom/sec/ims/presence/ServiceTuple;

    .line 321
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mServiceTuples:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 322
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/ims/presence/ServiceTuple;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 323
    iget-object v1, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    iget-object v2, v2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 327
    :cond_20
    return-void
.end method

.method public setActivities(Ljava/lang/String;)V
    .registers 2
    .param p1, "activities"    # Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setAvatarUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "avatar_uri"    # Ljava/lang/String;

    .line 180
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setBirthday(Ljava/lang/String;)V
    .registers 2
    .param p1, "birthday"    # Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setContactId(Ljava/lang/String;)V
    .registers 2
    .param p1, "contactId"    # Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setCyworld(Ljava/lang/String;)V
    .registers 2
    .param p1, "cyworld"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "displayName"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .registers 2
    .param p1, "email"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .registers 2
    .param p1, "eTag"    # Ljava/lang/String;

    .line 395
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->eTag:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public setExpireTime(J)V
    .registers 3
    .param p1, "expire_time"    # J

    .line 387
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    .line 388
    return-void
.end method

.method public setExtendedTimerFlag(Z)V
    .registers 2
    .param p1, "useExtendedTimer"    # Z

    .line 367
    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->useExtendedTimer:Z

    .line 368
    return-void
.end method

.method public setFacebook(Ljava/lang/String;)V
    .registers 2
    .param p1, "facebook"    # Ljava/lang/String;

    .line 260
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setFetchState(Z)V
    .registers 2
    .param p1, "success"    # Z

    .line 379
    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    .line 380
    return-void
.end method

.method public setHomepage(Ljava/lang/String;)V
    .registers 2
    .param p1, "homepage"    # Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setHyper(I)V
    .registers 2
    .param p1, "hyper"    # I

    .line 196
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    .line 197
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .line 272
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    .line 273
    return-void
.end method

.method public setMinExpires(J)V
    .registers 3
    .param p1, "min_expires"    # J

    .line 403
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    .line 404
    return-void
.end method

.method public setMoodText(Ljava/lang/String;)V
    .registers 2
    .param p1, "mood_text"    # Ljava/lang/String;

    .line 204
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 120
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    .line 121
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "phone_number"    # Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setPidf(Ljava/lang/String;)V
    .registers 2
    .param p1, "pidf"    # Ljava/lang/String;

    .line 407
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setPublishGzipEnabled(Z)V
    .registers 2
    .param p1, "isGzipEnabled"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    .line 113
    return-void
.end method

.method public setRawContactId(Ljava/lang/String;)V
    .registers 2
    .param p1, "contactId"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 280
    iput p1, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    .line 281
    return-void
.end method

.method public setSubscriptionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "subscriptionId"    # Ljava/lang/String;

    .line 276
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setTelUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "telUri"    # Ljava/lang/String;

    .line 152
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 188
    iput-wide p1, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    .line 189
    return-void
.end method

.method public setTwitter(Ljava/lang/String;)V
    .registers 2
    .param p1, "twitter"    # Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 418
    const-string v1, ", tel_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    const-string v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    const-string v1, ", contactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v1, ", rawContactId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v1, ", subscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    const-string v1, ", isFetchSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/presence/PresenceInfo;->isFetchSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 424
    const-string v1, ", avatar_uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 427
    const-string v1, ", display_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, ", hyper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, ", mood_text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, ", homepage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, ", birthday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, ", phone_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string v1, ", cyworld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    const-string v1, ", twitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string v1, ", facebook="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v1, ", activities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const-string v1, ", expire_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, ", min_expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/ims/presence/PresenceInfo;->min_expires:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, ", bPublishGzip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/ims/presence/PresenceInfo;->bPublishGzip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/sec/ims/presence/PresenceInfo;)V
    .registers 3
    .param p1, "data"    # Lcom/sec/ims/presence/PresenceInfo;

    .line 284
    iget-object v0, p1, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 285
    iput-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    .line 286
    :cond_6
    iget v0, p1, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    if-eqz v0, :cond_c

    .line 287
    iput v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    .line 288
    :cond_c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 638
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 639
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->contactId:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_14

    .line 641
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_17

    .line 643
    :cond_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 645
    :goto_17
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->rawContactId:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 646
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_22

    .line 648
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 650
    :goto_22
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->subscriptionId:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 651
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2d

    .line 653
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 655
    :goto_2d
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->tel_uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->avatar_uri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 659
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 660
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->display_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 661
    iget v0, p0, Lcom/sec/ims/presence/PresenceInfo;->hyper:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->mood_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->homepage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->birthday:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->phone_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->cyworld:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->twitter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->facebook:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->activities:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 671
    iget-wide v0, p0, Lcom/sec/ims/presence/PresenceInfo;->expire_time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 672
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    if-eqz v0, :cond_90

    .line 673
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 674
    iget-object v0, p0, Lcom/sec/ims/presence/PresenceInfo;->pidf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_94

    .line 676
    :cond_90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    :goto_94
    return-void
.end method
