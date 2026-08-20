.class public final Landroid/app/usage/UsageEvents;
.super Ljava/lang/Object;
.source "UsageEvents.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/UsageEvents;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist HIDE_LOCUS_EVENTS:I = 0x8

.field public static final blacklist HIDE_SHORTCUT_EVENTS:I = 0x2

.field public static final greylist-max-o INSTANT_APP_CLASS_NAME:Ljava/lang/String; = "android.instant_class"

.field public static final greylist-max-o INSTANT_APP_PACKAGE_NAME:Ljava/lang/String; = "android.instant_app"

.field public static final blacklist OBFUSCATED_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "unknown_channel_id"

.field public static final blacklist OBFUSCATE_INSTANT_APPS:I = 0x1

.field public static final blacklist OBFUSCATE_NOTIFICATION_EVENTS:I = 0x4

.field public static final blacklist SHOW_ALL_EVENT_DATA:I


# instance fields
.field private final greylist-max-p mEventCount:I

.field private greylist-max-p mEventsToWrite:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIncludeTaskRoots:Z

.field private greylist-max-p mIndex:I

.field private greylist mParcel:Landroid/os/Parcel;

.field private greylist-max-p mStringPool:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1043
    new-instance v0, Landroid/app/usage/UsageEvents$1;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$1;-><init>()V

    sput-object v0, Landroid/app/usage/UsageEvents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 2

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 714
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 763
    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 765
    return-void
.end method

.method public constructor greylist-max-p <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 714
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 738
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v1

    .line 739
    .local v1, "bytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 740
    .local v2, "data":Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 741
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 742
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 743
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 744
    if-lez v3, :cond_56

    .line 745
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 747
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 748
    .local v3, "listByteLength":I
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 749
    .local v4, "positionInParcel":I
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    iput-object v5, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 750
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 751
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v2, v5, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 752
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->setDataSize(I)V

    .line 753
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 755
    .end local v3    # "listByteLength":I
    .end local v4    # "positionInParcel":I
    :cond_56
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 756
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .param p2, "stringPool"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 773
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    .line 774
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;[Ljava/lang/String;Z)V
    .registers 5
    .param p2, "stringPool"    # [Ljava/lang/String;
    .param p3, "includeTaskRoots"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;[",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 780
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 714
    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 719
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 781
    iput-object p2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    .line 782
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    .line 783
    iput-object p1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    .line 784
    iput-boolean p3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    .line 785
    return-void
.end method

.method private greylist-max-p findStringIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;

    .line 842
    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 843
    .local v0, "index":I
    if-ltz v0, :cond_9

    .line 846
    return v0

    .line 844
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "String \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not in the string pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-p readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V
    .registers 10
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 919
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 920
    .local v0, "packageIndex":I
    const/4 v1, 0x0

    if-ltz v0, :cond_e

    .line 921
    iget-object v2, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    goto :goto_10

    .line 923
    :cond_e
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 926
    :goto_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 927
    .local v2, "classIndex":I
    if-ltz v2, :cond_1d

    .line 928
    iget-object v3, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v3, v3, v2

    iput-object v3, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    goto :goto_1f

    .line 930
    :cond_1d
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 932
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 934
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 935
    .local v3, "taskRootPackageIndex":I
    if-ltz v3, :cond_32

    .line 936
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v4, v4, v3

    iput-object v4, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    goto :goto_34

    .line 938
    :cond_32
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 941
    :goto_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 942
    .local v4, "taskRootClassIndex":I
    if-ltz v4, :cond_41

    .line 943
    iget-object v5, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    aget-object v5, v5, v4

    iput-object v5, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_43

    .line 945
    :cond_41
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 948
    :goto_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 949
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 952
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 953
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 954
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 955
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 956
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 957
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 958
    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    .line 960
    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v1, :sswitch_data_a4

    goto :goto_9d

    .line 980
    :sswitch_63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    goto :goto_9d

    .line 977
    :sswitch_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 978
    goto :goto_9d

    .line 974
    :sswitch_71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 975
    goto :goto_9d

    .line 969
    :sswitch_78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 972
    goto :goto_9d

    .line 966
    :sswitch_8b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 967
    goto :goto_9d

    .line 963
    :sswitch_92
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iput-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 964
    nop

    .line 983
    :goto_9d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 984
    return-void

    :sswitch_data_a4
    .sparse-switch
        0x5 -> :sswitch_92
        0x8 -> :sswitch_8b
        0x9 -> :sswitch_78
        0xb -> :sswitch_71
        0xc -> :sswitch_6a
        0x1e -> :sswitch_63
    .end sparse-switch
.end method

.method private greylist-max-p writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V
    .registers 10
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "p"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    .line 855
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 856
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, "packageIndex":I
    goto :goto_c

    .line 858
    .end local v0    # "packageIndex":I
    :cond_b
    const/4 v0, -0x1

    .line 862
    .restart local v0    # "packageIndex":I
    :goto_c
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 863
    iget-object v1, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, "classIndex":I
    goto :goto_18

    .line 865
    .end local v1    # "classIndex":I
    :cond_17
    const/4 v1, -0x1

    .line 869
    .restart local v1    # "classIndex":I
    :goto_18
    iget-boolean v2, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v2, :cond_27

    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 870
    iget-object v2, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, "taskRootPackageIndex":I
    goto :goto_28

    .line 872
    .end local v2    # "taskRootPackageIndex":I
    :cond_27
    const/4 v2, -0x1

    .line 876
    .restart local v2    # "taskRootPackageIndex":I
    :goto_28
    iget-boolean v3, p0, Landroid/app/usage/UsageEvents;->mIncludeTaskRoots:Z

    if-eqz v3, :cond_37

    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v3, :cond_37

    .line 877
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/app/usage/UsageEvents;->findStringIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, "taskRootClassIndex":I
    goto :goto_38

    .line 879
    .end local v3    # "taskRootClassIndex":I
    :cond_37
    const/4 v3, -0x1

    .line 881
    .restart local v3    # "taskRootClassIndex":I
    :goto_38
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget-wide v4, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 889
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v4, :sswitch_data_8e

    goto :goto_87

    .line 908
    :sswitch_59
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_87

    .line 905
    :sswitch_5f
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    goto :goto_87

    .line 902
    :sswitch_65
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 903
    goto :goto_87

    .line 897
    :sswitch_6b
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 898
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 899
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 900
    goto :goto_87

    .line 894
    :sswitch_7b
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 895
    goto :goto_87

    .line 891
    :sswitch_81
    iget-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, p2, p3}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 892
    nop

    .line 911
    :goto_87
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    return-void

    nop

    :sswitch_data_8e
    .sparse-switch
        0x5 -> :sswitch_81
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_6b
        0xb -> :sswitch_65
        0xc -> :sswitch_5f
        0x1e -> :sswitch_59
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 5
    .param p1, "eventOut"    # Landroid/app/usage/UsageEvents$Event;

    .line 806
    if-eqz p1, :cond_32

    .line 809
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v1, :cond_a

    .line 810
    const/4 v0, 0x0

    return v0

    .line 813
    :cond_a
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_12

    .line 814
    invoke-direct {p0, v1, p1}, Landroid/app/usage/UsageEvents;->readEventFromParcel(Landroid/os/Parcel;Landroid/app/usage/UsageEvents$Event;)V

    goto :goto_1d

    .line 816
    :cond_12
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p1, v0}, Landroid/app/usage/UsageEvents$Event;->-$$Nest$mcopyFrom(Landroid/app/usage/UsageEvents$Event;Landroid/app/usage/UsageEvents$Event;)V

    .line 819
    :goto_1d
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 820
    iget v2, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lt v0, v2, :cond_31

    iget-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v0, :cond_31

    .line 821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 822
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    .line 824
    :cond_31
    return v1

    .line 807
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given eventOut must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist hasNextEvent()Z
    .registers 3

    .line 794
    iget v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o resetToStart()V
    .registers 3

    .line 834
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    .line 835
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_a

    .line 836
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 838
    :cond_a
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 994
    .local v0, "data":Landroid/os/Parcel;
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 995
    iget v1, p0, Landroid/app/usage/UsageEvents;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 996
    iget v1, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-lez v1, :cond_73

    .line 997
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mStringPool:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    .line 1001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1003
    .local v1, "p":Landroid/os/Parcel;
    :try_start_20
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1004
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    iget v4, p0, Landroid/app/usage/UsageEvents;->mEventCount:I

    if-ge v3, v4, :cond_36

    .line 1005
    iget-object v4, p0, Landroid/app/usage/UsageEvents;->mEventsToWrite:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageEvents$Event;

    .line 1006
    .local v4, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, v4, v1, p2}, Landroid/app/usage/UsageEvents;->writeEventToParcel(Landroid/app/usage/UsageEvents$Event;Landroid/os/Parcel;I)V

    .line 1004
    .end local v4    # "event":Landroid/app/usage/UsageEvents$Event;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 1009
    .end local v3    # "i":I
    :cond_36
    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 1012
    .local v3, "listByteLength":I
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_43
    .catchall {:try_start_20 .. :try_end_43} :catchall_48

    .line 1020
    .end local v3    # "listByteLength":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    nop

    .line 1023
    .end local v1    # "p":Landroid/os/Parcel;
    goto :goto_73

    .line 1020
    .restart local v1    # "p":Landroid/os/Parcel;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1021
    throw v2

    .line 1023
    .end local v1    # "p":Landroid/os/Parcel;
    :cond_4d
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    if-eqz v1, :cond_6b

    .line 1025
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1031
    iget-object v1, p0, Landroid/app/usage/UsageEvents;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_73

    .line 1033
    :cond_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Either mParcel or mEventsToWrite must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1039
    :cond_73
    :goto_73
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBlob([B)V

    .line 1040
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1041
    return-void
.end method
